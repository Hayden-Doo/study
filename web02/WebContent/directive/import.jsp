<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.util.*" %>

<% 
	// java.lang 은 기본 패키지 때분에 import가 필요없다
	String name = "Doo";
	Integer age = new Integer(10);
	
	// Date 객체 써보자
	Date now = new Date();
	
%>

현제날짜/시간 : <%= now %>
	
</body>
</html>