<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="javax.sql.DataSource"%>

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
<title>管理公告資訊</title>
</head>
<body>
	<div class="setbody">
		<div class="box">
			<header>
				<div class="header">
					<div class="ht">
						<h1 style="color: rgb(102, 75, 0);">圖書管理員系統</h1>
					</div>
				</div>
				<div class="logout">
					<%
						String name1 = (String) request.getSession().getAttribute("arg1");

						if (name1 != null) {
							out.print("<h3 style=' color:brown;'> " + name1 + " ,您好歡迎使用管理系統</h1>");
						}
						session.setAttribute("arg", name1);
					%>
					<a href="login.jsp" id="ha"><div class="btn btn-outline-danger" style="margin-left:15px;"><h5>登出</h5></div></a>
				</div>
				<hr style="padding: 0; margin: 0;">
			</header>
			<div class="mbody" style="height:780px;">
				<div class="bitem">
					<a href="m_acc.jsp" id="ha"><div class="bit">用戶資料查詢</div></a>
                </div>
                <div class="bitem">
                    <a href="m_book.jsp" id="ha"><div class="bit">訂書明細查詢</div></a>
				</div>
				<div class="bitem">
                    <a href="m_news.jsp" id="ha"><div class="bit">公告資訊查詢</div></a>
				</div>
				<div class="bbt">
					<h3 style="font-weight:bold;">公告資訊表如下(最新15筆)</h3>
					<div class="tb">
                        <%
						try {

							Context initContext = new InitialContext();
							Context context = (Context) initContext.lookup("java:comp/env");
							DataSource ds = (DataSource) context.lookup("jdbc/mysql");

							
							Connection dbCon = ds.getConnection();
							Statement stmt = dbCon.createStatement();
							
							String sql = "select date, week, remark from news order by  date desc limit 15";
							ResultSet rs = stmt.executeQuery(sql);

							out.print("<table style='width:650px;'>");
							out.print("<th>日期</th>");
							out.print("<th>星期</th>");
							out.print("<th>休館說明</th>");
							
							while (rs.next()) { 
								out.print("<tr>");
								out.print("<td>" + rs.getString("date") + "</td>");
								out.print("<td>" + rs.getString("week") + "</td>");
								out.print("<td>" + rs.getString("remark") + "</td>");
								out.print("</tr>");
							}
							out.print("</table>");

							stmt.close(); 
							dbCon.close();
						} catch (Exception e) {
							out.print(e);
						}
						%>
						<fieldset style="margin-left: 80px;text-align: left;">
			                <h3 style="color: red; margin-bottom: 30px;font-weight:bold;">新增資料</h3>
			                <form action="/Libary/Ncrt" id="myform" method="POST">
							<label style="font-size:18px;">日期欄位 :</label><input type="text" name="dt" id="dt" size="15" title="請輸入日期格式為  yyyy-mm-dd" required 
							pattern="^((19|20)?[0-9]{2}[-](0?[1-9]|1[012])[-](0?[1-9]|[12][0-9]|3[01]))*$"><br><br>
							<label style="font-size:18px;">星期欄位 :</label><input type="text" name="wk" id="wk" size="15" required  title="請輸入中文的星期一  ~  日"
							pattern="[\u4e00,\u4e8c,\u4e09,\u56db,\u4e94,\u516d,\u65e5]{1}"><br><br>
							<label style="font-size:18px;">公告欄位 :</label><input type="text" name="msg" id="msg" size="15" required><br><br>
							<input type="submit" value="送出" class="shape">
							<input type="reset" value="清除" class="shape">
							</form>
	                	</fieldset>
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
	</div>
</body>
</html>