<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>ʵʱ��ʾ������Ϣ</title>
<script language="javascript" src="JS/AjaxRequest.js"></script>
<script type="text/javascript">
/******************������ķ���*******************************/
function onerror(){
	alert("���Ĳ�������");
}
/******************ʵ����Ajax����ķ���*******************************/
function getInfo(){
	var loader = new net.AjaxRequest("getInfo.jsp?nocache="+new Date().getTime(),deal_getInfo,onerror,"GET");
}
/************************�ص�����**************************************/
function deal_getInfo(){
	document.getElementById("showInfo").innerHTML=this.req.responseText;
}
window.onload=function(){
	getInfo();
	window.setInterval("getInfo()",600000);
}
</script>
</head>
<body>
<div style="border: 1px solid;height:50px;width:200px;padding:5px;">
	<marquee direction="up" scrollamount="3">
		<div id="showInfo"></div>
	</marquee>
</div>
</body>
</html>