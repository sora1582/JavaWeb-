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
	if(session.isNew()){//用户是第一次访问
%>

	<h3>欢迎新用户光临</h3>
<%
	}else{//用户再次访问本页面
%>
		<h3>您已经是老用户了</h3>
		
<%
	}
%>
</body>
</html>