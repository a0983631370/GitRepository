
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Check")
public class Checkbook extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		String bnum1 = request.getParameter("bnum1");
		int qua1 = Integer.parseInt(request.getParameter("quantity1").toString());
		
		String bnum2 = request.getParameter("bnum2");
		int qua2 = Integer.parseInt(request.getParameter("quantity2").toString());
		
		String bnum3 = request.getParameter("bnum3");
		int qua3 = Integer.parseInt(request.getParameter("quantity3").toString());
		
		String bnum4 = request.getParameter("bnum4");
		int qua4 = Integer.parseInt(request.getParameter("quantity4").toString());

		String bnum5 = request.getParameter("bnum5");
		int qua5 = Integer.parseInt(request.getParameter("quantity5").toString());
		
		String bnum6 = request.getParameter("bnum6");
		int qua6 = Integer.parseInt(request.getParameter("quantity6").toString());
		
		if(qua1==0&&qua2==0&&qua3==0&&qua4==0&&qua5==0&&qua6==0) {
			RequestDispatcher page = request.getRequestDispatcher("bookError.jsp");	
			page.forward(request, response);
		}
		else {
			////////////使用forward寫一個確認新的頁面
			
			LocalDate date = LocalDate.now();
			date = date.plusDays(7);
			
			request.setAttribute("dt", date);
			request.setAttribute("bn1", bnum1);
			request.setAttribute("qu1",qua1);
			request.setAttribute("bn2", bnum2);
			request.setAttribute("qu2",qua2);
			request.setAttribute("bn3", bnum3);
			request.setAttribute("qu3",qua3);
			request.setAttribute("bn4", bnum4);
			request.setAttribute("qu4",qua4);
			request.setAttribute("bn5", bnum5);
			request.setAttribute("qu5",qua5);
			request.setAttribute("bn6", bnum6);
			request.setAttribute("qu6",qua6);
			
			RequestDispatcher page = request.getRequestDispatcher("checkbook.jsp");	
			page.forward(request, response);
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
