<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>九九乘法表</title>
</head>
<body>
<%
	String str = "";
	for (int i=1; i<=9; i++){
		for (int j = 1; j <= i; j++){
			str = str + j + "*" + i + "=" + j*i ;
			str = str + "&nbsp;";
		}
		str = str + "<br>";
	}
%>
<table width="500" height="100" border="1" cellpadding="0" cellspacing="0" 
	style="font:9pt" bordercolordark="#666666" bordercolorlight="#FFFFFF" bordercolor="#FFFFFF" >
	<tr>
		<td height="30" align="center">九九乘法表</td>
	</tr>
	<tr>
		<td style="padding:3pt">
			<%= str %>	<!-- 输出九九乘法表 -->
		</td>	
	</tr>
</table>
bordercolordark,bordercolorlight这种用法只限于IE
<%-- 显示用户信息开始 --%>
用户名：无语<br>
部&nbsp;&nbsp;门：Java Web部门 <br>
权&nbsp;&nbsp;限：系统管理员
<%-- 显示用户信息结束 --%>
<%
//单行注释
/*
多行注释
*/
%>
<!-- HTML注释 -->
<!-- <%=new Date()%> -->
</body>
</html>