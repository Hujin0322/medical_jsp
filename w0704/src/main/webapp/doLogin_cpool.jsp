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
		if ("<%=id%>" == "aaa" && "<%=pw%>" =="1111" ){
			alert("로그인 되었습니다.")
			//location.href => 페이지 이동
			location.href = "index.jsp";
			<% //내부 객체: session, request, response
			 session.setAttribute("sessionId", id);
			%>
			
		}else{
			alert("아이디 or 패스워드 불일치. 재로그인 바람");
			location.href = "login.jsp";
		}
			alert("id: <%=id%>");
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