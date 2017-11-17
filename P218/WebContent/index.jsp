<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@page import="java.util.List"%>
<%@page import="com.Book"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>所有图书信息</title>
<style type="text/css">
td {
	font-size: 12px;
}

h2 {
	margin: 0px;
}
</style>
</head>
<body>
	<jsp:useBean id="findBook" class="com.FindBook"></jsp:useBean>
	<table align="center" width="450" border="1" height="180"
		bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">
		<tr bgcolor="white">
			<td align="center" colspan="5">
				<h2>所有图书信息</h2>
			</td>
		</tr>
		<tr align="center" bgcolor="#e1ffc1">
			<td><b>ID</b></td>
			<td><b>图书名称</b></td>
			<td><b>价格</b></td>
			<td><b>数量</b></td>
			<td><b>作者</b></td>
		</tr>
		<%
			List<Book> list = findBook.findAll();
			if (list == null || list.size() < 1) {
				out.print("没有数据！");
			} else {
				for (Book book : list) {
		%>

		<tr align="center" bgcolor="white">
			<td><%=book.getId()%></td>
			<td><%=book.getName()%></td>
			<td><%=book.getPrice()%></td>
			<td><%=book.getBookCount()%></td>
			<td><%=book.getAuthor()%></td>
		</tr>

		<%
			}
			}
		%>
	</table>
</body>
</html>