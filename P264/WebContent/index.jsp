<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>应用&lt;c:import&gt;标签导入网站Banner</title>
</head>
<body style="margin:0px;">
<c:set var="typeName" value="流行金曲 | 经典老歌 | 热舞DJ | 欧美金曲 | 少儿歌曲 | 轻音乐 | 最新上榜"></c:set>
<c:import url="navigation.jsp" charEncoding="UTF-8">
	<c:param name="typeList" value="${typeName }"></c:param>
</c:import>
<br>
应用&lt;c:url&gt;标签生成带参数的URL地址<br>
<c:url var="path" value="register.jsp" scope="page">
	<c:param name="user" value="mr"></c:param>
	<c:param name="email" value="fire@qq.com"></c:param>
</c:url>
<a href="${pageScope.path }">提交注册</a>
<br>
<c:redirect url="test.jsp">
<c:param name="user" value="firefly"></c:param>
</c:redirect>
</body>
</html>