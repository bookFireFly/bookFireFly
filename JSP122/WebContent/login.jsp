<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>用户登录</title>
</head>
<body>
<form action="" name="form1" method="post">
用户名:<input name="user" type="text" id="name" style="width:120px" ><br>
密&nbsp;&nbsp;码:<input name="pwd" type="password" id="pwd" style="width:120px">
<br><br>
<input name="submit" type="submit" value="提交">
</form>
<%
Cookie myCookies[] = request.getCookies();
for (int i=0;i<myCookies.length;i++){
	out.print("参数名:"+myCookies[i].getName()+"<br>");
	out.print("参数值:"+myCookies[i].getValue()+"<br>");
}
String cellPhone = request.getParameter("cellPhone");
out.print("cellPhone:"+cellPhone);
%>
<%
int intCount = 0;
intCount++;
out.print("<br>intCount:"+intCount);
%>
<%
response.setHeader("Cache-Control", "no-store");
response.setDateHeader("Expires",0);
%>
<%
// response.setHeader("refresh","3;URL=next.jsp");
response.setHeader("refresh","3");
%>
<%
response.setBufferSize(32);
%>
</body>
</html>