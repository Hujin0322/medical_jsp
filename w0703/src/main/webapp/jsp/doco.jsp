<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>성적 확인</title>
	<style>
		table,th,td{border:1px solid black; border-collapse: collapse;}
		th{width: 120px;}
	</style>
	</head>
	<body>
		<h2>성적 확인창</h2>
			<table>
		<tr>
			<th>제목</th>
			<th>내용</th>
		</tr>
		<tr>
			<td>이름</td>
			<td><%= request.getParameter("name") %></td>
		</tr>
		<tr>
			<td>국어</td>
			<td><%= request.getParameter("kor") %></td>
		</tr>
		<tr>
			<td>영어</td>
			<td><%= request.getParameter("eng") %></td>
		</tr>
		<tr>
			<td>수학</td>
			<td><%= request.getParameter("math") %></td>
		</tr>

	</table>
	<%
		String remember = request.getParameter("remember");
		//String[] remember = request.getParameterValues("remember");
		if (remember != null){
			Cookie rcookie = new Cookie("remember",request.getParameter("name"));
			rcookie.setMaxAge(60*60*24*30); //60초*60분*24시간*30일동안 저장.
			response.addCookie(rcookie);
		}
	
	%>
	<a href="co.jsp">성적 확인 창 이동</a>
	</body>
</html>