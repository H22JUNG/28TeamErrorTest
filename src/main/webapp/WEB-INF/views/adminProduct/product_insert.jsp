<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Document</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

ul, li {
	list-style-type: none;
}

body {
	background:
		url("${pageContext.request.contextPath}/image/KakaoTalk_20221013_170149504.webp")
		0% 300% fixed;
	background-size: cover;
	height: 100vh;
	display: flex;
	flex-direction: column;
	align-items: center;
	z-index: 0;
	background-color: #FFFAEE;
}

/* 헤더 */
header {
	background-color: #FFFAEE;
	width: 100%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	min-width: 1200px;
}

header .header-top {
	display: flex;
	width: 100%;
	justify-content: flex-end;
}

header .header-top .logo img {
	width: 265px;
}

header .header-top .logo {
	flex: 1;
	display: flex;
	justify-content: center;
	align-items: center;
}

header .header-top .side {
	position: absolute;
}

header .header-top .side ul {
	display: flex;
	gap: 10px;
	margin: 10px;
}

/* 카테고리 */
header .category {
	padding: 10px 20px;
	width: 100%;
}

header .category ul {
	display: flex;
	gap: 30px;
}

header .category ul li {
	display: flex;
	justify-content: center;
	align-items: center;
}

header .category ul li:first-child {
	background: #FFECC8;
	border-radius: 10px;
	display: flex;
	flex-direction: row;
	align-items: flex-start;
	padding: 5px 15px 7px;
	gap: 10px;
}

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
.admin_container {
	/* border: 1px solid black; */
	width: 100%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	/* align-items: center; */
	background-color: rgb(255, 255, 255);
}

.h1_container {
	display: flex;
	justify-content: center;
    margin-bottom: 20px;
    color: white;
    font-weight: bold;
}

h1 {
	padding: 20px;
	background-color: #21A5B5;
	width: 800px;
	border-radius: 10px;
}

.row {
	/* border: 1px solid green; */
	display: flex;
	justify-content: space-around;
}

.form-group {
	/* width: 50%; */
	
}

#fileDrop {
	border: 1px solid blue;
	height: 500px;
	width: 400px;
}

/* 오른쪽 영역 */
form {
	display: flex;
	align-items: center;
}

form div {
	display: flex;
	flex-direction: column;
}

form div label {
	font-size: 1.1rem;
	font-weight: bold;
	color: #21A5B5;
}

#productDist {
	width: 100px;
}

.input_btn {
	width: 100px;
	cursor: pointer;
}

.input_input {
	width: 180px;
}

.form-control {
	border: none;
	background-color: rgb(255, 245, 233);
	border-radius: 10px;
	height: 30px;
}

.form-inline {
	/* display: inline; */
	display: flex;
	flex-direction: row;
}

.btn {
	border: none;
	color: white;
	font-weight: bold;
	background-color: #44cedd;
	border-radius: 10px;
}

.btns {
	display: flex;
	flex-direction: row;
	padding: 10px;
	margin: 2px;
}

