<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if((id.equals("tiger"))&&(pw.equals("12345"))) {
			Cookie cookie = new Cookie("memberId", id);
			cookie.setMaxAge(600);//초단위
			response.addCookie(cookie);//클라이언트 pc로 쿠키 전송
			out.println(id + "님 로그인 성공!");
			
		} else {
			out.println("로그인 실패!");
		}
	
	%>
	<br><br>
	<a href="cookieCheck.jsp">쿠키 정보 확인</a>
</body>
</html>