<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<style type="text/css">
	#container{
		width:450px;
		border:solid 1px;
		padding:20px;
	}
	#title{
		font-size:16px;
		font-weight:bold;
		color:#3399FF;
	}
	#content{
		font-size:12px;
		text-align:left;
	}
</style>
</head>
<body>
<jsp:useBean id="news" class="com.fly.bean.News"></jsp:useBean>
<jsp:useBean id="encoding" class="com.fly.bean.CharactorEncoding"></jsp:useBean>
<jsp:setProperty property="*" name="news"/>
</body>
<div align="center">
	<div id="container">
	<div id="title">
		<%=encoding.toString(news.getTitle()) %>
	</div>
	<hr>
	<div id="content">
	<%=encoding.toString(news.getContent()) %>
	</div>
	</div>
</div>
</html>