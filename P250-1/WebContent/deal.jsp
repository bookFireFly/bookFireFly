<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("GB18030");
%>
${empty param.username?"用户名为空":param.username }<br>
${empty param.pwd?"密码为空":param.pwd }<br>
<a href="index.jsp">返回</a>
</body>
</html>