<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 1. Class.forName() 드라이버 로딩
	Class.forName("com.mysql.cj.jdbc.Driver");

	// 2. DB 연경
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://www.doohaedo.shop:3306/web06_db?user=root&password=123456"
	);
	// 3. SQL 문 조합 
	String user_name = request.getParameter("user_name");
	String user_pwd = request.getParameter("user_pwd");
	
	// 4. PreparedStatement 작업
	String sql = "SELECT * FROM web06_user WHERE user_name=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, user_name);
	ResultSet rows = pstmt.executeQuery();
	
	if(rows.next()){ //-- row 가 하나라도 있을 때 
		do{
			String db_pwd = rows.getString("user_pwd");
			if(db_pwd.equals(user_pwd)){ //-- 비밀전호 맞음
				%>
				<script type="text/javascript">
					alert("로그인 성공");
					location.href="https://www.google.com";
				</script>
				<%
			} else{ //-- 비밀전호 틀림
				%>
				<script type="text/javascript">
					alert("id or pwd wrong!!!!");
					history.back();
				</script>
				<%
			}
			
		}while (rows.next());
		
	} else {//-- row 가 하나라도 없을 때(일치하는 회원 아이디가 없는 경우 )
	%>
	<script type="text/javascript">
		alert("'<%=user_name%>'이라는 회원은 없습니다.");
		history.back();
	</script>
	
	<%
	}
	
	
	
	//stmt.close();
	pstmt.close();
	
	// 5. 커넥션을 끊어라
	conn.close();
	
%>
</body>
</html>