<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>page�����������Ӧ��</title>
</head>
<body>
<%! Object object; %>
<ul>
<li>getClass()�����ķ���ֵ:<%=page.getClass() %></li>
<li>hashCode()�����ķ���ֵ:<%=page.hashCode() %></li>
<li>toString()�����ķ���ֵ:<%=page.toString() %></li>
<li>��Object����Ƚϵķ���ֵ:<%=page.equals(object) %></li>
<li>��this����Ƚϵķ���ֵ:<%=page.equals(this ) %></li>
</ul>
</body>
</html>