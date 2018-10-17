<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript" src="../script/memScript.js"></script>
<p><c:choose>
	<c:when test="${exist}">
	${memDTO.id}는 사용중입니다.
	<p>아이디 : <input type="text" name="id">
	<input type="submit" value="중복체크">
	</c:when>

	<c:when test="${su==0}">
	${memDTO.id}는 사용가능합니다.
	<input type="button" value="사용" onclick="checkIdClose()">
	</c:when>
</c:choose></p>
</body>
</html>