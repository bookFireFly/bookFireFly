<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>ʹ��exception�����ȡ�쳣��Ϣ</title>
</head>
<body>
<%
request.setAttribute("price","12.5Ԫ");
float price = Float.parseFloat(request.getAttribute("price").toString());
%>
</body>
</html>