.final_btn {
	width: 50%;
	height: 40px;
	color: white;
	font-weight: bold;
	cursor: pointer;
	margin-right: 5px;
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
</style>
</head>

<body>
	<header>
		<div class="header-top">
			<div class="logo">
				<a href="${pageContext.request.contextPath}/"><img
					src="${pageContext.request.contextPath}/image/KakaoTalk_20221012_170414651.png"
					alt=""></a>
			</div>
			<div class="side">
				<ul>
					<c:if test="${admin != null}">
						<li><a href="${pageContext.request.contextPath}/adminpage">관리자페이지</a></li>
					</c:if>
					<li><a href=""><img src="" alt="">검색</a></li>
					<li><a href=""><img src="" alt="">장바구니</a></li>
					<li><a href="${pageContext.request.contextPath}/loginpage">로그인</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage">마이페이지</a></li>
				</ul>
			</div>
		</div>
		<nav class="category">
			<ul>
				<li>Category</li>
				<li>가구</li>
				<li>패브릭</li>
				<li>수납용품</li>
				<li>생활용품</li>
				<li>공지사항</li>
				<li>Q&A</li>
				<li>이벤트</li>
			</ul>
		</nav>
	</header>
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
								<a href="">✔ 관리자 정보수정</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="">✔ 로그아웃</a>
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
								<a href="${pageContext.request.contextPath}/admin_product_list">상품정보 조회</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="${pageContext.request.contextPath}/admin_product_insert">상품정보 등록</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="${pageContext.request.contextPath}/admin_product_update">상품정보 수정</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="${pageContext.request.contextPath}/admin_product_delete">상품정보 삭제</a>
							</h4>
						</li>
					</ul>
				</section>
				<section>

					<div class="container admin_container">
						<div class="h1_container">
						<h1 class="jumbotron" style="text-align: center;">${productInfo.productId}제목블라블라</h1>
						</div>
						<div class="row">
							<!--form태그의 위치를 옮겼음--><!-- /admin/product/update -->
							<form action="" method="post">
								<div class="form-group hidden-xs" id="fileDrop">
									<label>추가로 업로드 할 파일을 드랍하세요.</label>
									<div class="fileDrop"></div>
									<ul class="clearfix uploadedList col-xs-12"></ul>
								</div>

								<div class="form-group productInfo">
									<!-- 상품id는 auto_increment로 들어가야 하니까 필요없지 않을까........? -->
									<!-- <div>
                                        <label>상품 ID</label> <input name="productId" value="${productInfo.productId}" class="form-control productId" readonly>
                                    </div> -->
									<div>
										<label>상품명</label> <input name="productName"
											value="${productInfo.productName}" class="form-control">
									</div>
									<div>
										<label>상품가격</label> <input name="price"
											value="${productInfo.price}" class="form-control">
									</div>
									<div>
										<label>할인율</label> <input name="discount"
											value="${productInfo.discount}" class="form-control">
									</div>
									<div>
										<!--대분류가 뭐가 선택되느냐에 따라서 소분류가 달라져야 하는데?-->
										<label>대분류</label>
										<div class="form-inline">
											<select class="form-control form_input" id="productDist">
												<option value="furniture">가구</option>
												<option value="fabric">패브릭</option>
												<option value="storage">수납용품</option>
												<option value="supplies">생활용품</option>
											</select>
											<button class="btn btn-default btn_productDist input_btn">입력</button>
											<input name="productDist" value="${productInfo.productDist}"
												class="form-control input_input" readonly>
										</div>
										<div>
											<label>소분류</label>
											<div class="form-inline">
												<select class="form-control form_input" id="productDist">
													<optgroup label="furniture">
														<option value="bed">침대</option>
														<option value="sofa">소파</option>
														<option value="mirror">거울</option>
														<option value="chair">의자</option>
													</optgroup>
													
													<optgroup label="fabric">
														<option value="curtain">커튼</option>
														<option value="bedding">베딩?</option>
														<option value="rug">러그</option>
													</optgroup>
													
													<optgroup label="storage">
														<option value="storage store">storage store</option>
														<option value="organization">organization</option>
													</optgroup>
													
													<optgroup label="supplies">
														<option value="supplies">supplies</option>
													</optgroup>
												</select>
												<button class="btn btn-default btn_productDist input_btn">입력</button>
												<input name="productDist" value="${productInfo.productDist}"
													class="form-control input_input" readonly>
											</div>
										</div>
										<div>
											<label>재고</label> <input name="stock"
												value="${productInfo.stock}" class="form-control">
										</div>
										<!-- <div>
                                        <label>상품정보</label> <input name="productInfo" value="${productInfo.productInfo}" class="form-control" required>
                                    </div> -->
										<div>
											<label>사이즈</label><input value="${productInfo.regDate}"
												class="form-control">
										</div>
										<div>
										<label>컬러</label> <input value="${productInfo.regDate}"
												class="form-control">
										</div>
										<!-- <div>
                                        <label>최종 수정일</label> <input value="${productInfo.updateDate}" class="form-control" readonly>
                                    </div> -->
										<div class="btns">
											<button class="btn btn-default final_btn"
												id="btn_product_insert">등록하기</button>
											<button class="btn btn-default final_btn"
												id="btn_product_back">돌아가기</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</section>
			</div>
		</div>
	</main>
	<footer> </footer>
	
	<script type="text/javascript">
    	// 등록하기 버튼
		document.getElementById("btn_product_insert").addEventListener("click",function(){
        	location.href = "${pageContext.request.contextPath}/";
    	});
    	
    	// 돌아가기 버튼
    	document.getElementById("btn_product_back").addEventListener("click",function(e){
    		e.preventDefault;
        	location.href = "${pageContext.request.contextPath}/admin_product_list";
    	});
	</script>
</body>

</html>