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
<title>输出完整时间</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<body>
在JSP页面中输出完整的时间，格式为：“年 月 日 时：分：秒”
<br>
<%
	Date date = new Date();
	String year = String.format("%tY",date);
	String month = String.format("%tm",date);
	String day = String.format("%td",date);
	String hour = String.format("%tH",date);
	String minute = String.format("%tM",date);
	String second = String.format("%tS",date);
	String dateStr = year + "年" + month +"月" + day + "日" + hour + "小时" 
			+ minute + "分" + second + "秒";
%>
现在时间是: <%= dateStr %>
</body>
</html>