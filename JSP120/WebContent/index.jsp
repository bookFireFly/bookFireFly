<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>使用request对象的相关方法获取客户端信息</title>
</head>
<body>
<br>客户提交信息的方式：<%=request.getMethod() %>
<br>使用的协议：<%=request.getProtocol() %>
<br>获取发出请求字符串的客户端地址：<%=request.getRequestURI() %>
<br>获取发出请求字符串的客户端地址：<%=request.getRequestURL() %>
<br>获取提交数据的客户端IP地址：<%=request.getRemoteAddr() %>
<br>获取服务器端口号：<%=request.getServerPort() %>
<br>获取服务器的名称：<%=request.getServerName() %>
<br>获取客户端的主机名：<%=request.getRemoteHost() %>
<br>获取客户端所请求的脚本文件的文件路径:<%=request.getServletPath() %>
<br>获得Http协议定义的文件头信息Host的值:<%=request.getHeader("host") %>
<br>获得Http协议定义的文件头信息User-Agent的值:<%=request.getHeader("user-agent") %>
<br>获得Http协议定义的文件头信息accept-language的值:<%=request.getHeader("accept-language") %>
<br>获得请求文件的绝对路径:<%=request.getRealPath("index.jsp") %>
<%
java.util.Locale locale = request.getLocale();
String str="";
if (locale.equals(java.util.Locale.US)){
	str = " Hello,welcome to access our company's web!";
}
if (locale.equals(java.util.Locale.CHINA)){
	str = "您好,欢迎访问我们公司网站!";
}
%>
<%="<br>"+ str +"<br><b>" + locale + "</b>"%>
</body>
</body>
</html>