<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>cookie</title>
	</head>
	<body>
		<%
			//쿠키생성
			Cookie cookie = new Cookie("c_id","aaa");
			Cookie cookie2 = new Cookie("c_id2","1111");
		
			//쿠키 시간 설정
			cookie.setMaxAge(60*10); //60초*10분 = 10분
			cookie2.setMaxAge(60*5); //60초*5분 = 5분			
			
			//로컬에 저장
			response.addCookie(cookie);
			response.addCookie(cookie2);
			
			
		%>
		<h2>쿠기가 저장되었습니다.</h2>
		<a href="cookieRead.jsp">페이지 이동</a>
	</body>
</html>