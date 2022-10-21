<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
#search {
	/* align-self: flex-end; */
    float: right;
    padding: 20px;
}

#search button {
	color: #616161;
	font-size: 12px;
	width: 40px;
}

#search select {
	color: #616161;
	font-size: 13px;
	width: 100px;
}

.row {
	display: flex;
    flex-direction: column;
    align-items: end;
}

h1 {
    border: none;
    border-radius: 10px;
    padding: 20px;
    color: white;
    background-color: #21A5B5;
}
table, th, td {
    border-collapse: collapse;
}

table {
	width: 100%
}

th {
    border-bottom: 1px solid rgb(183, 183, 183);
    padding-bottom: 10px;
    color: gray;
}
td {
    padding: 10px 1px 10px 1px;
}

#insert_btn {
    border: none;
    background-color: #64d6e4;
    color: white;
    font-weight: bold;
    padding: 10px 20px;
    border-radius: 5px;
    float: right;
    margin-top: 20px;
    cursor: pointer;
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
                            <h1 class="jumbotron" style="text-align: center;">상품 리스트</h1>
                        <div class="row">
                            
                            <div id="search">
                                <form action="" method="get">
                                    <select name="" id="">
                                        <option value="">첫번째</option>
                                        <option value="">두번째</option>
                                        <option value="">세번째</option>
                                        <option value="">네번째</option>
                                        <option value="">첫번째</option>
                                    </select> <input type="text" placeholder="검색어를 입력하세요">
                                    <button>검색</button>
                                </form>
                            </div>

                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>상품ID</th>
                                        <th>상품명</th>
                                        <th>상품가격</th>
                                        <th>재고</th>
                                        <th>조회수</th>
                                        <th>상품 등록일</th>
                                        <th>최종 수정일</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><a href="">${productInfo.productId}내용물 블라블라블라</a></td>
                                        <td>${productInfo.productName}내용물 블라블라블라</td>
                                        <td>${productInfo.price}내용물 블라블라블라</td>
                                        <td>${productInfo.stock}내용물 블라블라블라</td>
                                        <td>${productInfo.productView}내용물 블라블라블라</td>
                                        <td><fmt:formatDate value="${productInfo.regDate}" type="date" pattern="yyyy-MM-dd"/> </td>
                                        <td><fmt:formatDate value="${productInfo.updateDate}" type="date" pattern="yyyy-MM-dd"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- class = row -->
                    </div>
				</section>
			</div>
		</div>
	</main>
	<footer>
	</footer>
	
</body>

</html>