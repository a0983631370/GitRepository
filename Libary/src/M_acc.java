
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

@WebServlet("/Adel")
public class M_acc extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		String Id=request.getParameter("id");
		String Name=request.getParameter("account");
		//資料庫連線
		Connection conn = null;
		PreparedStatement stmt = null;
		int rs ;

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
			sql = "DELETE FROM members WHERE id="+Id+" and account='"+Name+"'";
			conn = DriverManager.getConnection(url, user, passwd);
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeUpdate();
			
			if(rs==0) {
				RequestDispatcher forpage = request.getRequestDispatcher("errorp/deletAError.jsp");
				forpage.forward(request, response);
			}else{//成功後轉到操作成功頁面
				stmt.clearParameters();
				stmt.close();
				conn.close();
				RequestDispatcher forpage = request.getRequestDispatcher("errorp/deleteOK.jsp");
				forpage.forward(request, response);
			}
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			out.print("操作發生錯誤");
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}
}
