<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/* 문자셋 설정 | request내장객체에서 설정*/
	request.setCharacterEncoding("UTF-8"); // 요청사항 받았을때,들어올때 데이터
	response.setContentType("text/html; charset=UTF-8");
%>

<jsp:useBean id="dto" class="Ch02.ProfileDto" scope="request" />
<jsp:setProperty name="dto" property="*"  /> <!-- 이름은 Bean이랑 같음 *을쓰면  파라미터로 넘어오는 데이터를 다 넣어줌 -->
<%
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