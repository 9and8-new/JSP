<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
	선언문(서블릿으로 변환되는 자바파일의 속성/기능을 추가
 -->
<%! // 속성이나 멤버함수 멤버변수 지정할때 사용
	String name = "Hong Gil Dong"; 
	public String testFunc(){
		System.out.println("선언문 함수 테스트!");
		return "name : " + name;
	}
%>
<!-- 
	표현식(서블릿 파일(JAVA파일) 안의 값을 FN로 전달 할때 사용
 -->
 NAME : <%=name %> <br>
 testFunc : <%=testFunc() %><br>
</body>
</html>