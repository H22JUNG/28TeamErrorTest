<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

a {
	text-decoration: none;
	color : black;
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
}

/* 헤더 */
header {
	background-color: white;
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

/* 메인페이지 */
main {
	background-color: white;
	position: relative;
	top: 33%;
	width: 100%;
	padding: 20px;
	gap: 20px;
	min-width: 1200px;
	display : flex;
	justify-content: space-around;
}

main .item-container {
	width : 1020px;
}

main .item-container .itembox {
	width : 320px;
	height : 400px;
	float : left;
	margin : 10px;
}
main .item-container .itembox img {
	width : 100%;
	height : 240px;
}
main .item-container .itembox .itemname {
	display : flex;
	flex-direction : column;
	justify-content: center;
	align-items: center;
}

aside>ul>li {
	margin : 20px;
}
aside>ul>li>a {
	font-weight: bold;
}

aside>ul>li ul>li {
	margin : 20px;
}
aside>ul>li ul>li>a {
	margin-left : 10px;
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
					<c:if test="${user eq null}">
						<li><a href="${pageContext.request.contextPath}/loginpage">로그인</a></li>
					</c:if>
					<c:if test="${user != null}">
						<li><a href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
					</c:if>
					<li><a href="${pageContext.request.contextPath}/mypage">마이페이지</a></li>
				</ul>
			</div>
		</div>
		<nav class="category">
			<ul id="category-list">
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
	<aside>
		<ul>
			<li>
				<a href="${pageContext.request.contextPath}/category/furniture">가구</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/category2/bed">침대</a></li>
					<li><a href="${pageContext.request.contextPath}/category2/sofa">소파</a></li>
					<li><a href="${pageContext.request.contextPath}/category2/mirror">거울</a></li>
					<li><a href="${pageContext.request.contextPath}/category2/chair">의자</a></li>
				</ul>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/category/fabric">패브릭</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/category2/curtain">커튼</a></li>
					<li><a href="${pageContext.request.contextPath}/category2/bedding">침구</a></li>
					<li><a href="${pageContext.request.contextPath}/category2/rug">러그</a></li>
				</ul>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/category/storage">수납용품</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/category2/storage store">수납장</a></li>
					<li><a href="${pageContext.request.contextPath}/category2/supplies">옷걸이</a></li>
				</ul>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/category/supplies">생활용품</a>
			</li>
		</ul>
	
	</aside>
	<div class="item-container">
	<c:forEach var="vo" items="${list}">
		<div class="itembox">
			<img src="${vo.pic1}" alt="" />
			<div class="itemname">
			<h4>${vo.name}</h4>
			<p>${vo.price} 원</p>
			<p>${vo.discount} %</p>
			</div>
		</div>	
	</c:forEach>
	</div>
	</main>
	
</body>
</html>