<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>应用&lt;c:set&gt;标签的应用</title>
</head>
<body>
<ul>
<li>定义request范围内的变量username</li>
<br>
<c:set var="username"  scope="request">fire</c:set>
<c:out value="username的值为 : ${username }">null11</c:out>
<li>设置UserInfo对象的name属性</li>
<br>
<jsp:useBean class="com.wgh.UserInfo" id="userinfo"></jsp:useBean>
<c:out value="${userInfo22.name}">kong</c:out><br>
<c:set target="${userinfo }" property="name">wghfire</c:set>
<c:out value="UserInfo的name属性值为：${userinfo.name}"></c:out>
<br>
</ul>
<br>
应用&lt;c:catch&gt;标签捕获异常信息
<c:catch var="error">
	<c:set target="userinfo" property="ffname">fireff</c:set>
</c:catch>
<c:out value="${error }"></c:out>
<br>
应用&lt;c:remove&gt;标签移除变量<br>
<c:set var="rmove" value="removefire" scope="request"></c:set>
rmove的值为：<c:out value="${rmove }"></c:out><br>
<c:remove var="rmove" scope="request"/>
rmove的值为：<c:out value="${rmove }" default="kong"></c:out>
</body>
</html>