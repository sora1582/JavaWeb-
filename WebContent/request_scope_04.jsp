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
		pageContext.setAttribute("name", "lixinghua", pageContext.REQUEST_SCOPE);
		pageContext.setAttribute("birthday", new Date(), pageContext.REQUEST_SCOPE);
	%>
	
	<jsp:forward page = "request_scope_02.jsp"/>
</body>
</html>