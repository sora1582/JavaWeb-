<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String username = (String)session.getAttribute("name");
		Date userbirthday = (Date)session.getAttribute("birthday");
	%>
	
	<h2>name:<%= username %></h2>
	<h2>birthday: <%= userbirthday %></h2>
</body>
</html>