
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		//資料庫連線
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		String acc = request.getParameter("account");
		String pwd = request.getParameter("password");
		String name = request.getParameter("name");
		String url = "jdbc:mysql://localhost:3306/mywork";
		String user = "root";
		String passwd = "1234";
		String sql = "";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			out.println("WriteIn JDBC OK");
		} catch (ClassNotFoundException e) {
			out.print("無法載入驅動程式");
		}

		try {
				sql = "select account,password,name from members";
				conn = DriverManager.getConnection(url, user, passwd);
				stmt = conn.prepareStatement(sql);
				rs = stmt.executeQuery();
				
				while (rs.next()) {
					String acnt=rs.getString("account");
					//遍歷比對帳號資料表內的密碼是否符合
					if (acnt.equals(acc) && rs.getString("password").equals(pwd)) {
						name = rs.getString("name");
						stmt.clearParameters();
						stmt.close();
						conn.close();

						request.getSession().setAttribute("act",acnt);
						
						request.getSession().setAttribute("arg", name);			    	       
		    	        RequestDispatcher disp=request.getRequestDispatcher("member.jsp?arg="+name);
	    				disp.forward(request, response);
						

					} else
						continue;
			}

			RequestDispatcher errpage = request.getRequestDispatcher("errorp/error1.jsp");
			errpage.forward(request, response);
		} catch (SQLException e) {
			out.print(e.getMessage());
			return;
		}

		try {
			stmt.clearParameters();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}
}
