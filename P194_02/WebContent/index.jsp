<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.util.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>���ü���ʹ�������˻������¼</title>
</head>
<%
// ����ver1.0
if (request.getAttribute("login") != null){
	String login = (String) request.getAttribute("login");
	if(login.equals("true")){
		response.sendRedirect("show.html");
	}
}
%>
<body>
<div align="center">
<table width="335" height="225">
	<tr>
		<td>
			<form name="form1" method="post" action="show.htm">
			<input type="submit" name="Submit" value="��¼">
		</td>
	</tr>
</table>
</div>
</body>
</html>