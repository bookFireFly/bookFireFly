<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% System.out.println("getNews.jsp"); %>
<jsp:useBean id="conn" class="com.ConnDB" scope="page"></jsp:useBean>
<ul>
<%
ResultSet rs = conn.executeQuery("SELECT content,title FROM tb_news ORDER BY addTime DESC");
if(rs.next()){
	do{
		out.print("<li title='"+rs.getString(1)+"'>"+rs.getString(2)+"</li>");
	}while(rs.next());
}else{
	out.print("<li>暂无公告信息！</li>");
}
%>

</ul>