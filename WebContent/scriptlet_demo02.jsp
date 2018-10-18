<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		//定义全局常量
		public static final String INFO = "www.MLDN.cn";
	%>
	<%!
		//定义方法
		public int add(int x, int y){
			return x + y;
		}
	%>
	<%!
		//定义类
		class Person{
			private String name;
			private int age;
			//通过构造方法设置属性内容
			public Person(String name, int age){
				this.name = name;
				this.age = age;
			}
			public String toString(){
				return "name = " + this.name + ";age = " + this.age;
			}
			
		}
	
	
	%>
	
	<%
		//编写普通的scriptlet
		out.println("<h3>INFO = " + INFO + "</h3>");//输出全局常量
		out.println("<h3>3 + 5" + add(3, 5) + "</h3>");
		out.println("<h3>" + new Person("zhangsan", 30) + "</h3>");
	%>
</body>
</html>