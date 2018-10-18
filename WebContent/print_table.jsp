<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border = "1" width = "100%">
		<%
			int rows = 0;
			int cols = 0;
			try{
				rows = Integer.parseInt(request.getParameter("row"));
				cols = Integer.parseInt(request.getParameter("col"));
			}catch(Exception e){}
			for(int x = 0; x < rows; x++){
		%>		
			<tr>
			<%
				for(int y = 0; y < cols; y++){
			%>
					<td><%= (x * y) %></td>
			<%
				}
			%>
			</tr>
			
		<% 
			}
		%>
			
		
	</table>
</body>
</html>