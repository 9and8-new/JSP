<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    
<%
	/* 
		request 내장객체 : 요청정보값
		요청이 있으면 서버에서는 request라는 이름으로 보관함.
		미리만들어져서 tomcat내부에서 보관, 사용자의 요청이 담겨있음.
		클라이언트(브라우저) → 서버(JSP) 로 들어온 HTTP 요청 정보를 담고 있음
	*/

	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String bgColor = request.getParameter("bgcolor");
	System.out.printf("%s %s %s \n",username, password, bgColor);
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style = "background-color : <%=bgColor%>">

	<h1>학생컴퓨터 Process File</h1>
	
	username : <%=username %><br/>
	password : <%=password %><br/>
	bgcolor : <%=bgColor %><br/>


</body>
</html>