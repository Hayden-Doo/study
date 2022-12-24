<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 사용자의 입력을 받습니다. -->

<form method="post" action="procRegistForm.jsp">

	<p>ID : <input type="text" name ="user_name" id="user_name" value="" /></p>
	<p>비밀번호 : <input type="password" name ="user_pwd" id="user_pwd" value="" /></p>
	<p><input type="submit" value="가입하기"/></p>

</form>

</body>
</html>