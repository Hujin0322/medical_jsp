<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>request</title>
	</head>
	<body>
		<%
			out.println("컨텍스트 패스: "+ request.getContextPath()+"<br>");
			out.println("세션 정보: "+ request.getSession()+"<br>");
			out.println("url: "+ request.getRequestURL()+"<br>");
			out.println("uri: "+ request.getRequestURI()+"<br>");
			out.println("ip: "+ request.getRemoteAddr()+"<br>");
		%>
		
	</body>
</html>