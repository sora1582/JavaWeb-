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
		request.setCharacterEncoding("UTF-8");//设置统一编码
		String id = request.getParameter("id");
		String name = request.getParameter("uname");
		String inst[] = request.getParameterValues("inst");
	%>
	
	<h3>编号：<%= id %></h3>
	<h3>姓名：<%= name %></h3>
	<%
		if(inst != null){	//判断是否有内容
	%>
			<h3>兴趣：
				<%
					for(int x = 0; x < inst.length; x++){	//循环输出全部的内容
				%>
						<%= inst[x] %>	<!-- 使用表达式输出数组中的元素 -->
				<%
					}
				%>
			</h3>
	
	<%	
		}
	%>
</body>
</html>