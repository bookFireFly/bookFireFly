<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>恭喜您，注册成功！</h3>
 <s:property value="name"/>
 <br>
<ul>
	<li>用户名: <s:property value="name"/></li>
	<li>密码: <s:property value="password"/></li>
	<li>性别: <s:if test="sex==0">女</s:if><s:else>男</s:else></li>
	<li>省份: <s:property value="province"/></li>
	<li>爱好: <s:property value="hobby"/></li>
	<li>描述: <s:property value="description"/></li>
</ul>
</body>
</html>