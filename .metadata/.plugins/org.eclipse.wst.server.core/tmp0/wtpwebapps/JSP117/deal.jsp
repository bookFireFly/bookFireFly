<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>结果页</title>
</head>
<body>
<%
String message = request.getAttribute("result").toString();
%>
<%= message %>
</body>
</html>