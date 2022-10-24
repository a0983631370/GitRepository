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
    <title>圖書館資訊</title>
</head>
<body>
    <div>
        <div>
            <header>
                <div class="header">
                    <div class="hleft">
                        <div class="ri"><a href="home.html"><img width="100px" src="img/header.png"></a></div>
                    </div>
                    <div class="hright" style="font-weight:bold;">
                      <a href="home.html" id="ha"><div class="item">點我首頁</div></a>
                      <a href="about.html" id="ha"><div class="item">關於我們</div></a>
                      <a href="news.jsp" id="ha"><div class="item"><span class="border border-dark border-2 rounded">圖書館資訊</span></div></a>
                     <a href="login.jsp" id="ha"><div class="item">線上訂書</div></a>
                    </div>
                </div>
                <hr style="padding: 0; margin: 0;">
                <div class="hit"><div></div></div>
            </header>
          <div class="body">
            <div class="btext">
                  <h2 style="color: #0000C6; text-align:center;">開館資訊</h2><hr>
                  <p style="font-size: 16px; color:brown; font-weight:bold;">開放時間：</p>
                  <h3 style="text-align: center;">2022休館日、調整放假日一覽表</h3>
                      <div class="">
                      <table class="table table-hover">
                        <%
						try {

							Context initContext = new InitialContext();
							Context context = (Context) initContext.lookup("java:comp/env");
							DataSource ds = (DataSource) context.lookup("jdbc/mysql");

							
							Connection dbCon = ds.getConnection();
							Statement stmt = dbCon.createStatement();
							
							String sql = "select date, week, remark from news";
							ResultSet rs = stmt.executeQuery(sql);

							out.print("<thead><tr class='table-primary'>");
							out.print("<th scope='col'>日期</th>");
							out.print("<th scope='col'>星期</th>");
							out.print("<th scope='col'>休館說明</th>");
							out.print("</tr></thead>");
							out.print("<tbody>");
							while (rs.next()) { 								
								out.print("<tr class='table-warning'>");
								out.print("<td>" + rs.getString("date") + "</td>");
								out.print("<td>" + rs.getString("week") + "</td>");
								out.print("<td>" + rs.getString("remark") + "</td>");
								out.print("</tr>");
							}
							out.print("</tbody>");

							stmt.close(); 
							dbCon.close();
						} catch (Exception e) {
							out.print(e);
						}
					%>
						</table>
                        </div>
                  <p>依據「新北市立圖書館閱覽服務規則」，各館臨櫃申請借閱證及借、還書在閉館前30分鐘停止受理。
                  <p style="font-size: 16px; color:brown; font-weight:bold;">休館時間：
                  <p>經政府公告之國定假日為休館日、每月最後一個星期四為清館日，不對外開放；其他休館日詳見以下「休館日一覽表」。
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