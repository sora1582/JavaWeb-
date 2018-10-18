<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action = "login.jsp" method = "post">
	用户名: <input type = "text" name = "uname"><br>
	密&nbsp;&nbsp;码: <input type = "password" name = "upass" ><br>
	<input type = "submit" value = "登录">
	<input type = "reset" value = "重置">
</form>
<%
	//用户名: lixinghua 密码：mldn
	String name = request.getParameter("uname");//取得name的信息
	String password = request.getParameter("upass");//取得password的信息
	if(!(name == null || "".equals(name) || password == null || "".equals(password))){//进行用户名和密码的验证
		if("lixinghua".equals(name) && "mldn".equals(password)){
			response.setHeader("refresh","2; URL =welcome.jsp");//定时跳转
			session.setAttribute("userid", name);//将登录的用户名保存在session中
		}
		
	
%>
	<h3>用户登录成功，两秒后跳转到欢迎页</h3>
	<h3>如果没有跳转，请按<a href = "welcom.jsp">这里</a></h3>
<%
	}else{//登录失败给出错误信息
%>
		<h3>错误的用户名和密码</h3>
<%
	}
%>

</body>
</html>