<%@page import="mem.dao.MemDAO"%>
<%@page import="mem.bean.MemDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//데이터
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String gender = request.getParameter("gender");
	String birth1 = request.getParameter("birth1");
	String birth2 = request.getParameter("birth2");
	String birth3 = request.getParameter("birth3");
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	//dto에 담아서 전달
	MemDTO memDTO=new MemDTO();
	memDTO.setName(name);
	memDTO.setId(id);
	memDTO.setPwd(pwd);
	memDTO.setGender(gender);
	memDTO.setBirth1(birth1);
	memDTO.setBirth2(birth2);
	memDTO.setBirth3(birth3);
	memDTO.setEmail1(email1);
	memDTO.setEmail2(email2);
	memDTO.setTel1(tel1);
	memDTO.setTel2(tel2);
	memDTO.setTel3(tel3);
	//DB
	MemDAO memDAO=new MemDAO();
	int su=memDAO.write(memDTO);
	//데이터 공유 및 페이지 이동
	request.setAttribute("su", su);
	request.setAttribute("memDTO", memDTO);
	
	RequestDispatcher dispatcher=
			request.getRequestDispatcher("../main/index.jsp?req=writeResult");
		  	dispatcher.forward(request,response);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
<jsp:forward page="../main/index.jsp?req=writeResult"/>
-->
</body>
</html>