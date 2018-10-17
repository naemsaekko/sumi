<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어서오세요</title>
<style type="text/css">
body {
	margin:  0 auto;
	padding: 0;
	height: 400px;
	font: 13px Tahoma, sans-serif;
}
#header {
	width:500px;
	height: 60px;
	text-align: center;
	background: #5496FB;
}
#container {
	width: 500px;
	height: 400px;
	background: #82FC84;
}
#nav {
	width: 100px;
	height: 400px;
	float: left;
	background:#F82387;
	line-height: 1.5;
}
#section {
	float: left;
	height: 400px;
	padding-left: 20px;
}
#footer {
	width: 500px;
	height: 40px;
	clear: both;
	text-align: left;
	background: #294762;
}
	
</style>
</head>
<body>
<div id="header">
	<h1><a href="/test/main/index.jsp" id="main">mem mem mem</a></h1>
</div>

<div id="container">
	<div id="nav">
		<a href="/test/main/index.jsp?req=writeForm">회원가입</a><br>
		<a href="/test/main/index.jsp?req=loginForm">로그인</a>
	</div>
	
	<div id="section">
		<c:if test="${param.req == null }">		
			<jsp:include page="body.jsp"/>
		</c:if>
		<c:if test="${param.req == 'writeForm' }">		
			<jsp:include page="../mem/writeForm.jsp"/>
		</c:if>
		<c:if test="${param.req == 'writeResult' }">		
			<jsp:include page="../mem/writeResult.jsp"/>
		</c:if>
		<c:if test="${param.req == 'loginForm' }">		
			<jsp:include page="../mem/loginForm.jsp"/>
		</c:if>
		<c:if test="${param.req == 'loginResult' }">		
			<jsp:include page="../mem/loginResult.jsp"/>
		</c:if>
	</div>
</div>

<div id="footer">
	<p>have a nice day</p>
</div>

</body>
</html>