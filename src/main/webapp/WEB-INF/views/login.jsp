<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body {
		background: #F5F5F5;
	}
	
	.box {
	position: absolute;
	width: 435px;
	height: 440px;
	left: 502px;
	top: 292px;
	
	background: #FFFFFF;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	border-radius: 20px;
	}
	
	input[text], input[password] {
	box-sizing: border-box;

	position: absolute;
	width: 335px;
	height: 52px;
	left: 50px;
	top: 147px;
	
	/* white */
	
	background: #FFFFFF;
	/* Input */
	
	border: 0.5px solid #CFCFCF;
	border-radius: 15px;
	}
	
	input[button] {
	box-sizing: border-box;

	/* Auto layout */
	
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	padding: 16px 0px 18px;
	gap: 10px;
	
	position: absolute;
	width: 335px;
	height: 52px;
	left: 50px;
	top: 328px;
	
	/* Gradient #1
	
	Norman & Click
	*/
	background: linear-gradient(90deg, #21A5B5 0%, #71B2B4 100%);
	border-radius: 15px;
}
</style>
<body>
	
	<div class="box">
		<h1 class="title">로그인</h1>
		<form action="${pageContext.request.contextPath}/로그인컨트롤러" method="post">
			<input type="text" id="id" name="userid" placeholder="아이디를 입력하세요" /><br />
			<input type="password" id="pw" name="password" placeholder="패스워드를 입력하세요" /><br />
			<label for="saveid"><input type="radio" name="saveid"/>아이디 저장</label>
			<div id="center"><button>Log In</button></div>
		</form>
		</div>
</body>
</html>