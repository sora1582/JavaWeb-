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
		request.setCharacterEncoding("UTF-8");
		String param1 = request.getParameter("name");
		String param2 = request.getParameter("password");
	%>
	
	<h3>姓名：<%= param1 %></h3>
	<h3>密码：<%= param2 %></h3>
</body>
</html>