<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>確認</title>
</head>
<body>
<head>
<link rel="stylesheet" type="text/css" href="css/bttn.css">
</head>
<body style='background-color: #fff7ef; font-size: 28px;'>
	<div style='display: flex; justify-content: center; align-items: center;'>
		<div style='display: inline-grid;'>
		<!-- 				改寫使用JSTL<C:> ExpressionLanguage 					-->
			<h3 style='color: brown;'>
				<c:out value="${sessionScope.arg}" default="User not found" />您好,以下是您預定的書籍
			</h3>
			<form method='post' action='/Libary/Read'>
					<c:if test="${requestScope.qu1!=0}">
						<label>書籍名稱為 : Java基礎必修</label>
						<input type='hidden' name='bn1' value='1'>
						<br>
						<label>書籍編號為 : <c:out value="${requestScope.bn1}"></c:out></label>
						<input type='hidden' name='bnum1' value='001'>
						<br>
						<label>數量為 : <c:out value="${requestScope.qu1}"></c:out></label>
						<input type='hidden' name='quantity1' value='${requestScope.qu1}'>
						<br>
						<p>
					</c:if>
					<c:if test="${requestScope.qu2!=0}">
						<label>書籍名稱為 : 響應式(RWD)網頁設計</label>
						<input type='hidden' name='bn2' value='2'>
						<br>
						<label>書籍編號為 : <c:out value="${requestScope.bn2}"></c:out></label>
						<input type='hidden' name='bnum2' value='002'>
						<br>
						<label>數量為 : <c:out value="${requestScope.qu2}"></c:out></label>
						<input type='hidden' name='quantity2' value='${requestScope.qu2}'>
						<br>
						<p>
					</c:if>
					<c:if test="${requestScope.qu3!=0}">
						<label>書籍名稱 : APP INVENTOR2</label>
						<input type='hidden' name='bn3' value='3'>
						<br>
						<label>書籍編號 : <c:out value="${requestScope.bn3}"></c:out></label>
						<input type='hidden' name='bnum3' value='003'>
						<br>
						<label>數量為 : <c:out value="${requestScope.qu3}"></c:out></label>
						<input type='hidden' name='quantity3' value='${requestScope.qu3}'>
						<br>
						<p>
					</c:if>
					<c:if test="${requestScope.qu4!=0}">
						<label>書籍名稱為 : Python資料科學</label>
						<input type='hidden' name='bn4' value='4'>
						<br>
						<label>書籍編號為 : <c:out value="${requestScope.bn4}"></c:out></label>
						<input type='hidden' name='bnum4' value='004'>
						<br>
						<label>數量為 : <c:out value="${requestScope.qu4}"></c:out></label>
						<input type='hidden' name='quantity4' value='${requestScope.qu4}'>
						<br>
						<p>
					</c:if>
					<c:if test="${requestScope.qu5!=0}">
						<label>書籍名稱為 : HTML&CSS網頁設計</label>
						<input type='hidden' name='bn5' value='5'>
						<br>
						<label>書籍編號為 : <c:out value="${requestScope.bn5}"></c:out></label>
						<input type='hidden' name='bnum5' value='005'>
						<br>
						<label>數量為 : <c:out value="${requestScope.qu5}"></c:out></label>
						<input type='hidden' name='quantity5' value='${requestScope.qu5}'>
						<br>
						<p>
					</c:if>
					<c:if test="${requestScope.qu6!=0}">
						<label>書籍名稱為 : Access+Excel</label>
						<input type='hidden' name='bn6' value='6'>
						<br>
						<label>書籍編號為 : <c:out value="${requestScope.bn6}"></c:out></label>
						<input type='hidden' name='bnum6' value='006'>
						<br>
						<label>數量為 : <c:out value="${requestScope.qu6}"></c:out></label>
						<input type='hidden' name='quantity6' value='${requestScope.qu6}'>
						<br>
						<p>
					</c:if>
				<p style='color: red;'>歸還日期為 :<c:out value="${requestScope.dt}"></c:out>
				</p>
				<input type='submit' value='確認送出' class='shape'>
			</form>
			<a class='fa' href='member.jsp'><p>返回</p></a>
		</div>
	</div>
</body>
</body>
</html>