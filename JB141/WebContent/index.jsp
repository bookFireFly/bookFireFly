<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="produce" class="com.fly.bean.Produce"></jsp:useBean>
<div>
<ul>
	<li>
		��Ʒ����:<jsp:getProperty property="name" name="produce"/>
	</li>
	<li>
		�۸�:<jsp:getProperty property="price" name="produce"/>
	</li>
	<li>
		����:<jsp:getProperty property="count" name="produce"/>
	</li>
	<li>
		��ַ:<jsp:getProperty property="factoryAdd" name="produce"/>
	</li>
</ul>
</div>
</body>
</html>