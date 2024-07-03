<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>cook read</title>
	</head>
	<body>
		<%
			Cookie[] cookies = request.getCookies(); //모든 쿠키를 가져옴.
			if(cookies != null){
				for(Cookie cookie:cookies){
					out.println("검색된 아이디: "+ cookie.getValue()+"<br>");
					
					if(cookie.getName().equals("c_id")){
						String id = cookie.getValue();
						out.println("찾는 아이디: "+id+"<br>");
						cookie.setMaxAge(0);
						response.addCookie(cookie);
					}
				}
			}
		
		%>
		<a href="cookieDel.jsp">쿠키 삭제 확인</a>
		
	</body>
</html>