<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%
Cookie cellPhoneC = new Cookie("cellPhone","ZTE");
Cookie locationC = new Cookie("location","觅辣");
cellPhoneC.setMaxAge(60*60*24);
locationC.setMaxAge(60*60*24);
response.addCookie(cellPhoneC);
response.addCookie(locationC);
%>

<%response.sendRedirect("login.jsp"); %>
</body>
</html>