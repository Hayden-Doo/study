<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean 
		id="creationObjectVO" 
		class="vo.CreationObjectVo"
		scope="page">
	</jsp:useBean>

<%=creationObjectVO.getCreationDate() %>

</body>
</html>