
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

@WebServlet("/Mlogin")
public class M_login extends HttpServlet {

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
				sql = "select account,password,name from managers";
				conn = DriverManager.getConnection(url, user, passwd);
				stmt = conn.prepareStatement(sql);
				rs = stmt.executeQuery();
				while (rs.next()) {//遍歷比對帳號密碼是否為正確
					if (rs.getString("account").equals(acc) && rs.getString("password").equals(pwd)) {
						name = rs.getString("name");
						stmt.clearParameters();
						stmt.close();
						conn.close();
						
						//把登入者帳號傳遞到之後頁面
						request.getSession().setAttribute("arg1", name);			    	       
		    	        RequestDispatcher disp=request.getRequestDispatcher("manager.jsp?arg1="+name);
	    				disp.forward(request, response);
						
	    				
					} else
						continue;
				}
			//錯誤登入的頁面
			RequestDispatcher errpage = request.getRequestDispatcher("errorp/m_L_error.jsp");
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
