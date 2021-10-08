<%@page import="guestbook01.vo.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@page import="guestbook01.dao.GuestbookDao"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    	request.setCharacterEncoding("utf-8");
    
		
    	String name = request.getParameter("name");
    	String message = request.getParameter("message");
    	String regDate = request.getParameter("regDate");
    	
    	List<GuestbookVo> list = new GuestbookDao().findAll();
    	int num=0;
    %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="add.jsp" method="post">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>
	</form>
	
	<%
		for(GuestbookVo vo : list){
			num = num+1;
			
	%>
	<br>
	<table width=510 border=1>
		<tr>
			<td>[<%=num %>]</td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getRegDate()%></td>
			<td><a href="deleteform.jsp?no=<%=vo.getNo() %>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%=vo.getMessage() %></td>
		</tr>
	</table>
	<%
		
		}
	%>
	
</body>
</html>