<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>使用request对象获取请求参数值</title>
</head>
<body>
<!-- <a href="deal.jsp?id=1&user=">处理页</a> -->
<jsp:forward page="deal.jsp">
<jsp:param value="1" name="id"/>
</jsp:forward>
</body>
</html>