<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<form action="UploadServlet" method = "post" enctype = "multipart/form-data">
	选择文件<input type="file" name="file1" id="file1">
	 <input type="submit" name="upload" value="上传" />
</form>
</body>
</html>