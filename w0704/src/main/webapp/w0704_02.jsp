<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL태그</title>
<style>
		table,th,td{border:1px solid black; border-collapse: collapse;}
		th{width: 120px;}
	</style>
</head>
<body>
<% int sum=0;
for(int i=1;i<=10;i++){
	sum += i;
}

%>
<table>
		<tr>
			<th>변수</th>
			<th>값</th>
		</tr>
		<tr>
			<td>변수</td>
			<td>i</td>
		</tr>
		<tr>
			<td>총합</td>
			<td><%=sum%></td>
		</tr>
		<tr>
			<td>총합</td>
			<td>${param.sum}</td>
		</tr>
	</table>
</body>
</html>