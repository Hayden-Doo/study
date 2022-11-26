<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
	// 스크립틀릿
	// -- 자바 주석문
	/*
		자바 여러불 주석
	*/
	String name = "Doo";
	System.out.println(name + "-서버 호출");
	out.println(name + "-web 호출");
	
	out.println(age + "살");

%>
<br/>
<%!
	//-- jsp 선언문 
	String age = "10";

%>
<br/>
<%=	age %> 살입니다.

<!-- <%= age %>  == <% out.println(age); %> -->

</body>
</html>