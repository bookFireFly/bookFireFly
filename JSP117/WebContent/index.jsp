<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>setAttribute()����</title>
</head>
<body>
<%
try{
	int money=100;
	int number=0;	
	request.setAttribute("result",money/number);
}catch(Exception e){
	request.setAttribute("result","QAQ,ҳ���������!");
}	
%>
<jsp:forward page="deal.jsp"/>
</body>
</html>