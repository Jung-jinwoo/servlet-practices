<%@page import="guestbook01.vo.GuestbookVo"%>
<%@page import="guestbook01.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    
    	Long no = Long.parseLong(request.getParameter("no"));
    	String password = request.getParameter("password");
    	
    	GuestbookVo guestbookVo = new GuestbookVo();
    	guestbookVo.setNo(no);
    	guestbookVo.setPassword(password);
    	new GuestbookDao().delete(guestbookVo);
    	
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