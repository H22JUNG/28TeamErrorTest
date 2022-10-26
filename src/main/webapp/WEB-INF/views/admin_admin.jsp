<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">
<style>


/* 마이페이지 */
main {
	background-color: #FFFAEE;
	position: relative;
	top: 33%;
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 20px;
	min-width: 1200px;
}

main .mypage-container {
	display: flex;
	width: 80%;
	justify-content: center;
	align-items: center;
}

/* 마이페이지 메뉴 */
main aside {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 30px;
	background-color: white;
	border-radius: 30px;
	margin: 20px;
	width: 300px;
}

main aside ul {
	display: flex;
	flex-direction: column;
	gap: 10px;
	width: 100%;
}

main aside ul li {
	padding: 15px 0 15px 0;
}

main aside .menu a {
	text-decoration: none;
	color: #000;
	margin: 20px 0 20px 0;
}

main aside .menu {
	border: 1px solid #F0F0F0;
	border-radius: 25px;
	width: 100%;
	padding: 10px;
	justify-content: space-between;
}

#sidemenulist h3 {
	text-align: center;
}

/* 내용 */
.content-box {
	width: 100%;
}

main section {
	flex: 1.2;
	height: 100%;
	padding: 30px;
	display: flex;
	flex-direction: column;
	gap: 20px;
	background-color: white;
	border-radius: 30px;
	margin: 10px;
}
/* 본문 */
table {
	border-collapse: collapse;
}

th {
	color: black;
	padding: 10px 0 10px 0;
	border-bottom: 3px solid #616161;
}

#admin-email {
	margin-right: 50px;
}

td {
	border-bottom: 1px solid #616161;
	padding: 10px 0 10px 0;
	text-align: center;
}

.modify-btn {
	background: #21A5B5;
	padding: 5px;
	border: none;
	color: white;
	cursor: pointer;
	border-radius: 5px;
}

/* 컨텐츠 메뉴 */
.side-menu {
	display: flex;
}

.side-menu li {
	padding: 0 20px 0 20px;
}

.side-menu a {
	text-decoration: none;
	color: #000;
}

.admin-popup {
	display: none;
}
</style>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<main>
		<div class="mypage-container">
			<aside>
				<ul id="sidemenulist">
					<h3>관리자페이지</h3>
					<div class="menu">
						<li>
							<h4>
								<a href="">✔ 회원관리</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="">✔ 상품관리</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="">✔ 주문관리</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="">✔ 이벤트관리</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="${pageContext.request.contextPath}/admin-admin">✔ 관리자 정보수정</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="" id="admin-logout">✔ 로그아웃</a>
							</h4>
						</li>
					</div>
				</ul>
			</aside>
			<div class="content-box">
				<section>
					<ul class="side-menu">
						<li>
							<h4>
								<a href="">관리자 정보 수정</a>
							</h4>
						</li>
					</ul>
				</section>
				<section>
					<table>
						<thead>
							<tr>
								<th>관리자 번호</th>
								<th>관리자 아이디</th>
								<th>관리자명</th>
								<th>관리자 연락처</th>
								<th>관리자 주소</th>
								<th id="admin-email">관리자 이메일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>bbb1</td>
								<td>관리자1</td>
								<td>010-0000-0000</td>
								<td>서울특별시</td>
								<td>bbb1@naver.com</td>
								<td><button class="modify-btn">수정</button></td>
							</tr>
							<tr>
								<td>2</td>
								<td>bbb2</td>
								<td>관리자2</td>
								<td>010-0000-0000</td>
								<td>서울특별시</td>
								<td>bbb2@naver.com</td>
								<td><button class="modify-btn">수정</button></td>
							</tr>
						</tbody>
					</table>
				</section>
				
				<div class="admin-popup">
					<div class="pop_inner">
						<button type="button" class="btn_close">X</button>
						<p class="dsc">팝업 안내문구 입니다.</p>

					</div>
				</div>
			</div>
		</div>
	</main>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

<script>
  // 관리자 로그아웃
  document.getElementById("admin-logout").addEventListener("click",function(){
    let result = confirm("로그아웃 하시겠습니까?");
    if(result){
    alert("로그아웃 되었습니다.");
    location.href="${pageContext.request.contextPath}/admin-logout";
    }
  });
</script>
</html>