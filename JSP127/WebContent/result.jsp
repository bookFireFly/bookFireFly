<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>最后结果</title>
<link rel="stylesheet" type="text/css" href="css/type.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%
String name = (String)session.getAttribute("name");
String address = new String(request.getParameter("address").getBytes("ISO-8859-1"),"GB18030");
%>
<div align="center">
	<table>
		<tr>
			<td colspan="2"><div align="center"><strong>显示最后结果</strong></div></td>
		</tr>
		<tr>
			<td width="49%"><div align="left">您的名字是:</div></td>
			<td width="51%"><div align="right"><%=name %></div></td>
		</tr>
		<tr>
			<td>您最喜欢去的地方是：</td>
			<td align="right"><%=address %></td>
		</tr>
	</table>
</div>
</body>
</html>