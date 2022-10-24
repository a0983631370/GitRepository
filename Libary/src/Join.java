

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dojoin")
public class Join extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		//資料庫連線
		Connection conn = null;
		PreparedStatement stmt = null;
		String account = request.getParameter("account");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");

		String url = "jdbc:mysql://localhost:3306/mywork";
		String user = "root";
		String passwd = "1234";
		String sql1 = "select account from members where account='" + account + "'";
		

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			out.print("WriteIn JDBC OK");
		} catch (ClassNotFoundException e) {
			out.print("無法載入驅動程式");
		}

		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection(url, user, passwd);
			stmt = conn.prepareStatement(sql1);
			rs = stmt.executeQuery();
			while (rs.next()) {//遍歷比對有無重複帳號，重複帳號進入錯誤登入頁面
				request.getRequestDispatcher("errorp/error2.jsp").forward(request, response);
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			
		}
		
		String sql = "INSERT INTO members(account,name,password,tel,email) VALUES(?,?,?,?,?)";
		try {
			
			conn = DriverManager.getConnection(url, user, passwd);
			stmt = conn.prepareStatement(sql);
			//寫入表單內帳號資料到資料庫
			stmt.setString(1, account);
			stmt.setString(2, name);
			stmt.setString(3, password);
			stmt.setString(4, tel);
			stmt.setString(5, email);
			stmt.executeUpdate();
			stmt.clearParameters();
			request.getRequestDispatcher("errorp/OK.jsp").forward(request, response);
		} catch (SQLException e) {

			out.print(e.getMessage());
			return;
		}

		try {

			stmt.close();
			conn.close();
		} catch (SQLException e) {

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
