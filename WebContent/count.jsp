<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.math.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%//定义全局变量
	BigInteger count = null;
%>
<%!
	public BigInteger load(File file){//读取计数文件
		BigInteger count = null;//接收读取的数据
		try{//由于代码中存在异常
			if(file.exists()){//如果文件存在，则读取
				Scanner scan = null;//定义scanner对象
				scan = new Scanner(new FileInputStream(file));//从文件中读取
				if(scan.hasNext()){//存在内容
					count = new BigInteger(scan.next());//将内容放到BigInteger类中
				}
				scan.close();//关闭输入流
			}else{//文件不存在则创建新的
				count = new BigInteger("0");
				save(file,count);//调用save()方法，保存新的文件
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return count;//返回读取后的数据
	}

	public void save(File file, BigInteger count){//保存计数文件
		try{
			PrintStream ps = null;//定义输出流对象
			ps = new PrintStream(new FileOutputStream(file));//打印流对象
			ps.println(count);//保存数据
			ps.close();//关闭输出流
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>

<%
	String fileName = this.getServletContext().getRealPath("/") + "count.txt";//文件路径
	File file = new File(fileName);//定义 File类对象
	if(session.isNew()){//如果是新的session表示允许进行增加的操作
		synchronized(this){//必须进行同步操作
			count = load(file);
			count = count.add(new BigInteger("1"));//自增操作
			save(file, count);//保存修改后的数据
		}
	}
%>
<h2>您是第<%= count == null ? 0: count%>位访客</h2>
</body>
</html>