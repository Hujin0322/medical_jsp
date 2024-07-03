<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>쿠키 삭제 확인</title>
	</head>
	<body>
		<%
			Cookie[] cookies = request.getCookies();
			if(cookies != null){
				for(Cookie cookie:cookies){
					out.println("찾은 쿠키: "+cookie.getValue());
				}
			}
		%>
		
		<a href="cookieSave.jsp">쿠키 저장하기</a>
	</body>
</html>