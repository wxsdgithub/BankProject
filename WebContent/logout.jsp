<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body style="background: url(images/login.jpeg);"style="height: 50% " style="width: 50%" >
<center>
<br><br><br><br><br>
<h1> 注销成功！3秒后跳转登录界面</h1>
<%
	session.invalidate();
	response.setHeader("refresh", "3;URL=login.jsp");
%>
<h1>如未跳转请点击：<a href="login.jsp">登录</a> </h1>
</center>
</body>
</html>