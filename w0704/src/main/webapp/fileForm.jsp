<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일 업로드</title>
</head>
<body>
	<h2>파일업로드</h2>
	<form action="doFileForm.jsp" method="post" enctype="multipart/form-data">
	<label>아이디</label>
	<input type="text" name="id"><br>
	<label>파일업로드</label><br>
	<input type="file" name="profile"><br>
	<input type="submit" value="전송">
	
	</form>
</body>
</html>