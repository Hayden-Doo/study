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
	// 1. mysql 드라이버 로딩 
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = null;
	
	// 2. connect
	try{
		out.println("1. 연결 시도<br/>");
		conn = DriverManager.getConnection(
			/* 	String url = "jdbc:mysql://www.doohaedo.shop:3306/mysql";
				String user = "root";
				String password = "123456";  */
								
				"jdbc:mysql://www.doohaedo.shop:3306/web06_db?user=root&password=123456"
				// jdbc:mysql://데이터베이스주소:포트/접근할 데이터베이스명?user=아이디(root)&password=비밀번호
				// Connection String(url, user, password);
				// Connection String(연결문자열);
								
				);
		out.println("2. 로직 실행<br/>");

		Statement stmt = conn.createStatement();
		String sql = "SELECT * FROM web06_user";
		
		//--결과셀(ResultSet)  : 데이터가 엑셀 형식으로 메모리에 로딩
		ResultSet rs = stmt.executeQuery(sql);
		while (rs.next()){
			out.println(rs.getString(1)); //-- 인덱스로 가져오는 법
			out.println(rs.getString("user_name")); //-- 컬럼명으로 가져오는 법
			out.println(rs.getString(3)); 
			out.println(rs.getString("insertDate") + "<br/>"); 
			out.println("----------------------------<br/>");

		}
		
		//-- 수정
		//-- user_name 컬럼이 2인 것
		sql = "UPDATE web06_user SET user_name='angle2' WHERE user_no=2";
		//-- 실행 
		int affecred_rows = stmt.executeUpdate(sql);
		out.println("<br/> UPDATE에 영향 받은 row 수 : " + affecred_rows);
		//int rsUpdate = stmt.executeUpdate(sqlUpdate);
		
		//-- 삽입
		sql = "INSERT INTO web06_user (user_no, user_name, user_pwd) "
				+ " VALUES ('4', 'Doo4', '12345')";
		//sql = "INSERT INTO web06_user (user_no, user_name, user_pwd) ";
		//sql += " VALUES ('4', 'Doo4', '12345')";
		
		affecred_rows = stmt.executeUpdate(sql);
		out.println("<br/> INSERT에 영향 받은 row 수 : " + affecred_rows);
		
		//-- 삭제
		sql = "DELETE FROM web06_user WHERE user_no=4";
		affecred_rows = stmt.executeUpdate(sql);
		out.println("<br/> DELETE에 영향 받은 row 수 : " + affecred_rows);
		
		
		stmt.close();
		
	}catch (Exception ex){
		out.println("예외 발생<br/>");
		out.println(ex.getMessage());
		out.println(ex.getMessage().toString());
		out.println("<br/>");

	}finally{
		
		out.println("<br/> 3. 연결 해제<br/>");

		if (conn != null)
			conn.close();
		
	}

%>

</body>
</html>