<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>处理页</title>
</head>
<body>
<%
String id = request.getParameter("id");
String user = request.getParameter("user");
String pwd = request.getParameter("pwd");
%>
id的参数为:<%=id %><br>
user的参数为:<%=user %><br>
pwd的参数为:<%=pwd %><br>
</body>
</html>