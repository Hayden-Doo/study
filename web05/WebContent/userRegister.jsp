<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<!-- 
	아이디 input type="text"
	패스워드 input type="password"
	이름 input type="text"
	전화번호 select - text - text
	이메일주소 text @ select
	자기소개 textarea
 -->
<h2>회원가입</h2>

<!-- post 방식은 URL에 파라미터 값이 노출되지 않는다 -->
<!-- mothoe="get", method="post" -->
<form method="post" name="regForm" action="procUserRegister.jsp" 
onsubmit="return sendDataCheckForSubmit();">
	<p>아이디 : <input type="text" name="web_id" value=""></p>
	<p>패스워드 : <input type=password name="web_pwd" value=""></p>
	<p>이름 : <input type="text" name="web_name" value=""></p>
	<p>전화번호 : 
		<select name="web_cel1">
			<option value="010">010</option>
			<option value="017">017</option>
			<option value="018">018</option>
			<option value="019">019</option>
		</select>
		-
		<input type="text" name="web_cel2" value="">
		-
		<input type="text" name="web_cel3" value="">
	</p>
	<p>이메일주소 : 
		<input type="text" name="web_email_id" value="">@
		<select name="web_email_addr">
			<option value="naver.com">naver.com</option>
			<option value="gmail.com">gmail.com</option>
			<option value="-1">직접입력</option>
		</select>
	</p>
	<p>자기소개 :
		<textarea name="web_introuce"></textarea>
	</p>
	<p>
		<!-- html4 방식-->
		<!-- button은 눌렀을 때 서버에 데이터를 전송하지 않습니다. -->
		<!-- <input type="button" value="버큰"></input>-->
		
		<!-- submit와 image는 눌렀을때 서버에 데이터를 전공합니다. -->
		<!-- <input type="submit" value="서브밋"></input>-->
		<!-- submit과 동일한 기능이고 이미지 효과 주기 위함 -->
		<!-- <input type="image" src="https://dictionary.cambridge.org/images/full/button_noun_002_05071.jpg"
		style="width:50px; height:50px;"
		/>-->
		
		<!-- html5 방식-->
		<button>회원가입 submit 버튼</button><!--<input type="submit" -->
		<!-- <button type="button" onclick="sendDataButton();">회원가입 button</button> -->
		<!-- <button type="button">button 클릭2</button><!-- <input type="button" -->
	</p>
<!-- 	
		<p>회원 삭제 : <input type="text" name="web_delid" value=""></p>
		<button>회원 삭제</button>
		 -->
</form>
<script type="text/javascript">
	// 자바스크립트
	//console.log(document.getElementsByName("regForm"));
	//console.log(document.regForm);
	//alert(document.regForm.web_id.value);
	
	function sendDataButton(){
		if (sendDataCheckForSubmit()){
			document.regForm.submit();
		}
	}
	
	//-- input type="submit", button 을 사용할 때
	function sendDataCheckForSubmit(){
		
		// 아이디, 패스워드, 이름, 이메일은 반드시 받아야 한다.
		if (document.regForm.web_id.value.trim() == ""){
			alert("아이디는 필수값 입니다.");
			document.regForm.web_id.focus();
			return false;
		}
		if (document.regForm.web_pwd.value.trim() == ""){
			alert("패스워드는 필수값 입니다.");
			document.regForm.web_pwd.focus();
			return false;
		}
		
		// 비밀번호는 5자 이상이어여 합니다.
		if (document.regForm.web_pwd.value.trim().length < 5){
			alert("비밀번호는 5자 이상이어야 합니다.");
			document.regForm.web_pwd.focus();
			return false;
		}
		
		if (document.regForm.web_name.value.trim() == ""){
			alert("이름은 필수값 입니다.");
			document.regForm.web_name.focus();
			return false;
		}
		if (document.regForm.web_email_id.value.trim() == ""){
			alert("이메일은 필수값 입니다.");
			document.regForm.web_email_id.focus();
			return false;
		}
		return true; 
	}
</script>

</body>
</html>