<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%! 
	// 선업문
	// 클래스의 맴버를 정의합니다.(Class 전역 변수/메소드 등을 선언)
%>

<%

	// 스크립틀릿
	// _jspService() 메소드 내의 지역변수/로직 등을 선언하는 부분
	
	
	for(int i = 0; i < 10; i++){
		// out.println("i= " + i);
		
		// -- html 에 자바 코드 넣기
		%>
			<strong>i = <% out.print(i); %></strong><br/>
		<%
	}

	String greeting = "Hello woreld".toLowerCase();
	out.print(greeting);
	
	out.print(selfToLowerCase(greeting));
	out.print(selfUpperLowerCase(greeting));
	
	// 스크립틀릿은 클래스의 맴버매소드 한군데(_jspService())에서 동작하는 코드를
	// 기술하는 곳이므로, 추가적인 메소드의 정의는 "아예" 불가능 합니다.
	// 에러에러 
	// 
	// 단, 원칙적으로 메소드 내 익명 매소드 정의 가능하나 아래 매소드 이미 이름 있는 메소드임 
	// 자바 beans의 매소드는 모든 파일?에 사용 가능함
	//String selfToLowerCase(String str){
	//	return str.toLowerCase();
	//}


%>

<%!

	// 소문자로 바꿔주는 놈
	String selfToLowerCase(String str){
		return str.toLowerCase();
	}

	// 대문자로 바꿔주는 놈
	String selfUpperLowerCase(String str){
		return str.toUpperCase();
	}



%>




</body>
</html>