<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>动态包含操作</h1>
	<jsp:include page = "info.html"/> <!-- 标签指令必须完结 -->
	<jsp:include page = "info.jsp"/>
	<jsp:include page = "info.inc"/>
</body>
</html>