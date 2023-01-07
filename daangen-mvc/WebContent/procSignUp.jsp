<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberService" type="service.MemberService" class="service.MemberServiceImpl" scope="application">
</jsp:useBean>

<%@ page import="vo.MemberVo" %>

<%@ page import="java.util.*" %> 

<%
	// mvc type 1 방식 
	request.setCharacterEncoding("UTF-8");	
	response.setCharacterEncoding("UTF-8");

	// 1. 사용자의 입력값을 받습니다.
	String userEmail = request.getParameter("userEmail"); //
	String userName = request.getParameter("userName");
	String userPwd = request.getParameter("userPwd");
	String userPwdConfirm = request.getParameter("userPwdConfirm"); // db에 안 들어감
	
	// 2. vo 깩체 생성(메신저 )
	MemberVo member = new MemberVo();
	member.setUserName(userName);
	member.setUserEmail(userEmail);
	member.setUserPwd(userPwd);
	
	// 3. Service 실행 
	Map<String, Object> result = memberService.registUser(member);
	
	// 가입 샐패 때
	if (result.get("result").toString().equals("false")) {
		%>
		
			<script>
				alert("<%=result.get("message")%>");
				history.back();
			</script>
		
		<%
		
		return;
	}
	
	// 가입 성공
%>

<script>
	alert("<%=result.get("message")%>");
	location.href = "/signin.jsp";
</script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>