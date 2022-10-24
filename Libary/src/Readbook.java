
import java.io.IOException;

import java.time.LocalDate;

import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bk.jdbc.Bk;
import com.bk.jdbc.ReadbkDao;

@WebServlet("/Read")
public class Readbook extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//建立BK的Bean物件
		Bk bk = new Bk();
		//取得現在時間加上七天為歸還書籍日期
		LocalDate date = LocalDate.now().plusDays(7);
		String Date = date.toString();
		//取得使用者的帳號
		String acnt = (String) request.getSession().getAttribute("act");

		bk.setAccount(acnt);
		bk.setDate(Date);

		int q1 = 0, q2 = 0, q3 = 0, q4 = 0, q5 = 0, q6 = 0;
		String bname1 = null, bname2 = null, bname3 = null, bname4 = null, bname5 = null, bname6 = null;
		String bnum1 = null, bnum2 = null, bnum3 = null, bnum4 = null, bnum5 = null, bnum6 = null;
		
		String quantity1 = request.getParameter("quantity1");
		String quantity2 = request.getParameter("quantity2");
		String quantity3 = request.getParameter("quantity3");
		String quantity4 = request.getParameter("quantity4");
		String quantity5 = request.getParameter("quantity5");
		String quantity6 = request.getParameter("quantity6");

		//以數量不為空值判斷是否有預定該書籍項目，有預定的項目就讓資料寫入Bk.java這個Bean
		if (quantity1 != null) {
			q1 = Integer.parseInt(quantity1.toString());
			bname1 = "Java基礎必修";
			bnum1 = "001";
			bk.setBname1(bname1);
			bk.setBnum1(bnum1);
			bk.setQuantity1(q1);
		}
		if (quantity2 != null) {
			q2 = Integer.parseInt(quantity2.toString());
			bname2 = "響應式(RWD)網頁設計";
			bnum2 = "002";
			bk.setBname2(bname2);
			bk.setBnum2(bnum2);
			bk.setQuantity2(q2);
		}
		if (quantity3 != null) {
			q3 = Integer.parseInt(quantity3.toString());
			bname3 = "APP INVENTOR2";
			bnum3 = "003";
			bk.setBname3(bname3);
			bk.setBnum3(bnum3);
			bk.setQuantity3(q3);
		}
		if (quantity4 != null) {
			q4 = Integer.parseInt(quantity4.toString());
			bname4 = "Python資料科學";
			bnum4 = "004";
			bk.setBname4(bname4);
			bk.setBnum4(bnum4);
			bk.setQuantity4(q4);
		}
		if (quantity5 != null) {
			q5 = Integer.parseInt(quantity5.toString());
			bname5 = "HTML&CSS網頁設計";
			bnum5 = "005";
			bk.setBname5(bname5);
			bk.setBnum5(bnum5);
			bk.setQuantity5(q5);
		}
		if (quantity6 != null) {
			q6 = Integer.parseInt(quantity6.toString());
			bname6 = "Access+Excel";
			bnum6 = "006";
			bk.setBname6(bname6);
			bk.setBnum6(bnum6);
			bk.setQuantity6(q6);
		}

		//建立Dao物件
		ReadbkDao rd = new ReadbkDao();
		
		//判斷是否有成功寫入資料，回傳是true就forward到錯誤頁面
		if (rd.addBk(bk)) {
			RequestDispatcher productpage = request.getRequestDispatcher("errorp/bookError.jsp");
			productpage.forward(request, response);
			
		} else {
			RequestDispatcher productpage = request.getRequestDispatcher("errorp/bookOK.jsp");
			productpage.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
