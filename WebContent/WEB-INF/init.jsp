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
//从web.xml中取得初始化配置参数
	String dbDriver = config.getInitParameter("driver");
	String dbUrl = config.getInitParameter("url");
%>
<h3>驱动程序:<%= dbDriver %></h3>
<h3>连接地址:<%= dbUrl %></h3>
</body>
</html>