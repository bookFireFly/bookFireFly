<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<base href="<%=basePath%>">
<title>输出字符“*”组成的金字塔</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<body>
	在JSP页面中输出字符“*”组成的金字塔。
	<br>
	<%
	String str = "";
	for (int i=0;i<15;i++){
		for (int j=15;j>i;j--){
			str += "&nbsp;";
		}
		for (int j=0;j<i;j++){
			str += "*&nbsp;";
		}
		str += "<br>";
	}
	%>
	<%= str %>
</body>
</html>