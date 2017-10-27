<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>XX新闻发布系统</title>
</head>
<body>
<form action="release.jsp" method="post">
<table align="center" width="500" height="300" border="1">
	<th align="center" colspan="2" height="50">新闻发布</th>	
	<tr>
		<td align="right">标题:</td>
		<td>
			<input name="title" type="text" size="30">
		</td>
	</tr>
	<tr>
		<td align="right">内容:</td>
		<td>
			<textarea name="content" cols="40" rows="8"></textarea>
		</td>
	</tr>
	<tr>
		<td align="center" colspan="2">
			<input type="submit" value="发布">
		</td>
	</tr>
</table>
</form>
</body>
</html>