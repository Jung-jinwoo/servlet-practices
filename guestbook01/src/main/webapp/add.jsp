<%@page import="guestbook01.dao.GuestbookDao"%>
<%@page import="guestbook01.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    
    	String name = request.getParameter("name");
    	String password = request.getParameter("password");
    	String message = request.getParameter("message");
    	
    	GuestbookVo guestbookVo = new GuestbookVo();
    	guestbookVo.setName(name);
    	guestbookVo.setPassword(password);
    	guestbookVo.setMessage(message);
    	
    	new GuestbookDao().insert(guestbookVo);
    	response.sendRedirect("/guestbook01");
    	
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