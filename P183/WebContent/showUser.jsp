<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.util.*" %>
    <%@ page import="com.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>使用监听查看在线用户</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<%
UserInfoList list = UserInfoList.getInstance();
UserInfoTrace ut = new UserInfoTrace();
String name = request.getParameter("user");
ut.setUser(name);
session.setAttribute("list",ut);
list.addUserInfo(ut.getUser());
session.setMaxInactiveInterval(10000);
%>
</head>
<body>
<div align="center">
	<table width="506" height="246" border="0" cellpadding="0" cellspacing="0" background="image/background2.jpg">
	<tr>
		<td align="center"><br>
			<textarea rows="8" cols="20">
			<%
			Vector vector = list.getList();
			if (vector != null && vector.size()>0){
				for (int i=0;i<vector.size();i++){
					out.println(vector.elementAt(i));
				}
			}
			%>
			
			
			</textarea><br><br>
			<a href="loginOut.jsp">返回</a>
		</td>
	
	</tr>
	
	
	</table>

</div>

</body>
</html>