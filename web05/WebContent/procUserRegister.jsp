<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.WebUser"%>
<%@ page import="java.util.List"%>

<jsp:useBean id="userController" class="controller.UserController" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 받는 부분</title>
</head>
<body>

	<% 
		// POST 한글 계짐 현상 처리 
		request.setCharacterEncoding("UTF-8");
	
		String web_id = request.getParameter("web_id");
		String web_pwd = request.getParameter("web_pwd");
		String web_name = request.getParameter("web_name");
		
		String web_cel1 = request.getParameter("web_cel1");
		String web_cel2 = request.getParameter("web_cel2");
		String web_cel3 = request.getParameter("web_cel3");
		String web_email_id = request.getParameter("web_email_id");
		String web_email_addr = request.getParameter("web_email_addr");
		
		String web_introuce = request.getParameter("web_introuce");
		
		//-- 1. WebUser 객체에 회원 데이터를 저장
		WebUser user = new WebUser();
		user.setWebId(web_id);
		user.setWebPwd(web_pwd);
		user.setWebName(web_name);
		user.setWebIntroduce(web_introuce);
		
		String web_cel = web_cel1 + "-" + web_cel2 + "-" + web_cel3;
		String web_email = web_email_id + "@" + web_email_addr;
		
		user.setWebCel(web_cel);
		user.setWebEmail(web_email);
		
		//-- 2. 메모리에 회원 데이터 저장
		userController.addUser(user);
		
		//-- 3. 회원가입 완료페이지(회원가입목록 보기)로 이동
		response.sendRedirect("succRegister.jsp");
/* 		return; // 밑에써 실행 안되게 return
 */		
		//-- 4. 메모리에 회원 데이터 삭제
		
/* 		String web_delid = request.getParameter("web_delid");
		userController.delUser(user); */
	%>
	<h1>환영합니다.!!!</h1>
	<p>아이디 : <%=user.getWebId()%></p>
	<p>패스워드 : <%=user.getWebPwd()%></p>
	<p>이름 : <%=user.getWebName()%></p>
	<p>전화번호 : <%=user.getWebCel()%></p>
	<p>이메일주소 : <%=user.getWebEmail()%></p>
	<p>자기소개 : <%=user.getWebIntroduce()%></p>
	
	<h1>가입회원목록</h1>
	
<%
	List<WebUser> resultList = userController.getUserListAll(); 
	int number = 1;

	// for (int i = 0; i < resultList.size(); i++) { ((WebUser)resultList.get(i).getWebName()}
	for(WebUser dbUser : resultList){
%>
	<p>
		<%=number++ %> | <%=dbUser.getWebName()%> (<%=dbUser.getWebId() %>)
	</p>
<%		
	}
%>
<!-- 
	<h1>회원 삭제</h1>
	 -->

</body>
</html>