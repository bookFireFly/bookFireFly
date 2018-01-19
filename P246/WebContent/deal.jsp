<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ taglib uri="/stringDeal" prefix="fly"%>
    <% request.setCharacterEncoding("GB18030"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>显示结果</title>
</head>
<body>
内容为：<br>
${fly:shiftEnter(param.content)}
</body>
</html>