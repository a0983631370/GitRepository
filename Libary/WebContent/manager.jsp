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
<title>管理員系統</title>
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
					<a href="m_login.jsp" id="ha"><div class="btn btn-outline-danger" style="margin-left:15px;">
							<h5>登出</h5>
						</div></a>
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
			</div>
			<hr style="padding: 0; margin: 0; margin-top:15px;">
            <footer>
                <div class="footer">
                    <div class="fimg">
                        <a href="https://www.instagram.com/readbook_library/" target="_blank"><img class="foot" src="img/i.png" width="30"></a>
                        <a href="https://www.youtube.com/channel/UCUY6FpbWvon6vzhfvU9idHg" target="_blank"><img class="foot" src="img/y.png" width="30"></a>
                    </div>
                    <div class="fimg">
                        <a href="#"><img class="foot" src="img/l.png" width="30"></a>
                        <a href="https://www.facebook.com/NewTaipeiCityLibrary/" target="_blank"><img class="foot" src="img/f.png" width="30"></a> 
                    </div>
                        <div class="fleft">
                            <div class="ffont">
                                <p>政府網站資料開放宣告 | 隱私權聲明<br>
                                圖書館信箱：cad2170001@ntpc.gov.tw
                            </div>
                        </div>
                        <div class="fright">
                            <div class="ffont">
                                <p>XXX圖書館 版權所有<br>
                                電話：02-29537868 傳真：02-29538139<br>
                                <a href="https://goo.gl/maps/Q8BdDkaedAcBpVHu6" id="fa" target="_blank">地址：220218 新北市板橋區貴興路139號 【地圖】</a>
                            </div>
                        </div>
                </div>
            </footer>	
		</div>
	</div>
</body>
</html>