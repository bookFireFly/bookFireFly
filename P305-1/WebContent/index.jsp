<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="javascript" src="JS/AjaxRequest.js"></script>
<script type="text/javascript">
function getSysTime(){
	var loader=new net.AjaxRequest("deal.jsp?nocache="+new Date().getTime(),deal,onerror,"GET");
}
function deal(){
	document.getElementById("clock").innerHTML="现在是: "+this.req.responseText;
}
function onerror(){
	alert("出错了");
}
timer = window.setInterval("getSysTime();",1000);
</script>
</head>
<body onLoad="getSysTime()" style="margin: 0px">
	<table width="901" height="128" border="0" align="center"
		cellpadding="0" cellspacing="0" background="images/bg.jpg">
    <tr>
      <td height="96">&nbsp;</td>
    </tr>
    <tr>
      <td style="padding-left:20pt;;font-size:9pt;"><div id="clock">系统时间</div></td>
    </tr>
  </table>
</body>


</html>