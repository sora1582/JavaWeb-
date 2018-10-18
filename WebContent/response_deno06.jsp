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
	//向客户端增加两个cookie
	Cookie c1 = new Cookie("lxh", "LiXingHua");
	Cookie c2 = new Cookie("mldn", "www.MLDNJAVA.cn");
	response.addCookie(c1);
	response.addCookie(c2);
%>
</body>
</html>