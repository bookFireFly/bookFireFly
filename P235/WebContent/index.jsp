<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.util.*" %>
<%--     <%@ page errorPage="errorPage.jsp" %> --%>
<%--     <%@ page isELIgnored = "true"  %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
${"eg11.8-p235" }<br>
<%
String[] arr = {"Java Web��������ģ���ȫ","Java������ȫ��ѧ�ֲ�","JSP��Ŀ����ȫ��ʵ¼"};
request.setAttribute("book", arr);
%>
<%
String[] arr1 = (String[])request.getAttribute("book");
for(int i=0;i<arr1.length;i++){
	request.setAttribute("requestI", i);

%>
	${requestI }: ${book[requestI] }<br>
	
<%
}
%>
<br>
<hr>
${"eg11.9-p236" }<br>
<%
List<String> list = new ArrayList<String>();
list.add("����");
list.add("ţ��");
list.add("����");
session.setAttribute("goodsList", list);
%>
<%
List<String> list1 = (List<String>)session.getAttribute("goodsList");
for(int i=0;i<list.size();i++){
	request.setAttribute("requestI", i);

%>
${requestI }: ${goodsList[requestI] }<br>
<%
}
%>
<br>
<hr>
${"��������236" }<br>
����+:${"1"+"1" }<br>
<%-- ����+:${"s"+"d" }<br> --%>
����/:${100 / 0 }
<%-- ����mod:${5%0 } --%>
<br>
<hr>
${"empty" }<br>
<%
request.setAttribute("user", "");
request.setAttribute("user1", null);
%>
${empty user }<br>
${empty user1 }<br>
${not empty user }<br>
<br>
<hr>
${"P239" }<br>
<%
request.setAttribute("userName", "mr");
request.setAttribute("pwd", "mrsoft");
%>
userName=${userName }<br>
pwd=${pwd }<br>
\${userName != "" and userName == "����" }:
${userName != "" and userName == "����" }<br>
\${userName == "mr" and pwd == "mrsoft" }:
${userName == "mr" and pwd == "mrsoft" }<br>
<br>
<hr>
${"P239" }<br>
\${empty cart ? "cartΪ��" : cart }:
${empty cart ? "cartΪ��" : cart }<br>
<br>
<hr>
${"P240" }<br>
${pageContext.request.serverPort }<br>
${pageContext.request.servletPath }<br>
${pageContext.response.contentType }<br>
${pageContext.out.bufferSize }<br>
${pageContext.session.maxInactiveInterval }<br>
<%-- ${pageContext.exception.message }<br> --%>
<%-- ${10 mod 0 } --%>
<%-- ${pageContext.page.class }<br> --%>
${empty pageContext.page }<br>
${pageContext.servletContext.contextPath }<br>
<br>
<hr>
${"P242" }<br>
<jsp:useBean id="user" scope="page" class="com.UserInfo"></jsp:useBean>
<jsp:setProperty name="user" property="name" value="Firefly"/>
${pageScope.user.name }<br>
<br>
<hr>
${"P244" }<br>
${header.connection }<br>
${header["user-agent"] }<br>
��Ȩ����: ${initParam.name }<br>
<%
Cookie cookie = new Cookie("user","FireflyCookie");
response.addCookie(cookie);
%>
${cookie.user.value }<br>
</body>
</html>