<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>session 对象的应用</title>
</head>
<body>
<form action="session.jsp" name="form1" method="post">
<div align="center">
	<table width="23%" border="0">
		<tr>
			<td width="36%"><div align="center">您的名字是:</div></td>
			<td width="64%">
				<label>
				<div align="center">
					<input type="text" name="name">
				</div>
				</label>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<label>
				<div align="center">
					<input type="submit" name="Submit" value="提交">
				</div>
				</label>
			</td>
		</tr>
	</table>
</div>
</form>
<%
out.println("3.14");
out.println("换行?&lt;pre&gt;");
%>
</body>
</html>