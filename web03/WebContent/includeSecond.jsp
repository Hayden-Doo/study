<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	page 디렉티브테그에 import가 없을 경우에는
	package 포함 full class 경로를 사용하야 한다.
	ex)<%=new java.util.Date().toString()%>
--%>
Second.jsp 실행시간 <%= new Date().toString() %>
</body>
</html>