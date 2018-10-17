<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javascript" 
	src="http://localhost:8080/test/script/memScript.js"></script>
</head>
<body>
<form name="loginForm" action="../mem/login.jsp" method="post">
<h2 align="center">로그인</h2>
<table border="1" style="background-color: white">
	<tr>
		<td width="70" align="center">아이디</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td width="70" align="center">비밀번호</td>
		<td><input type="password" name="pwd" size="21"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="button" value="로그인" onclick="checkLogin()">
			<input type="button" value="회원가입" 
				onclick="location.href='../main/index.jsp?req=writeForm'">
		</td>
	</tr>
</table>
</form>
</body>
</html>