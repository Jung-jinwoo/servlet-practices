<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Long no = (Long)request.getAttribute("no");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form method="post" action="/guestbook02/gb?r=delete">
	<input type='hidden' name="no" value="<%=no %>" />
	password: <input type="password" name="password" />
	<input type="submit" value="확인" />
	</form>
	<br>
	<a href="/guestbook02/gb">메인으로 돌아가기</a>
</body>
</html>