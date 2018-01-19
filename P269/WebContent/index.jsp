<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>根据是否登录显示不同的内容</title>
</head>
<body>
<c:if test="${empty param.username }" var="result">
<form name="form1" method="post" action="">
	用户名：
      <input name="username" type="text" id="username">
    <br>
    <br>
    <input type="submit" name="Submit" value="登录">
</form>
</c:if>
<c:if test="${!result }">
[${param.username }]欢迎访问我公司网站！
</c:if>
<c:choose>
<c:when test="${empty param.username1 }">
<form name="form2" method="post" action="">
	用户名：
      <input name="username1" type="text" id="username1">
    <br>
    <br>
    <input type="submit" name="Submit" value="登录">
</form>
</c:when>
<c:otherwise>
[${param.username1 }]欢迎访问我公司网站！
</c:otherwise>
</c:choose>
<br>
<c:set var="hours">
	<%= new Date().getHours() %>
</c:set>
<c:set var="minutes">
	<%= new Date().getMinutes() %>
</c:set>
<c:choose>
<c:when test="${hours>=0 &&hours<6 }">早上好!</c:when>
<c:when test="${hours>6 &&hours<12 }">上午好!</c:when>
<c:when test="${hours>12 &&hours<18 }">下午好!</c:when>
<c:when test="${hours>18 &&hours<24 }">晚上好!</c:when>
</c:choose>
现在时间是: ${hours }:${minutes }
<br>
<%Random rnd=new Random(); %>
<c:set var="luck">
<%= rnd.nextInt(10) %>
</c:set>
<c:out value="${luck }"></c:out>
<c:choose>
<c:when test="${luck==6 }">恭喜你,中了一等奖!</c:when>
<c:when test="${luck==7 }">恭喜你,中了二等奖!</c:when>
<c:when test="${luck==8 }">恭喜你,中了三等奖!</c:when>
<c:otherwise>谢谢参与!</c:otherwise>
</c:choose>
</body>
</html>