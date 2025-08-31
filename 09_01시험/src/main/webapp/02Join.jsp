<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 문제 : 선언문(적절한 클래스 import 하기) -->
<%@ page import="Dtos.*, Utils.*" %>

<%
	/* 문제 : 문자셋 설정 */
	request.setCharacterEncoding("UTF-8");
	
%>

<%!
	/* 문제 : 유효성 검증함수 만들기 */
	public boolean isValid(MemberDto dto){
		//1) 각 항목 not null (message : '-' 를 입력하세요 - System.out 으로 출력후 false)
		boolean soju = true;
		if(dto.getUserid()==(null)){
			System.out.println("아이디를 입력하세요.");
			soju = false;
			}
		if(dto.getPassword()==(null)){
			System.out.println("비밀번호를 입력하세요.");
			soju = false;
			}
		if(dto.getUsername()==(null)){
			System.out.println("이름을 입력하세요.");
			soju = false;
		}
		return soju;
	}
		
	
%>    


<!-- 01 문제 : 파라미터 받기 (액션태그 jsp:useBean , jsp:setProperty 로 MemberDto 단위로 받기 -->

<!-- join.jsp로 들어오는 request를 dto단위로 저장하고 종류(property)는 전부다 -->
<jsp:useBean id="dto" class="Dtos.MemberDto" scope="request"/>
<jsp:setProperty property="*" name="dto"/>

<%
	
	try{
		//-----------------------------
		//02 유효성 검증	
		//-----------------------------
		if(!isValid(dto)){
			//유효하지 않는경우에 -> 01Join.html 로 Forwarding
			request.getRequestDispatcher("./01Join.html").forward(request , response);
			return;
		}
		//-----------------------------
		//03 서비스 처리(회원가입->DB 저장)
		//-----------------------------
		//03-01 db연결
		DbUtils.conn();	
		//03-02 Tx 시작
		DbUtils.TxStart();
		//03-03 동일 계정유무확인
		// 중복일때 dto 중복이 아닐때 null
		if(DbUtils.selectMember(dto.getUserid()) != null){
			System.out.println("동일한 계정이 있습니다.");
			request.getRequestDispatcher("./01Join.html").forward(request , response);
			return;
		}
		
		//03-04 계정정보 저장			
		int result = DbUtils.insertMember(dto);
		if(result != 1){
			System.out.println("저장되지 않았습니다.");
			request.getRequestDispatcher("./01Join.html").forward(request , response);
			return;
		}
		//03-05 Tx 종료
		DbUtils.TxEnd();
		//03-06 연결해제
		DbUtils.disConn();
		//-----------------------------
		//04 로그인 페이지로 이동
		//-----------------------------
		//04-01 "회원가입을 완료했습니다" 를 system.out 으로 출력
		System.out.println("회원가입을 완료했습니다.");
		//04-02 Login.jsp 로 리다이렉트
		request.getRequestDispatcher("./03Login.jsp").forward(request , response);
	}
	catch(Exception e){
		//"문제 발생 ROLLBACK" system.out 출력
		System.out.println("문제가 발생했습니다.");
		//TX ROLLBACK 처리
		DbUtils.RollBack();
	}
		
%>