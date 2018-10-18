<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
		//数据库连接地址
		public static final String DBURL = "jdbc:mysql://localhost:3306/mldn";
		public static final String DBUSER = "root";//数据库连接用户名
		public static final String DBPASS = "6666";//数据库连接密码
	%>
	<%
		Connection conn = null;//声明数据库连接对象
		PreparedStatement pstmt = null;//声明数据库操作
		ResultSet rs = null;//声明数据库结果集
	%>
	<%
		try{//数据库操作中会出现异常，所以要使用try...catch处理
		Class.forName(DBDRIVER);//数据库驱动程序加载
		conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);//取得数据库连接
		String sql = "SELECT empno, ename, job, sal, hiredate FROM emp";
		pstmt = conn.prepareStatement(sql);//实例化preparedStatement对象
		rs = pstmt.executeQuery();//执行查询操作
	%>
	<center>	<!-- 居中显示 -->
		<table border="1" width = "80%">
			<tr>
				<td>雇员编号</td>
				<td>雇员姓名</td>
				<td>雇员工作</td>
				<td>雇员工资</td>
				<td>雇佣日期</td>

			</tr>
			<%
				while(rs.next()){//循环emp表中的行记录
					int empno = rs.getInt(1);
					String ename = rs.getString(2);
					String job = rs.getString(3);
					float sal = rs.getFloat(4);
					java.util.Date date = rs.getDate(5);
			%>
				<tr><!-- 循环输出雇员的信息 -->
					<td><%= empno %></td>
					<td><%= ename %>></td>
					<td><%= job %></td>
					<td><%= sal %></td>
					<td><%= date %></td>
				</tr>
			<%
				}
			 %>
		</table>
	</center>
	<%
	}catch(Exception e){
		System.out.println(e);
	}finally{
		rs.close();
		pstmt.close();
		conn.close();
	}
	%>
</body>
</html>