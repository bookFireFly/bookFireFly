<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>�����</title>
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
			<td colspan="2"><div align="center"><strong>��ʾ�����</strong></div></td>
		</tr>
		<tr>
			<td width="49%"><div align="left">����������:</div></td>
			<td width="51%"><div align="right"><%=name %></div></td>
		</tr>
		<tr>
			<td>����ϲ��ȥ�ĵط��ǣ�</td>
			<td align="right"><%=address %></td>
		</tr>
	</table>
</div>
</body>
</html>