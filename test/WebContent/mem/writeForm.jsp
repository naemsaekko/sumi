<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<script type="text/javascript" src="../script/memScript.js"></script>
<form name="writeForm" method="post" action="../mem/write.jsp">
<h2 align="center">회원가입</h2>
<table border="1" style="background-color: white">
	<tr>
		<td width="70" align="center">이름</td>
		<td><input type="text" name="name" size="40" placeholder="이름입력"></td>
	</tr>
	<tr>
		<td width="70" align="center">아이디</td>
		<td>
			<input type="text" name="id" size="26">
			<input type="button" value="중복체크">
		</td>
	</tr>
	<tr>
		<td width="70" align="center">비밀번호</td>
		<td><input type="password" name="pwd" size="41"></td>
	</tr>
	<tr>
		<td width="70" align="center">재확인</td>
		<td><input type="password" name="repwd" size="41"></td>
	</tr>
	<tr>
		<td width="70" align="center">성별</td>
		<td>
			<input type="radio" name="gender" value="0" checked>남
			<input type="radio" name="gender" value="1">여
		</td>
	</tr>
	<tr>
		<td width="70" align="center">생년월일</td>
		<td>
			<input type="text" name="tel2" size="6">년
			<input type="text" name="tel3" size="4">월
			<input type="text" name="tel3" size="4">일
		</td>
	</tr>
	<tr>
		<td width="70" align="center">핸드폰</td>
		<td>
			<select name="tel1" style="width:60px;">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
			</select> -
			<input type="text" name="tel2" size="9"> -
			<input type="text" name="tel3" size="10">
		</td>
	</tr>
	<tr>
		<td width="70" align="center">이메일</td>
		<td>
			<input type="text" name="email1" size="19"> @
			<select name="email2" style="width: 100px;">
				<option value="naver.com">naver.com</option>
				<option value="gmail.com">gmail.com</option>
				<option value="hanmail.com">hanmail.com</option>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="button" value="회원가입" onclick="checkWrite()">
			<input type="reset" value="다시 작성">
		</td>
	</tr>
</table>
</form>
</body>
</html>