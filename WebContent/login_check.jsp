<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		//定义数据库驱动程序
		public static final String DBDRIVER = "com.mysql.jdbc.Driver";
		
		public static final String DBURL = "jdbc:mysql://localhost:3306/mldn";
		public static final String DBUSER = "root";
		public static final String DBPASS = "6666";
	%>
	<%
		Connection conn = null;//声明数据库连接对象
		PreparedStatement pstmt = null;//声明数据库操作
		ResultSet rs = null;//声明数据库结果集
		boolean flag = false;//定义标志位
		String name = null;//接收用户的真实姓名
	%>
	<%
		//JDBC操作会抛出异常，使用try.. catch处理
		try{
			Class.forName(DBDRIVER);//加载驱动程序
			conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);//取得数据库连接
			//编写要使用的sql语句，验证用户id和密码，如果正确，取出真实姓名
			String sql = "SELECT name FROM user WHERE userid = ? AND password = ?";
			pstmt = conn.prepareStatement(sql);//实例化数据库操作对象
			pstmt.setString(1, request.getParameter("id"));//设置查询所需要的内容'
			pstmt.setString(2, request.getParameter("password"));//同上
			rs = pstmt.executeQuery();//执行查询
			if(rs.next()){
				name = rs.getString(1);//取出真实姓名
				flag = true;//修改标志位，如果为true表示登录成功
			}
		}catch(Exception e){
			System.out.print(e);
		}finally{
			try{
				rs.close();
				pstmt.close();
				conn.close();
			}catch(Exception e){
				
			}
		}
	%>
	<%
		if(flag){
	%>
			<jsp:forward page = "login_success.jsp">
				<jsp:param name = "uname" value = "<%= name %>"/>
			</jsp:forward>
	<%
		}else{
	%>
	
			<jsp:forward page = "login_failure.html"/>
	<%
		}
	%>
</body>
</html>