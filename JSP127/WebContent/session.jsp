<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/type.css">
</head>
<body>
<%
String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"GB18030");
session.setAttribute("name",name);
%>
<div align="center">
<form action="result.jsp" method="post" name="form2" id="form2">
	<table width="23%" border="0">
		<tr>
			<td>����������:</td>
			<td><%=name %></td>
		</tr>
		<tr>
			<td>����ϲ��ȥ�ĵط���:</td>
			<td>
			<label>
				<input type="text" name="address">
			</label>
			</td>
		</tr>
		<tr>
		<td colspan="2">
			<label>
				<div align="center">
					<input type="submit" name="Submit" value="�ύ">
				</div>
			</label>
		</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>