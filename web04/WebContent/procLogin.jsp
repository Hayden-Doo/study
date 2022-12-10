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
	//user_id, user_pwd
	String user_id = request.getParameter("user_id");
	String user_pwd = request.getParameter("user_pwd");
	
	//-- 1. 3항 연산자로 예외 처리 
	user_id = user_id == null ? "" : user_id;
	user_pwd = user_pwd == null ? "" : user_pwd;
	
	//-- 2. 공백 제거
	// " doo " => "doo"
	// "d o o" = > "doo" ?????? 정규표현식 추후 공부 
	user_id = user_id.trim(); //앞뒤 공백 제거
	user_pwd = user_pwd.trim(); // 앞뒤 공백 제거
	
	//-- 3. 사용자가 값을 입력했냐?
	if(user_id.equals("") || user_pwd.equals("")){
	
	%>	
	
	<h3>아이디와 비밀번호는 필수입니다.</h3>
	<a href="loginForm.jsp">로그인 화면으로 돌아가기</a>
	
	<%
		return;
	}
	
	// 4. 아이디, 비번이 doo, 1234 때만 로그인 가능 
	if(user_id.equals("doo") && user_pwd.equals("1234")){
		response.sendRedirect("loginSucc.jsp");

	}else{ //그 외에는 로그인 실패
		response.sendRedirect("loginFailed.jsp");
		

	}

%>

</body>
</html>