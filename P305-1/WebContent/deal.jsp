<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.*" %>
<%
String datastyle = "yyyy-MM-dd HH:mm:ss SSS";
SimpleDateFormat format = new SimpleDateFormat(datastyle);
java.util.Date nowtime = new java.util.Date();
String strnowtime = format.format(nowtime);
out.println(strnowtime);
%>