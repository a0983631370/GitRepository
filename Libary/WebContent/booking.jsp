<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>線上訂書</title>
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
               <!-- 				改寫使用JSTL<C:> ExpressionLanguage 					-->
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
            <div class="mbody"> 
                <div class="mitem">
					<a href="booking.jsp" id="ha"><div class="bit">線上訂書</div></a>
                </div>
                <div class="mitem">
                    <a href="book.jsp" id="ha"><div class="bit">訂書明細查詢</div></a>
				</div>
				<div class="bbox">
                    <div class="nbook">
                        <form method="post" action="/Libary/Check">
                            <fieldset style="margin: 10px;">                                               
                                <legend style="color: red; font-weight:bold;">新書推薦</legend>
                                <ul>
                                    <li id="l"><img src="img/book/book1.jpg" width="250px">
                                        <label id="la">書籍名稱 : Java基礎必修</label><input id="i" type="hidden" name="bn1" value="1"><br>
                                        <label id="la">書籍編號 : 001</label><input id="i" type="hidden" name="bnum1" value="001"><br>
                                        <label id="l">選擇數量 :<select name="quantity1" size=1>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select></label>
                                    </li>
                                    <li id="l"><img src="img/book/book2.jpg" width="250px">
                                        <label id="la">書籍名稱 : 響應式(RWD)網頁設計</label><input id="i" type="hidden" name="bn2" value="2"><br>
                                        <label id="la">書籍編號 : 002</label><input id="i" type="hidden" name="bnum2" value="002"><br>
                                        <label id="l">選擇數量 :<select name="quantity2" size=1>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select></label>
                                    </li>
                                    <li id="l"><img src="img/book/book3.jpg" width="250px">
                                        <label id="la">書籍名稱 : APP INVENTOR2</label><input id="i" type="hidden" name="bn3" value="3"><br>
                                        <label id="la">書籍編號 : 003</label><input id="i" type="hidden" name="bnum3" value="003"><br>
                                        <label id="l">選擇數量 :<select name="quantity3" size=1>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select></label>
                                    </li>
                                </ul>
                            <hr>
                            <fieldset style="margin: 8px;">                                               
                                <legend style="color: red; font-weight:bold;">熱門書籍</legend>
                                <ul>
                                    <li id="l"><img src="img/book/book4.jpg" width="250px">
                                        <label id="la">書籍名稱 : Python資料科學</label><input id="i" type="hidden" name="bn4" value="4"><br>
                                        <label id="la">書籍編號 : 004</label><input id="i" type="hidden" name="bnum4" value="004"><br>
                                        <label id="l">選擇數量 :<select name="quantity4" size=1>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select></label>
                                    </li>
                                    <li id="l"><img src="img/book/book5.jpg" width="250px">
                                        <label id="la">書籍名稱 : HTML&CSS網頁設計</label><input id="i" type="hidden" name="bn5" value="5"><br>
                                        <label id="la">書籍編號 : 005</label><input id="i" type="hidden" name="bnum5" value="005"><br>
                                        <label id="l">選擇數量 :<select name="quantity5" size=1>
                                           <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select></label>
                                    </li>
                                    <li id="l"><img src="img/book/book6.jpg" width="250px">
                                        <label id="la">書籍名稱 : Access+Excel</label><input id="i" type="hidden" name="bn6" value="6"><br>
                                        <label id="la">書籍編號 : 006</label><input id="i" type="hidden" name="bnum6" value="006"><br>
                                        <label id="l">選擇數量 :<select name="quantity6" size=1>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select></label>
                                    </li>
                                </ul>
                            <input id="i" type="reset" value="重填" class="shape"><input type="submit" value="傳送" class="shape">
                            </fieldset>                 
                        </form>                    
                    </div>
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