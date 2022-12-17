<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.WebUser, java.util.List" %>
<jsp:useBean id="uc" class="controller.UserController"></jsp:useBean>
<!-- 
	회원가입 완료 후, 동작하는(들어오는) 페이지로,
	가입된 회원의 목록을 보여줍니다.
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가업 성공페이지</title>
<style>
	table{
	width:100%; 
	border:2px solid orange;
	border-collapse: collapse;
	}
	tr, td{
	border:1px solid orange;
	}
</style>
</head>
<body>

	<table>
		<!-- 헤더 -->
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>이름</td>
			<td>전화번호</td>
			<td>이메일</td>
		</tr>
		<!-- // 헤더 -->
		<!-- 컨텐츠 -->
		<%
			//--  메모리에서 Repository 참조 값을 불러오세요.
			List<WebUser> userList = uc.getUserListAll();
		
			//-- 향상된 for문 말고, 일반 for 문 사용해보자(얼마나 개 불편한가...)
			for (int i = 0; i < userList.size(); i++){
				WebUser tmpUser = userList.get(i);
			
		%>
		<tr>
			<td><%=++i %></td>
			<td><%=tmpUser.getWebId()%></td>
			<td><%=tmpUser.getWebName()%></td>
			<td><%=tmpUser.getWebCel()%></td>
			<td><%=tmpUser.getWebEmail()%></td>
		</tr>
		<%
		
			}
		%>
		<!-- // 컨텐츠 -->
	</table>

</body>
</html>