<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="Ch02.ProfileDto" %>

    
<%
	/* 
		request 내장객체 : 요청정보값
		요청이 있으면 서버에서는 request라는 이름으로 보관함.
		미리만들어져서 tomcat내부에서 보관, 사용자의 요청이 담겨있음.
		클라이언트(브라우저) → 서버(JSP) 로 들어온 HTTP 요청 정보를 담고 있음
	*/
	/* 문자셋 설정 | request내장객체에서 설정*/
	request.setCharacterEncoding("UTF-8"); // 요청사항 받았을때,들어올때 데이터
	response.setContentType("text/html; charset=UTF-8");
	
	String username = request.getParameter("username");
	String age = request.getParameter("age");
	String addr = request.getParameter("addr");
	ProfileDto dto = new ProfileDto(username,age,addr);
	System.out.printf("%s %s %s \n",username, age, addr);
	System.out.println("dto : " + dto);
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>학생컴퓨터 Process File</h1>
	ProfileDto : <%=dto %><br/>



</body>
</html>