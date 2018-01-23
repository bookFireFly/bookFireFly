<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--     <%@ page import="java.util.*" %> --%>
    <% System.out.println("index.jsp"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>实时显示新闻信息</title>
<script language="javascript" src="JS/AjaxRequest.js"></script>
<script type="text/javascript">
/******************错误处理的方法*******************************/
function onerror(){
	alert("您的操作有误！");
}
/******************实例化Ajax对象的方法*******************************/
function getNews(){
	var loader=new net.AjaxRequest("getNews.jsp?nocache="+new Date().getTime(),deal_getNews,onerror,"GET");
}
/************************回调函数**************************************/
function deal_getNews(){
	document.getElementById("showNews").innerHTML=this.req.responseText;
}
window.onload=function(){
	getNews();
	window.setInterval("getNews()",600000);
}
</script>
</head>
<body style="font-size:29pt;">
<div id="showNews"></div>
</body>
</html>