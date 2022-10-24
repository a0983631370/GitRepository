<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="javax.sql.DataSource"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" style="height: 100%;">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/anima.js"></script>
<link rel="stylesheet" type="text/css" href="css/animate.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/version.css">
<title>管理訂書明細</title>
</head>
<body>
	<div class="setbody">
		<div class="box">
			<header>
                <div class="header">
                    <div class="ht">
                        <h1 style=" color:rgb(85, 60, 0);">線上訂書系統</h1><br>
                    </div>  
                </div>
                <div class="logout">
              <!-- 改寫使用JSTL<C:> ExpressionLanguage -->
                <h3 style=' color:brown;'>
                	<c:out value="${sessionScope.arg}" default="User not found" />,您好歡迎使用線上訂書系統
                </h3>
               	<%
               	/**
				    String name=(String)request.getSession().getAttribute("arg");
               		String acnt=(String)request.getSession().getAttribute("act");
               		
			   		if(name!=null){
			   			 out.print("<h3 style=' color:brown;'> "+ name +" ,您好歡迎使用線上訂書系統</h1>");
			   		}
			   		
			   		request.getSession().setAttribute("arg", name);
			   		request.getSession().setAttribute("act", acnt);*/
   				%>
                    <a href="login.jsp" id="ha"><div class="btn btn-outline-danger" style="margin-left:15px;"><h5>登出</h5></div></a>
                </div>
                <hr style="padding: 0; margin: 0;">
            </header>
			<div class="mbody" style="height:780px;">
				<div class="mitem">
					<a href="booking.jsp" id="ha"><div class="bit">線上訂書</div></a>
                </div>
                <div class="mitem">
                    <a href="book.jsp" id="ha"><div class="bit">訂書明細查詢</div></a>
				</div>
				<div class="bbt">
					<h3 style="font-weight:bold;">訂書明細表如下</h3>
					<div class="tb">
					<%
					
					String acc = (String) request.getSession().getAttribute("act");
						
						try {

							Context initContext = new InitialContext();
							Context context = (Context) initContext.lookup("java:comp/env");
							DataSource ds = (DataSource) context.lookup("jdbc/mysql");

							
							Connection dbCon = ds.getConnection();
							Statement stmt = dbCon.createStatement();
							
							String sql = "select bid, account,bnum,bname,quantity,date from booking where account='"+acc+"'";
							ResultSet rs = stmt.executeQuery(sql);

							out.print("<table style='width:1000px;'>");
							out.print("<th>訂單編號</th>");
							out.print("<th>用戶帳號</th>");
							out.print("<th>書籍編號</th>");
							out.print("<th>書籍名稱</th>");
							out.print("<th>數量</th>");
							out.print("<th>歸還日期</th>");
							while (rs.next()) { 
								out.print("<tr>");
								out.print("<td>" + rs.getInt("bid") + "</td>");
								out.print("<td>" + rs.getString("account") + "</td>");
								out.print("<td>" + rs.getString("bnum") + "</td>");
								out.print("<td>" + rs.getString("bname") + "</td>");
								out.print("<td>" + rs.getInt("quantity") + "</td>");
								out.print("<td>" + rs.getDate("date") + "</td>");
								out.print("</tr>");
							}
							out.print("</table>");

							stmt.close(); 
							dbCon.close();
						} catch (Exception e) {
							out.print(e);
						}
					%>
					</div>
				</div>
			</div>
			<hr style="padding: 0; margin: 0; margin-top: 15px;">
			<footer>
				<div class="footer">
					<div class="fimg">
						<a href="https://www.instagram.com/readbook_library/"
							target="_blank"><img class="foot" src="img/i.png" width="30"></a>
						<a href="https://www.youtube.com/channel/UCUY6FpbWvon6vzhfvU9idHg"
							target="_blank"><img class="foot" src="img/y.png" width="30"></a>
					</div>
					<div class="fimg">
						<a href="#"><img class="foot" src="img/l.png" width="30"></a>
						<a href="https://www.facebook.com/NewTaipeiCityLibrary/"
							target="_blank"><img class="foot" src="img/f.png" width="30"></a>
					</div>
					<div class="fleft">
						<div class="ffont">
							<p>
								政府網站資料開放宣告 | 隱私權聲明<br> 圖書館信箱：cad2170001@ntpc.gov.tw
						</div>
					</div>
					<div class="fright">
						<div class="ffont">
							<p>
								XXX圖書館 版權所有<br> 電話：02-29537868 傳真：02-29538139<br> <a
									href="https://goo.gl/maps/Q8BdDkaedAcBpVHu6" id="fa"
									target="_blank">地址：220218 新北市板橋區貴興路139號 【地圖】</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
</body>
</html>