<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="com.lyp.bean.Email" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<%
		String emailAdd = request.getParameter("mailAdd");
		Email email = new Email(emailAdd);
		if (email.isEmail()){
			out.print(emailAdd + "<br>是一个标准的邮箱地址！<br>");
		}else{
			out.print(emailAdd + " <br>不是一个标准的邮箱地址！<br>");
		}
		%>
		<a href="index.jsp">返回</a>
	</div>
</body>
</html>