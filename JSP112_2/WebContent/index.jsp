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
<title>计算5的阶乘</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<body>
	计算5的阶乘并在JSP页面中输出。
	<br>
	<%
		String str = "";
		int n = 5;
		long result = 1;
		if (n<0 || n>17){
			str = "n的取值范围是0至17，大于17会超出long类型范围";
		}else if (n==0){
			str = "0的阶乘等于1";
		}else{
			for (int i=n;i>0;i--){
				result *= i;
			}
			str = n + "的阶乘等于：" + result;
		}
	%>
	<%= str %>
</body>
</html>