<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 문제 : 선언문(적절한 클래스 import 하기) -->
<%@ page import="Dtos.*, Utils.*" %>

<%
	/* 문제 : 문자셋 설정 */
	request.setCharacterEncoding("UTF-8");
	request.setContentsType("text/html; charset=UTF-8");
%>

<%!
	/* 문제 : 유효성 검증함수 만들기 */
	public boolean isValid(MemberDto dto){
		//1) 각 항목 not null (message : '-' 를 입력하세요 - System.out 으로 출력후 false)
		if(dto.getUserid().isEmpty()){
			System.out.println("아이디를 입력하시오.");
			return false;
		}
		if(dto.getPassword().isEmpty()){
			System.out.println("비밀번호를 입력하시오.");
			return false;
		}
		if(dto.getRePassword().isEmpty()){
			System.out.println("비밀번호확인을 입력하시오.");
			return false;
		}
		if(dto.getUsername().isEmpty()){
			System.out.println("이름을 입력하시오.");
			return false;
		}
		if(dto.getZipcode().isEmpty()){
			System.out.println("우편번호를 입력하시오.");
			return false;
		}
		if(dto.getAddr1().isEmpty()){
			System.out.println("기본주소를 입력하시오.");
			return false;
		}
		if(dto.getAddr2().isEmpty()){
			System.out.println("상세주소를 입력하시오.");
			return false;
		}
		if(dto.getPhone1().isEmpty()){
			System.out.println("휴대전화를 입력하시오.");
			return false;
		}
		if(dto.getPhone2().isEmpty()){
			System.out.println("휴대전화를 입력하시오.");
			return false;
		}
		if(dto.getPhone3().isEmpty()){
			System.out.println("휴대전화를 입력하시오.");
			return false;
		}
		if(dto.getTel1().isEmpty()){
			System.out.println("연락처를 입력하시오.");
			return false;
		}
		if(dto.getTel2().isEmpty()){
			System.out.println("연락처를 입력하시오.");
			return false;
		}
		if(dto.getTel3().isEmpty()){
			System.out.println("연락처를 입력하시오.");
			return false;
		}
		if(dto.getEmail().isEmpty()){
			System.out.println("이메일을 입력하시오.");
			return false;
		}
		if(dto.getYear().isEmpty()){
			System.out.println("태어난 년도를 입력하시오.");
			return false;
		}
		if(dto.getMonth().isEmpty()){
			System.out.println("태어난 월을 입력하시오.");
			return false;
		}
		if(dto.getDay().isEmpty()){
			System.out.println("태어난 일을 입력하시오.");
			return false;
		}
		
		//2) userid 길이 5자 이하(message : Userid는 5자 이상 입력하셔야 합니다.- System.out 으로 출력후 false)
		if(dto.getUserid().length()<5){
			System.out.println("아이디는 5자 이상 입력하셔야 합니다.");
			return false;
		}

		//3) 패스워드 유효성 검증(regex : ^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,20}$ )
		//- System.out 으로 출력후 false
		String regex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[\\W_]).{8,20}$";
		if(!dto.getPassword().matches(regex)){
			System.out.println("비밀번호를 소문자 대문자 특수문자 포함 8~20로 입력하세요.");
			return false;
		}
		
		
		return true;
	}	
%>    


<!--  
01 문제 : 파라미터 받기 (액션태그 jsp:useBean , jsp:setProperty 로 MemberDto 단위로 받기

<jsp:useBean />
<jsp:setProperty  />

-->

<%
	
	try{
		//-----------------------------
		//02 유효성 검증	
		//-----------------------------
		if(!isValid(dto)){
			//유효하지 않는경우에 -> 01Join.html 로 Forwarding
		}
		//-----------------------------
		//03 서비스 처리(회원가입->DB 저장)
		//-----------------------------
		//03-01 db연결
		//03-02 Tx 시작
		//03-03 동일 계정유무확인
		//03-04 계정정보 저장			
		//03-05 Tx 종료
		//03-06 연결해제
		
		//-----------------------------
		//04 로그인 페이지로 이동
		//-----------------------------
		//04-01 "회원가입을 완료했습니다" 를 system.out 으로 출력
		//04-02 Login.jsp 로 리다이렉트
		
	}
	catch(Exception e){
		//"문제 발생 ROLLBACK" system.out 출력
		//TX ROLLBACK 처리
	}
		
%>