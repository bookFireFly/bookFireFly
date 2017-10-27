<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<form action="reg.jsp" method="post">
	<table width="400" align="center" height="200" border="1">
		<th aling="center" height="40" colspan="2">添加用户信息</th>
		<tr>
			<td align="right">姓名:</td>
			<td><input name="name" type="text"></td>
		</tr>
		<tr>
			<td align="right">年龄:</td>
			<td><input name="age" type="text"></td>
		</tr>
		<tr>
			<td align="right">性别:</td>
			<td><input name="sex" type="text"></td>
		</tr>
		<tr>
			<td align="right">住址:</td>
			<td><input name="addr" type="text"></td>
		</tr>
		<tr>
			<td align="center" colspan="2"><input type="submit" value="添加"></td>
		</tr>
	</table>
</form>
</body>
</html>