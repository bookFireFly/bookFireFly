<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>ʹ��request�������ط�����ȡ�ͻ�����Ϣ</title>
</head>
<body>
<br>�ͻ��ύ��Ϣ�ķ�ʽ��<%=request.getMethod() %>
<br>ʹ�õ�Э�飺<%=request.getProtocol() %>
<br>��ȡ���������ַ����Ŀͻ��˵�ַ��<%=request.getRequestURI() %>
<br>��ȡ���������ַ����Ŀͻ��˵�ַ��<%=request.getRequestURL() %>
<br>��ȡ�ύ���ݵĿͻ���IP��ַ��<%=request.getRemoteAddr() %>
<br>��ȡ�������˿ںţ�<%=request.getServerPort() %>
<br>��ȡ�����������ƣ�<%=request.getServerName() %>
<br>��ȡ�ͻ��˵���������<%=request.getRemoteHost() %>
<br>��ȡ�ͻ���������Ľű��ļ����ļ�·��:<%=request.getServletPath() %>
<br>���HttpЭ�鶨����ļ�ͷ��ϢHost��ֵ:<%=request.getHeader("host") %>
<br>���HttpЭ�鶨����ļ�ͷ��ϢUser-Agent��ֵ:<%=request.getHeader("user-agent") %>
<br>���HttpЭ�鶨����ļ�ͷ��Ϣaccept-language��ֵ:<%=request.getHeader("accept-language") %>
<br>��������ļ��ľ���·��:<%=request.getRealPath("index.jsp") %>
<%
java.util.Locale locale = request.getLocale();
String str="";
if (locale.equals(java.util.Locale.US)){
	str = " Hello,welcome to access our company's web!";
}
if (locale.equals(java.util.Locale.CHINA)){
	str = "����,��ӭ�������ǹ�˾��վ!";
}
%>
<%="<br>"+ str +"<br><b>" + locale + "</b>"%>
</body>
</body>
</html>