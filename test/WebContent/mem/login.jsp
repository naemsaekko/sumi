<%@page import="mem.bean.MemDTO"%>
<%@page import="mem.dao.MemDAO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//데이터
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	//DB
	MemDAO memberDAO = new MemDAO();
	String name = memberDAO.login(id, pwd);
	

	RequestDispatcher dispatcher=
			request.getRequestDispatcher("../main/index.jsp?req=loginResult");
		  	dispatcher.forward(request,response);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>