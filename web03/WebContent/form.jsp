<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 
<!-- 파라미터 노출 됨 -->
<form action="getMethod.jsp" method="get">
--%>
<!-- 파라미터 노출 안됨, 민감한 데이터 사용 -->
<form action="getMethod.jsp" method="post">
<!-- form field -->
ID :  <input type="text" name="id" value=""><br/>
NAME :  <input type="text" name="name" value=""><br/>
<button>눌러</button>

</form>

</body>
</html>