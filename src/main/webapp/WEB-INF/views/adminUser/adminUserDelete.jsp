<%@page import="java.util.ArrayList"%>
<%@page import="com.goodee.vo.UserVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

/* 컨테이너 */
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
	align-items: start;
 	padding-top : 30px;
}

/* 사이드 메뉴 */
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

#adminUser {
	color: #21A5B5;
}

/* 내용 컨테이터 */
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
	align-self: flex-end;
}

#search button {
	color: #616161;
	font-size: 12px;
	width: 40px;
	height : 25px;	
}

#search select {
	color: #616161;
	font-size: 13px;
	width: 110px;
	height : 25px;
}
#search input[type="text"] {
	color: #616161;
	font-size: 13px;
	height : 25px;
	padding-left : 3px;
}
table {
	border-collapse: collapse;
}

th {
	color: black;
	padding: 10px 0 10px 0;
	border-bottom: 3px solid #616161;
}

td {
	border-bottom: 1px solid #616161;
	padding: 10px 0 10px 0;
	text-align: center;
}

td:nth-child(5), td:nth-child(6) {
	text-align: start;
}
tr:last-child>td, tr:last-child>th {
	border: none;
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

/* 조회 수정 삭제 선택 */
.menu2 {
	color: black;
}

.btn {
	color: #616161;
	font-size: 15px;
	width: 40px;
}
/* 페이징 */
.paging {
	border-top: 1px solid #CBCBCB;
	text-align: center;
	padding-top: 15px;
}

.arrow {
	padding: 0 10px;
	color: black;
	text-decoration: none;
}

.spanarrow {
	padding: 0 10px;
	color: #CBCBCB;
}

#nowpage{
	text-decoration: underline;
	color:black;
}

#nothing {
	text-align : center;
	padding : 20px;
	color: #616161;
}
#one {
	text-align : center;
	padding : 5px 5px 5px 60px;
	color: #616161;
	font-size : 14px;
}
#two {
	text-align : center;
	padding : 5px 5px 5px 50px;
	color: #616161;
	font-size : 14px;
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
								<a href="${pageContext.request.contextPath}/adminpage/1?searchUser=&userInfo=" class="menu1">✔ 회원관리</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="" class="menu1">✔ 상품관리</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="" class="menu1">✔ 주문관리</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="" class="menu1">✔ 이벤트관리</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="" class="menu1">✔ 관리자 정보수정</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="" class="menu1">✔ 로그아웃</a>
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
								<a href="${pageContext.request.contextPath}/adminpage/1?searchUser=&userInfo=" class="menu2">회원정보 조회</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="${pageContext.request.contextPath}/adminpagemodi/1?searchUser=&userInfo=" class="menu2">회원정보 수정</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="${pageContext.request.contextPath}/adminpagedel/1?searchUser=&userInfo=" class="menu2" id="adminUser">회원정보 삭제</a>
							</h4>
						</li>
					</ul>
				</section>
				<!-- ------------------------------------------------------------------------ -->
				<section class="tabcontent">
					<div id="search">
						<form action="${pageContext.request.contextPath}/adminpagedel/1" method="get">
							<select name="searchUser" id="user">
								<option value="" selected>카테고리 선택</option>
								<option value="userid">아이디</option>
								<option value="username">회원명</option>
								<option value="tel">회원연락처</option>
								<option value="address">회원주소</option>
								<option value="email">회원이메일</option>
							</select>
							<input type="text" name="userInfo" placeholder="검색어를 입력하세요"/>
							<button>검색</button>
						</form>
						<c:if test="${one != null }">
							<p id="one">카테고리를 선택하세요</p>
						</c:if>
						<c:if test="${two != null }">
							<p id="two">검색어를 입력하지 않으셨습니다</p>
						</c:if>
					</div>
					<table>
						<thead>
							<tr>
								<th>회원번호</th>
								<th>회원 아이디</th>
								<th>회원명</th>
								<th>회원 연락처</th>
								<th>회원 주소</th>
								<th>회원 이메일</th>
								<th>적립금</th>
								<th>회원삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="list" items="${list}">
								<tr>
									<td id="delid">${list.id}</td>
									<td id="deluserid">${list.userid }</td>
									<td id="delusername">${list.username }</td>
									<td id="deltel">${list.tel }</td>
									<td id="deladdress">${list.address}</td>
									<td id="delemail">${list.email}</td>
									<td id="delpoint">${list.point}</td>
									<td><button id="delete${list.id}" class="btn">삭제</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<c:if test="${nothing != null }">
						<p id="nothing">검색 결과가 없습니다.</p>
					</c:if>
						<div class="paging">
						<c:if test="${list != null}">
						<c:choose>
							<c:when test="${1 == page.nowPage}">
								<span class="spanarrow">〈〈 </span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpagedel/1?searchUser=${searchUser}&userInfo=${userInfo}" class="arrow">〈〈 </a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${1 == page.nowPage}">
								<span class="spanarrow"> 〈</span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpagedel/${page.nowPage - 1}?searchUser=${searchUser}&userInfo=${userInfo}" class="arrow"> 〈</a>
							</c:otherwise>
						</c:choose>
						<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
							<c:choose>
								<c:when test="${page.nowPage eq i}">
									<span class="arrow" id="nowpage">${i}</span>
								</c:when>
								<c:otherwise>
									<a href="${pageContext.request.contextPath}/adminpagedel/${i}?searchUser=${searchUser}&userInfo=${userInfo}"  class="arrow" style="color:#CBCBCB;">${i}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${page.totalPage == page.nowPage}">
								<span class="spanarrow">〉 </span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpagedel/${page.nowPage + 1}?searchUser=${searchUser}&userInfo=${userInfo}" class="arrow">〉 </a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${page.totalPage eq page.nowPage}">
								<span class="spanarrow"> 〉〉</span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpagedel/${page.totalPage}?searchUser=${searchUser}&userInfo=${userInfo}" class="arrow"> 〉〉</a>
							</c:otherwise>
						</c:choose>
						</c:if>
					</div>
				</section>
			</div>
		</div>
	</main>
	<footer>
	푸터입ㄴ디ㅏ
	</footer>
	<script>
	
 	<%if (request.getAttribute("list") != null) {
	ArrayList<UserVO> vo = (ArrayList<UserVO>) request.getAttribute("list");

	for (int j = 0; j < vo.size(); j++) {%>
			 if(document.getElementById("delete<%=vo.get(j).getId()%>") != null) {
			 document.getElementById("delete<%=vo.get(j).getId()%>").addEventListener("click", function () {
				 if(confirm("<%=vo.get(j).getUserid()%> 회원을 탈퇴시키겠습니까?")) {
		
					 let simple_data = {userid :"<%=vo.get(j).getUserid()%>"};
					 
					 fetch("${pageContext.request.contextPath}/adminUserDelete",{
					   		 	method : "DELETE",
								headers : {"Content-Type" : "application/json"},
								body : JSON.stringify(simple_data)
							}).then(response => response.json())
							.then(data => {
								document.getElementById("delete<%=vo.get(j).getId()%>").parentElement.parentElement.remove();
								document.getElementById("modify<%=vo.get(j).getId()%>").parentElement.parentElement.remove();
								document.getElementById("list<%=vo.get(j).getId()%>").parentElement.remove();
				})
				}
			 });
			 }
	<%} }%>
	</script>
</body>
</html>