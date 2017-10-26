<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>错误提示页</title>
</head>
<body>
错误提示页:<%=exception.getMessage() %><br>
<%=exception.getLocalizedMessage() %><br>
<%=exception.toString() %><br>
<%=exception.fillInStackTrace() %><br>
</body>
</html>