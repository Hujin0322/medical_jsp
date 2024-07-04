<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>로그인 체크</title>
		<script>
		<% session.invalidate(); %> //session.invalidate(): session 모두 제거
		<%-- session.removeAttribute("sessionId"); --%> //sessionId 1개만 제거
		alert("로그아웃이 되었습니다.");
		location.href = "index.jsp";
		
		</script>
	</head>
	<body>
	<%--
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		if(id.equals("aaa") && pw.equals("1111")){
			response.sendRedirect("index.jsp");	
		}else{
			response.sendRedirect("login.jsp");
		}
	--%>

	</body>
</html>