<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>미성년자 확인페이지</title>
	</head>
	<body>
		<%
			String name = URLEncoder.encode(request.getParameter("name"),"utf-8");
			int age = Integer.parseInt(request.getParameter("age"));
			
			if(age>=18){
				response.sendRedirect("pass.jsp?name="+name+"&age="+age);
			}else{
				response.sendRedirect("nopass.jsp?name="+name+"&age="+age);
			}
		
		%>
	</body>
</html>