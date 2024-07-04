<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>로그인</title>
	</head>
	<body>
	 <h2>로그인</h2>
<table>
	<tr>
		<td>아이디</td>
		<td><%= request.getParameter("id") %></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td>${param.id}</td>
	</tr>
	<tr>
		<td>패스워드</td>
		<td>${param.pw}</td>
	</tr>
	<tr>
		<td>remember</td>
		<td>${paramValues.remember}</td>
	</tr>
</table>
	</body>
</html>