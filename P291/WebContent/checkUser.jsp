<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%
	String[] userList={"明日科技","mr","mrsoft","wgh"};
	String user = new String(request.getParameter("user").getBytes("ISO-8859-1"),"UTF-8");
	Arrays.sort(userList);
	int result=Arrays.binarySearch(userList, user);
	if(result>-1){
		out.println("很抱歉，该用户名已经被注册！");	
	}else{
 		out.println("恭喜您，该用户名没有被注册！");
	}
	

%>