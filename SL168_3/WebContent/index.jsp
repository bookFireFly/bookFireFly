<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<script type="text/javascript">
function calc(form){
	with(form){
		if (firstNum.value == "" || secondNum.value == ""){
			alert("���������֣�");
			return false;
		}
		if (isNaN(firstNum.value) || isNaN(secondNum.value)){
			alert("���ָ�ʽ����");
			return false;
		}
		if (operator.value == "-1"){
			alert("��ѡ���������");
			return false;
		}
	}
	
}
</script>
</head>
<body>
	<form action="CalculateServlet" method="post" onsubmit="return calc(this);">
		<table align="center" border="0">
			<tr>
				<th>����Servlet������</th>
			</tr>
			<tr>
				<td>
				<input type="text" name="firstNum">
				<select name="operator">
				<option value="-1">�����</option>
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="*">*</option>
				<option value="/">/</option>
				</select>
				<input type="text" name="secondNum">
				<input type="submit" value="����">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>