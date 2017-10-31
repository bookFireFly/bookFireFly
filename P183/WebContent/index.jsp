<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>使用监听查看在线用户</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function checkEmpty(form){
	for(i=0;i<form.length;i++){
		if(form.element[i].value==""){
			alert("表单信息不能为空");
			return false;
		}
		
	}
}
</script>
</head>
<body>
<div align="center">
	<table width="506" height="170" border="0" cellpadding="0" cellspacing="0" background="image/background1.jpg">
		<tr>
			<td align="center">
				<form name="form" method="post" action="showUser.jsp" onsubmit="return checkEmpty(form)">
					<input type="text" name="user"><br><br>
					<input type="submit" name="submit" value="登录">
				</form>
			</td>
		</tr>
	</table>
</div>


</body>
</html>