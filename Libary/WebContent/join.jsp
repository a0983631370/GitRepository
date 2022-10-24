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
    <title>註冊</title>
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
                        <a href="login.jsp" id="ha"><div class="item">線上訂書</div></a>
                    </div>
                </div>
                <hr style="padding: 0; margin: 0;">
            </header>
            <div class="fbody">
                <div class="fform border border-3 rounded border-secondary">
                    <fieldset style="margin: 50px;">
                        <legend style="color:blue; font-weight:bold;text-align: center;">會員註冊</legend>
                        <form id="myform" action="/Libary/dojoin" method="POST">
                            <h3 style=" font-weight:bold;text-align: center;margin-bottom:20px;">填寫會員資料</h3>
		                    <div class="mb-2">
	                            <label for="acc" class="form-label" style="font-size:18px;">帳號:</label>
	                            <input class="form-control" type="text" name="account" id="acc" pattern="[^/\\\.\?\*\$\+,;\^!@#%~`=]*"
	                                title="禁用特殊字元[^.\?*$+,;!@#%~`=]" required autofocus>
	                            <label for="pass" class="form-label" style="font-size:18px;">密碼:</label>
	                            <input class="form-control" type="password" name="password" id="pass" required>
	                            <label for="name" class="form-label" style="font-size:18px;">姓名:</label>
	                            <input class="form-control" type="text" name="name" id="name" pattern="[^/\\\.\?\*\$\+,;\^!@#%~`=]*"
	                                title="禁用特殊字元[^.\?*$+,;!@#%~`=]" required>
	                            <label class="form-label" for="tel" class="form-label" style="font-size:18px;">手機:</label>
	                            <input class="form-control" type="text" name="tel" id="tel" pattern="09\d{8}" required title="請填寫手機格式" placeholder="09xxxxxxxx">
	                            <label class="form-label" for="em" class="form-label" style="font-size:18px;">E-mail:</label>
	                            <input class="form-control" type="email" name="email" id="em" title="請填寫email格式" required placeholder="name@example.com">
                            </div>
                            <div class="d-grid gap-2 d-md-flex justify-content-md-end">                    
			                   <input type="submit" value="送出" class="btn btn-outline-secondary">
			                   <input type="reset" value="取消" class="btn btn-outline-secondary">
	               			</div>
                        </form>
                        <br><hr>
                        <a href="login.jsp" id="fa"><h4 style="margin-top:10px; font-weight:bold;text-align: center;">返回會員登入</h4></a>
                       </fieldset>	
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
                                <p>網站資料開放宣告 | 隱私權聲明<br>
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