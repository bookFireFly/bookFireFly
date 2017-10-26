<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>填写留言</title>
<script type="text/javascript">
function check(form){
	for (var i=0;i<form.length;i++){
		if (form.elements[i].value==""){
			alert("很抱歉,"+form.elements[i].title+"不能为空");
			form.elements[i].focus();
			return false;
		}
	}
}
</script>
</head>
<body>
<%
if (session.getAttribute("message")!=null){
	out.print(session.getAttribute("message").toString());
}
%>
<br><hr></hr>
<form action="deal.jsp" name="form1" id="form1" method="post" onSubmit="return check(form1)">
留言人:&nbsp;&nbsp;
<input name="author" id="author" title="留言人" type="text" size="30" ><br>
留言内容:&nbsp;
<textarea cols="80" rows="10" name="content" id="content" title="留言内容"></textarea><br>
<input name="Submit" type="submit" id="Submit" value="提交" >
&nbsp;&nbsp;
<input name="Reset" type="reset" value="重置">
</form>
<br><hr></hr>
<%
if (application.getAttribute("message")!=null){
	String massage = application.getAttribute("message").toString();
	out.print(massage);
}
%>
</body>
</html>