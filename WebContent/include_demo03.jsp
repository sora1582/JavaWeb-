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
		String username = "lixinghua";
	%>
	<h1>动态包含并传递参数</h1>
	<jsp:include page = "receive_param.jsp">
		<jsp:param value="<%= username %>" name="name"/>
		<jsp:param value = "wwwww" name = "info"/>
	</jsp:include>
</body>
</html>