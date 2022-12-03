<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.net.URLEncoder" import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	// 선언문 
	// dIncludeFirst_jsp.java 클래스의 맴버(변수/매소드)로 선언된다.
	String name = "Doo 이잉이";
%>
<%-- 
	Directive include의 경우는
	1. 파일 붙이기 -> 2. java 로 변경 -> 컴파일 -> 4. 실행
	이거 때문에 host(붙이는 놈)에 정의된 변수/매소드를 guest (붙임 당하는 놈)
	공유할 수 있다. 
	<%@include file="dIncludeSecond.jsp" %> // 에러가 아닙니다.
--%>
<%-- 
	Action Tag 방식의 경우는
	(호스트) 1. java 로 변환 -> 2. 컴파일 -> 3. 실행
	(게스트) 4. 게스트 java변환 -> 5. 게스트 실행 -> 6. 호스트/게스트 합치기
	이 경우는 host 의 변수/메소드 등 공유자원을 사용하지 못하고
	독립적으로 동작한다.
	<jsp:include page="dIncludeSecond.jsp"/> // 그러서 얜 에러
--%>

<jsp:include page="dIncludeSecond.jsp">
	<jsp:param name="userName" value="<%=URLEncoder.encode(name)%>"/>
	<jsp:param name="callingDate" value="<%=new Date().toString()%>"/>
</jsp:include>

</body>
</html>