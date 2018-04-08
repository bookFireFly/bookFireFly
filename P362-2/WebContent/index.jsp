<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ page import="java.util.*" %>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>多集合的连接</h3>
<s:append id="a1">
	<s:param value="{'《Java Web开发实战宝典》', '《JavaWeb 自学手册》'}"/>
	<s:param value="{'《编程词典》', '《全程实录》'}"/>
	<s:param value="{'《JS  cv P开发技术大全》', '《Java从入门到精通》'}"/>
</s:append>

<s:iterator value="#a1" status="status">
	<!-- 判断迭代的元素是否是最后一个，如果不是，则添加逗号，如果是，则添加句号 -->
	<s:property/><s:if test="!#status.last">，</s:if><s:else>，都是学习Javaweb的工具书。</s:else>
</s:iterator>
        <s:append id="books">
        <s:param value="{'C语言程序设计','数据结构与算法','数据库系统概论'}"></s:param>
        <s:param value="{'Java语言程序设计','计算机组成原理','操作系统教程'}"></s:param>
        </s:append>

        <table border="1" cellspacing="0" >
        <s:iterator value="#books" status="st">
        <tr>
            <td> <s:property value="#st.count"/>
            <td> <s:property/>
        </tr>
        </s:iterator>
<br>
<s:property value=" {'kkda'} "/>
        </table>
</body>
</html>