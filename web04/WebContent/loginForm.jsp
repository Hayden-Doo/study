<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 스크립트 연습하기 --%>

<form action="procLogin.jsp" method="post">
	<p>아이디 : <input type="text" name="user_id" value=""/></p>
	<p>비밀번호 : <input type="password" name="user_pwd" value=""/></p>
	<p><button>로그인</button></p>
</form>

<script type="text/javascript">

	// 1. 변수 선언
	var name; // 혹은 let / const
	// let 변수
	// const 상수
	
	// 2. 변수 할당
	name = "doo";
	
	// 3. 브라우저 alert  창 띄우기 
	// "", '' 모두 String으로 취급 
	alert('name 값은 ' + name + "입니다.")
	//alert(`name 값은 ${name} 입니다.`)
	
	// 4. 메서드(함수) 만들기
	// public 리턴타입 메서드명(파라미터){}
	
	// function 으로 선언하기
	// functon 으로 선언하는 경우, 호출하는 곳이 함수 선언 이전이더라도 정상 작동
	console.log('x + y = ', add(1,2));
	
	function add(x, y){
		return x + y;
	}
	
	// 함수 포인트형 ex) var 함수명 = functon(){}; 
	// 호출하는 곳이 함수 선언 이전이면 에러 발생
	// console.log('x / y = ', divide(4, 2))   에러 !!!
	var divide = function(x, y){
		return x / y;
	}
	console.log('x / y = ', divide(4, 2));
	
	// let func = (x, y) => x + y;
	// let function(x, y){return x + y};
	// alert(func(10, 11));

</script>


</body>
</html>