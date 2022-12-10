<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- http://localhost:9090/request01.jsp
		 ? name=%EB%91%90&id=doo&password=123 --%>
	<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	// 1. 삼항연산자 변수 자체의 값을 "" 이거나 id 로 치환(무조건 String 객체화)
	//id = id == null ? "" : id;
	
	// 2. 
	// 거짓 && 참 = A 거짓 시 B 체크 안함
	// 거짓 & 참 = A 거짓 시 B 체크 함
	// 여기를 고쳐서 id 가 null 이라도 오류 안나게 해

	// ".(참조 연산자)" 사용 시 NoPointException 주의
	if(id != null && id.equals("doo")){ //아이디가 doo 이면 출력
		out.print("<h1> Welcome " + id + "</h1><br/><br/>");
	}
	
	%>

	name : <%=name%><br/> 
	id : <% out.print(id); %><br/> 
	password : <% out.print(password); %>

</body>
</html>