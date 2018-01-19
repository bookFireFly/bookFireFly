<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>遍历List集合</title>
</head>
<body>
<%
List<String> list = new ArrayList<String>();
list.add("简单是可靠的先决条件");
list.add("兴趣是最好的老师");
list.add("知识上的投资总能得到最好的回报");
request.setAttribute("list",list);
%>
<b>遍历List集合的全部元素：</b><br>
<c:forEach items="${requestScope.list }" var="keyword" varStatus="id">
	${id.index }&nbsp;${keyword }<br>
</c:forEach>
<b>遍历List集合中第1个元素以后的元素（不包括第1个元素）：</b><br>
<c:forEach items="${requestScope.list}" var="keyword" varStatus="id" begin="1">
	${id.index }&nbsp;${keyword}<br>
</c:forEach>
10以内的全部奇数:
<c:forEach var="i" begin="1" end="10" step="2">
${i }&nbsp;&nbsp;
</c:forEach>
<br>
<c:set var="sourceStr" value="Java Web：程序开发范例宝典、典型模块大全；Java：实例完全自学手册、典型模块大全"></c:set>
<b>原字符串:</b><c:out value="${sourceStr }"></c:out><br>
<c:forTokens items="${sourceStr }" delims="；、：" var="item">
${item }<br>
</c:forTokens>
</body>
</html>