<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
request.setCharacterEncoding("GB18030");
String author = request.getParameter("author");
String content = request.getParameter("content");
String message = "[" +author+ "]˵:" +content+ "<br>";
if (session.getAttribute("message")!=null){
	message += session.getAttribute("message").toString();
}
session.setAttribute("message",message);
application.setAttribute("message",message);
response.sendRedirect("index.jsp");
%>