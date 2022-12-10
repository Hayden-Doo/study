<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- request.getParameterNames()--%>

	<%
		String[] name = request.getParameterValues("name");
		
		
	
		if(name != null){ // 사용자가 Parameter로 name은 넘겨줄었을 때
			for(String value : name){
				out.print("value = " + value + "<br/>");
			}
		}else{ // 사용자가 Parameter로 name은 넘겨주지 않았을 때
			out.print("파라미터 없네?");
		}
		
	
	%>

</body>
</html>