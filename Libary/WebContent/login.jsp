<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>會員登入</title>
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
                        <a href="news.jsp" id="ha"><div class="item">圖書館資訊</div></a>
                        <a href="login.jsp" id="ha"><div class="item"><span class="border border-dark border-2 rounded">線上訂書</span></div></a>
                    </div>
                </div>
                <hr style="padding: 0; margin: 0;">
                <div class="hit"></div>
            </header>
            <div class="body">
                <div class="bimg">
                    <img src="img/library.jpg" width="700px" height="300px">
                </div>
            </div>
            <div class="body">
                <div class="flogin border border-3 rounded border-secondary" style="height:480px;">
                <fieldset style="margin: 30px;">
                <h3 style="color: rgb(40, 52, 89); font-weight:bold;text-align: center;">會員登入</h3>
                <form action="/Libary/login" id="myform" method="POST">
                   <div class="mb-3">
                      <label for="account" style="font-size:18px;text-align:left;" class="form-label">帳號:</label>
                      <input type="text" name="account" id="account" autofocus required pattern="[^/\\\.\?\*\$\+,;\^!@#%~`=]*" class="form-control">
                   </div>
                   <div class="mb-3">
                      <label for="password" style="font-size:18px;" class="form-label">密碼:</label>
                      <input type="password" name="password" id="password" required class="form-control">
                   </div>
	               <div class="d-grid gap-2 d-md-flex justify-content-md-end">                    
	                   <input type="submit" value="送出" class="btn btn-outline-secondary">
	                   <input type="reset" value="取消" class="btn btn-outline-secondary">
	               </div>
				</form>
                </fieldset>
                <hr>
                <a href="join.jsp" id="fa"><h4 style="margin-top:10px;font-weight:bold;text-align: center;">還不是會員嗎?<br>點我加入會員</h4></a><hr>
				<a href="m_login.jsp" id="fa" style="color: brown;"><h4 style="margin-top:10px;font-weight:bold;text-align: center;">管理員登入</h4></a>
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