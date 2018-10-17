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
<c:if test="${name==null}">  다시 로그인 하세요.
</c:if>
<c:if test="${name!=null}"> 
	${memDAO.name(id,pwd)}님이 로그인 하였습니다.
</c:if>
</body>
</html>