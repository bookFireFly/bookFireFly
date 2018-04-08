<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.mr.employee.Employee"%>
<%
	List list = (List) request.getAttribute("emplist");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function toServlet(id) {
		document.getElementById("id").value = id;
		document.getElementById("myform").submit();
	}
</script>
</head>
<body>
	<a href="QueryEmployee">debug....</a>
	<form action="<%=request.getContextPath()%>/QueryEmployee"
		method="post" id="myform">
		<table border="3">
			<tr>
				<td>编号</td>
				<td>名称</td>
				<td>性别</td>
				<td>职位</td>
				<td>地址</td>
				<td>备注</td>
				<td></td>
			</tr>
			<%
				if (list != null) {
					for (int i = 0; i < list.size(); i++) {
						Employee emp = (Employee) list.get(i);
			%>
			<tr>
				<td><%=emp.getId()%></td>
				<td><%=emp.getName()%></td>
				<td><%=emp.getSex()%></td>
				<td><%=emp.getBusiness()%></td>
				<td><%=emp.getAddress()%></td>
				<td><%=emp.getRemark()%></td>
				<td><input type="button" value="修改"
					onclick="toServlet('<%=emp.getId()%>')" /></td>
			</tr>
			<%
				}
				}
			%>
		</table>
		<input type="hidden" id="id" name="id" value="" />
	</form>
</body>
</html>