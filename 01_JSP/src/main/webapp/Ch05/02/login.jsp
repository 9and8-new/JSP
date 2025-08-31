<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


	//01 파라미터 확인
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	//02 유효성 검사
	if(username.isEmpty()){
		request.setAttribute("username_msg", "username을 입력하세요");
		request.getRequestDispatcher("./login_form.jsp").forward(request,response);
		return; // 여러번 fowarding을 한뒤는 return을 꼭해야함.
	}
	if(password.isEmpty()){
		request.setAttribute("password_msg", "password를 입력하세요");
		request.getRequestDispatcher("./login_form.jsp").forward(request,response);
		return; // 여러번 fowarding을 한뒤는 return을 꼭해야함.
	}
	
	//03 관련 서비스 실행
	//03-01) username 과 동일한 계정이 있는지 확인 가져와야함
	if(!username.equals("admin")){
		request.setAttribute("username_msg", "해당 계정은 존재하지 않습니다.");
		request.getRequestDispatcher("./login_form.jsp").forward(request,response);
		return;
	}
	//03-02) password 의 값이 입력 한 값이랑 동일한지 확인
	if(!password.equals("1234")){
		request.setAttribute("password_msg", "패스워드가 일치하지 않습니다.");
		request.getRequestDispatcher("./login_form.jsp").forward(request,response);
		return;
	}
	//03-03) session 에 해당 계정에 작업에 필요한 속성 저장
	session.setAttribute("isAuth", true);
	session.setAttribute("role", "ROLE_ADMIN");  //!!!!!!!!! 중요
	session.setMaxInactiveInterval(30); //30초만 세션유지

	//04 뷰로 이동
	response.sendRedirect("./main.jsp");





%>