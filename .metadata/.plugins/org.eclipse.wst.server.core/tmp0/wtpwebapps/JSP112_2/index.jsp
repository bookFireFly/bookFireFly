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
<title>����5�Ľ׳�</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<body>
	����5�Ľ׳˲���JSPҳ���������
	<br>
	<%
		String str = "";
		int n = 5;
		long result = 1;
		if (n<0 || n>17){
			str = "n��ȡֵ��Χ��0��17������17�ᳬ��long���ͷ�Χ";
		}else if (n==0){
			str = "0�Ľ׳˵���1";
		}else{
			for (int i=n;i>0;i--){
				result *= i;
			}
			str = n + "�Ľ׳˵��ڣ�" + result;
		}
	%>
	<%= str %>
</body>
</html>