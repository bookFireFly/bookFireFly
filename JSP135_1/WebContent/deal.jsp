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
String user = request.getParameter("user");
String pwd = request.getParameter("pwd");
if ("mr".equals(user) && "mrsoft".equals(pwd)){
	out.print("<script type='text/javascript'>alert('登录成功!');window.location.href='index.jsp'</script>");
}else{
	response.sendRedirect("error.jsp");
}
%>
</body>
</html>