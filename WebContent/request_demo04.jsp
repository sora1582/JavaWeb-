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
		request.setCharacterEncoding("UTF-8");
%>
	<center>
		<table border = "1">
			<tr>
				<td>参数名称</td>
				<td>参数内容</td>
			</tr>
		
	
<%
		Enumeration enu = request.getParameterNames();//接收全部请求的参数名称
		while(enu.hasMoreElements()){//依次取出每个参数名称
			String paramName = (String)enu.nextElement();//取出内容
%>
			<tr>
				<td><%= paramName %></td>
				<td>
<%
					if(paramName.startsWith("**")){//判断是否以**开头
						String paramValue[] = request.getParameterValues(paramName);
						for(int x = 0; x < paramValue.length; x++){//循环输出内容
						
%>
							<%= paramValue[x] %>
<%
						}
					}else{//不是以**开头
						String paramValue = request.getParameter(paramName);
%>
						<%= paramValue %>
<%
					}
%>
				</td>
			</tr>
<%
					}
%>
				
			

	
	</table>
	</center>
</body>
</html>