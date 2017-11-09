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
	form{margin: 0px;}
	td{font-size: 12px;}
	h2{margin: 2px}
</style>
<script type="text/javascript">
function check(form){
	wtih(form){
		if(bookCount.value == ""){
			alert("请输入更新数量！");
			return false;
		}
		if(isNaN(bookCount.value)){
			alert("格式错误！");
			return false;
		}
		return true;
	}
}
</script>
</head>
<body>
<table align="center" width="500" border="1" height="170" bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">
	<tr bgcolor="white">
		<td align="center" colspan="6">
			<h2>所有图书信息</h2>
		</td>
	</tr>
	<tr align="center" bgcolor="#e1ffc1">
		<td><b>ID</b></td>
		<td><b>图书名称</b></td>
		<td><b>价格</b></td>
		<td><b>数量</b></td>
		<td><b>作者</b></td>
		<td><b>删除</b></td>
	</tr>
	<%
		List<Book> list = (List<Book>)request.getAttribute("list");
		if (list == null || list.size()<1){
			out.print("没有数据！");
		}else{
			for(Book book : list){
	%>
		<tr align="center" bgcolor="white">
			<td><%=book.getId()%></td>
			<td><%=book.getName()%></td>
			<td><%=book.getPrice()%></td>
			<td><%=book.getBookCount()%></td>
			<td><%=book.getAuthor()%></td>
			<td>
				<a href="DeleteServlet?id=<%=book.getId()%>">删除</a>
			</td>
		</tr>
	<%
			}
		}
	%>
</table>
</body>
</html>