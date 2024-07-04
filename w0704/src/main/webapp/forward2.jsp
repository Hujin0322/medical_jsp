<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>forward</title>
	</head>
	<body>
		<h2>회원정보</h2>
	<table>
		<tr>
			<th>제목</th>
			<th>내용</th>
		</tr>
		<tr>
			<td>아이디</td>
			<td>${param.id }</td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td>${param.pw }</td>
		</tr>
		<%--
		<tr>
			<td>이름</td>
			<td>${param.name}</td>
		</tr>
		<tr>
			<td>성별</td>
			<td>${param.gender}</td>
		</tr>
		<tr>
			<td>취미</td>
			<td>${paramValues.hobby[0]}</td>
		</tr>
		<tr>
			<td>취미</td>
			<td>${paramValues.hobby[1]}</td>
		</tr>
		 --%>
	</table>
	</body>
</html>