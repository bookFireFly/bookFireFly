<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<% request.setCharacterEncoding("GB18030"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>获取用户注册信息</title>
<style>
td,body{
padding:5px;
font-size:12px;
}
</style>
</head>
<body>
<form name="form1" method="post" action="">
<table width="400" height="30" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#333333">
  <tr>
    <td width="76" align="center" bgcolor="#FFFFFF">用&nbsp;户&nbsp;名：</td>
    <td width="324" bgcolor="#FFFFFF">&nbsp;${param.user }</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#FFFFFF">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
    <td bgcolor="#FFFFFF">&nbsp;${param.pwd }</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#FFFFFF">E-mail：</td>
    <td bgcolor="#FFFFFF">&nbsp;${param.email }</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#FFFFFF">性&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
    <td bgcolor="#FFFFFF">&nbsp;${param.sex }</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#FFFFFF">爱 &nbsp;&nbsp;&nbsp;&nbsp;好：</td>
    <td bgcolor="#FFFFFF">&nbsp;${paramValues.affect[0]} ${paramValues.affect[1]} ${paramValues.affect[2]} ${paramValues.affect[3]}</td>
  </tr>
  <tr>
    <td align="center" bgcolor="#FFFFFF">备&nbsp;&nbsp;&nbsp;&nbsp;注：</td>
    <td bgcolor="#FFFFFF">&nbsp;${param.memo }</td>
  </tr>
  <tr>
    <td colspan="2" align="center" bgcolor="#FFFFFF"><a href="index.jsp">返回</a></td>
    </tr>
</table>
</form>
</body>
</html>