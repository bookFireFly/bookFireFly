<%@ page language="java" contentType="text/html" pageEncoding="GB18030"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>�û�ע��</title>
		<link href="css/style.css" type="text/css">
		<style type="text/css">
			body{
				margin: 0px;font-size: 12px;
			}
			.box{
				border: 1px solid #D1DEB2; width: 150px; height: 20px;
			}
			.div1{
				background-image: url(images/bg.jpg);
				height: 600px;
				width: 803px;
				padding-left:20px;
				padding-top:220px;
				text-align:left;
			}
		</style>
		<script type="text/javascript">
	    	function reg(form){
	        	if(form.username.value == ""){
	        		alert("�û�����Ϊ�գ�");
	        		return false;
	        	}
	        	if(form.password.value == ""){
	        		alert("���벻��Ϊ�գ�");
	        		return false;
	        	}
	        	if(form.repassword.value == ""){
	        		alert("ȷ�����벻��Ϊ�գ�");
	        		return false;
	        	}
	        	if(form.password.value != form.repassword.value){
	        		alert("�����������벻һ�£�");
	        		return false;
	        	}
	        	if(form.question.value == ""){
	        		alert("�����һ����ⲻ��Ϊ�գ�");
	        		return false;
	        	}
	        	if(form.answer.value == ""){
	        		alert("�����һش𰸲���Ϊ�գ�");
	        		return false;
	        	}
	        	if(form.email.value == ""){
	        		alert("�������䲻��Ϊ�գ�");
	        		return false;
	        	}
	    	}
	    </script>
	</head>
	<body>
		<div align="center">
			<div class="div1">
				<form action="SaveServlet" method="post" onsubmit="return reg(this);">
					<table align="center" border="0" width="500">
						<tr>
							<td align="right" width="30%" size ="9pt">�û�����</td>
							<td><input type="text" name="username" class="box"></td>
						</tr>
						<tr>
							<div class="div2"><td align="right">�� �룺</td></div>
							<td><input type="password" name="password" class="box"></td>
						</tr>
						<tr>
							<td align="right">ȷ�����룺</td>
							<td><input type="password" name="repassword" class="box"></td>
						</tr>
						<tr> 
							<td align="right">�� ��</td>
							<td>
								<input type="radio" name="sex" value="��" checked="checked">��
								<input type="radio" name="sex" value="Ů">Ů
							</td>
						</tr>
						<tr>
							<td align="right">�����һ����⣺</td>
							<td><input type="text" name="question" class="box"></td>
						</tr>
						<tr>
							<td align="right">�����һش𰸣�</td>
							<td><input type="text" name="answer" class="box"></td>
						</tr>
						<tr>
							<td align="right">�� �䣺</td>
							<td><input type="text" name="email" class="box"></td>
						</tr>
						<tr>
							<td colspan="2" align="center" height="40">
								<input type="submit" value="ע ��">
								<input type="reset" value="�� ��">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</body>
</html>
