<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册——协议</title>
<style>
td, body {
	font-size: 12px;
	padding: 5px;
}
</style>
</head>
<body>
	<table width="400" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td>请确认许可协议：</td>
		</tr>
		<tr>
			<td height="159" align="center" valign="top">
			<textarea name="agreement" cols="60" rows="10" id="agreement">
			<c:import url="agreement.txt" charEncoding="UTF-8"></c:import>
			</textarea>
			</td>
		</tr>
		<tr>
			<td align="center"><input type="submit" name="Submit"
				value="我接受以上协议"></td>
		</tr>
	</table>
	<br>
<c:set var="week">
<%= new java.util.Date().getDay() %>
</c:set>
<c:choose>
<c:when test="${week==0 || week==6 }">今天是休息日，放松一下心情吧！</c:when>
<c:when test="${week==1 }">新的一周开始了，努力学习吧！</c:when>
<c:otherwise>继续努力学习吧！</c:otherwise>
</c:choose>
<br>
<%
String arr[]={"苹果","香蕉","葡萄","芒果"};
request.setAttribute("arrFruit",arr);
%>
<c:forEach items="${requestScope.arrFruit }" var="fruit" varStatus="id">
	${id.index }&nbsp;${fruit }
</c:forEach>
</body>
</html>