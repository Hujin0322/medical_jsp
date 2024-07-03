<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String chk = null;
	String cookName = "";
	Cookie[] cookies = request.getCookies();
	if (cookies != null){
		for(Cookie cookie:cookies){
			if(cookie.getName().equals("remember")){
				chk = "checked";
				cookName = cookie.getValue();
				System.out.println("cookName: "+cookName);
			}
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>쿠키</title>
	</head>
	<body>
	<!-- 쿠키  -->
	<!-- co.jsp							doco.jsp
		이름, 국어, 영어, 수학, 체크: 이름 저장-> 이름, 국어, 영어, 수학, 합계, 평균 입력창 이동
		체크박스, 전송버튼					입력창 버튼 클릭 시 이동
		이름은 자동으로 입력되도록 하시오.
	 -->
	 <h2>성적 입력</h2>
	 	<form action="doco.jsp" method="post">
	 		<label>이름</label>
	 		<input type="text" name="id" value=<%=cookName %>><br>
	 		<label>국어</label>
	 		<input type="text" name="kor"><br>
	 		<label>영어</label>
	 		<input type="text" name="eng"><br>
	 		<label>수학</label>
	 		<input type="text" name="math"><br>
	 		<input type="checkbox" name="remember" id="remember" value="remember" <%= chk %>>
	 		<label for="remember">아이디 저장</label>
	 		<br>
	 		<input type="submit" value="로그인">
	 	</form>
	</body>
</html>