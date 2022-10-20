<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

.top {
	width: 100%;
	height: 50px;
	background-color: rgb(77, 95, 117);
	display: flex;
	align-items: center;
	padding: 10px;
}

.top h3 {
	color: white;
}

.check-div {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-between;
	height: 250px;
}
#id-div {
	padding-top : 40px;
}

.bottom {
	width: 100%;
	height: 70px;
	background-color: rgb(77, 95, 117);
}
</style>
</head>
<body>
	<div class="top">
		<h3>아이디 중복 확인</h3>
	</div>
	<div class="check-div">
		<div id="id-div">
			<input type="text" name="userid" id="userid" />
			<button id="submit">확인</button>
			<div id="warning-div">
			
			</div>
		</div>
		<div class="bottom"></div>
	</div>
	
	<script type="text/javascript">
		document.getElementById("submit").addEventListener("click",function(e){
			e.preventDefault();
			let userid = document.getElementById("userid").value;
		    const simple_data = {userid};
		    
		    fetch("${pageContext.request.contextPath}/checkid", {
				method : "POST",
				headers : {"Content-TYPE" : "application/json"},
				body : JSON.stringify(simple_data)
			}).then(response => response.json()).then(data => {
				
				if(data.state == "fail") {
					document.getElementById("warning-div").innerHTML="";
					let warning = document.createElement("p");
					warning.innerText = "이미 존재하는 아이디입니다.";
					document.getElementById("warning-div").append(warning);
				}else if(data.state == "success"){
					opener.document.getElementById("userid").value = userid;
					window.close();
				}
			});
		});
		        
		     
	
	</script>
</body>
</html>