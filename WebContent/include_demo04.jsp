<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<%
		int x = 100;
	%>
	<h1>
		include_demo04.jsp--<%= x %>
	</h1>
	<!--<%@include file="include.jsp"%>-->	<!-- 静态包含是先将全部的内容包含在一起，然后再一起编译，x变量相当于定义了两次 -->
</body>
</html>