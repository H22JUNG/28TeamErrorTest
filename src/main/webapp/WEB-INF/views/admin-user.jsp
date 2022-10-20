<%@page import="java.util.ArrayList"%>
<%@page import="com.goodee.vo.UserVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
	align-items: center;
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
}
#search select {
	color: #616161;
	font-size: 13px;
	width: 100px;
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
.tabcontent {
	display: none;
}
.menu2 {
	color: black;
}
.btn {
	color: #616161;
	font-size: 15px;
	width: 40px;
}

/* 팝업창 */
#popupdiv {
	background-color: white;
}
#popup {
	display: flex;
	justify-content: center;
	align-items: center;
	border-collapse: collapse;
}
#popup input {
	height: 30px;
}
#popup th {
	color: #21a5b5;
	padding: 10px;
	border-bottom: 1px solid #616161;
}
#popup td {
	border-bottom: 1px solid #616161;
	padding: 15px;
	text-align: center;
}
tr:last-child>td, tr:last-child>th {
	border: none;
}
#modi {
	width: 100px;
	height: 40px;
	font-size: 16px;
	font-weight: 500;
	background: linear-gradient(90deg, #21a5b5 0%, #71b2b4 100%);
	border-radius: 15px;
	border: none;
	cursor: pointer;
	color: white;
}

/* 페이징 */
.paging{
	border-top : 1px solid #CBCBCB;
	text-align : center;
	padding-top : 15px;
}
.arrow{
	padding : 0 10px;
	color : black;
	text-decoration: none;
}
.spanarrow{
	padding : 0 10px;
	color:#CBCBCB;
}
#nowpage{
	text-decoration: underline;
	color:black;
}
</style>
</head>

<body>
	<header>
		<div class="header-top">
			<div class="logo">
				<a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/image/KakaoTalk_20221012_170414651.png" alt=""></a>
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
								<a href="" class="menu1">✔ 회원관리</a>
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
								<a href="" class="menu2" id="first1">회원정보 조회</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="" class="menu2">회원정보 수정</a>
							</h4>
						</li>
						<li>
							<h4>
								<a href="" class="menu2">회원정보 삭제</a>
							</h4>
						</li>
					</ul>
				</section>
				<!-- ------------------------------------------------------------------------ -->
				<!-- ------------------------------------------------------------------------ -->
				<section id="first" class="tabcontent">
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
							</tr>
						</thead>
						<tbody>
							<c:forEach var="list" items="${list}">
							<tr>
								<td id="list${list.id}" class="id">${list.id}</td>
								<td id="userid">${list.userid }</td>
								<td id="username">${list.username }</td>
								<td id="tel">${list.tel }</td>
								<td id="address">${list.address}</td>
								<td id="email">${list.email}</td>
								<td id="point">${list.point}</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="paging">
						<c:choose>
							<c:when test="${1 == page.nowPage}">
								<span class="spanarrow">〈〈 </span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpage?page=1" class="arrow">〈〈 </a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${1 == page.nowPage}">
								<span class="spanarrow"> 〈</span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpage?page=${page.nowPage - 1}" class="arrow"> 〈</a>
							</c:otherwise>
						</c:choose>
						<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
							<c:choose>
								<c:when test="${page.nowPage eq i}">
									<span class="arrow" id="nowpage">${i}</span>
								</c:when>
								<c:otherwise>
									<a href="${pageContext.request.contextPath}/adminpage?page=${i}" class="arrow" style="color:#CBCBCB;">${i}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${page.totalPage == page.nowPage}">
								<span class="spanarrow">〉 </span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpage?page=${page.nowPage + 1}" class="arrow">〉 </a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${page.totalPage eq page.nowPage}">
								<span class="spanarrow"> 〉〉</span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpage?page=${page.totalPage}" class="arrow"> 〉〉</a>
							</c:otherwise>
						</c:choose>
					</div>
				</section>
				<!-- ----------------------------------수정-------------------------------------- -->
				<section class="tabcontent">
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
								<th>정보수정</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="list" items="${list}">
							<tr>
								<td id="modiid">${list.id}</td>
								<td id="modiuserid">${list.userid }</td>
								<td id="modiusername">${list.username}</td>
								<td id="moditel">${list.tel}</td>
								<td id="modiaddress">${list.address}</td>
								<td id="modiemail">${list.email}</td>
								<td id="modipoint">${list.point}</td>
								<td><button id="modify${list.id}" class="btn">수정</button></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="paging">
						<c:choose>
							<c:when test="${1 == page.nowPage}">
								<span class="spanarrow">〈〈 </span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpage?page=1" class="arrow">〈〈 </a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${1 == page.nowPage}">
								<span class="spanarrow"> 〈</span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpage?page=${page.nowPage - 1}" class="arrow"> 〈</a>
							</c:otherwise>
						</c:choose>
						<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
							<c:choose>
								<c:when test="${page.nowPage eq i}">
									<span class="arrow" id="nowpage">${i}</span>
								</c:when>
								<c:otherwise>
									<a href="${pageContext.request.contextPath}/adminpage?page=${i}" class="arrow" style="color:#CBCBCB;">${i}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${page.totalPage == page.nowPage}">
								<span class="spanarrow">〉 </span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpage?page=${page.nowPage + 1}" class="arrow">〉 </a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${page.totalPage eq page.nowPage}">
								<span class="spanarrow"> 〉〉</span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpage?page=${page.totalPage}" class="arrow"> 〉〉</a>
							</c:otherwise>
						</c:choose>
					</div>
				</section>
				<!-- ----------------------------------삭제-------------------------------------- -->
				<section class="tabcontent">
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
					<div class="paging">
						<c:choose>
							<c:when test="${1 == page.nowPage}">
								<span class="spanarrow">〈〈 </span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpage?page=1" class="arrow">〈〈 </a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${1 == page.nowPage}">
								<span class="spanarrow"> 〈</span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpage?page=${page.nowPage - 1}" class="arrow"> 〈</a>
							</c:otherwise>
						</c:choose>
						<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
							<c:choose>
								<c:when test="${page.nowPage eq i}">
									<span class="arrow" id="nowpage">${i}</span>
								</c:when>
								<c:otherwise>
									<a href="${pageContext.request.contextPath}/adminpage?page=${i}" class="arrow" style="color:#CBCBCB;">${i}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${page.totalPage == page.nowPage}">
								<span class="spanarrow">〉 </span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpage?page=${page.nowPage + 1}" class="arrow">〉 </a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${page.totalPage eq page.nowPage}">
								<span class="spanarrow"> 〉〉</span>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/adminpage?page=${page.totalPage}" class="arrow"> 〉〉</a>
							</c:otherwise>
						</c:choose>
					</div>
				</section>
			<!-- ------------------------------------------------------------------------ -->
			</div>
		</div>
	</main>
	<footer>
	
	
	</footer>
	<script>
    document.getElementById("first").style.display = 'flex';
    document.getElementById("first1").style.color = '#21A5B5';

    const tabMenu = document.querySelectorAll('.menu2');
    const tabContent = document.querySelectorAll('.tabcontent');

    tabMenu.forEach(function(item, idx){
        item.addEventListener('click', function(e){
            e.preventDefault();
            showContent(idx);
        });
    });
    function showContent(num){
        tabContent.forEach(function(item){
            item.style.display = 'none';
        });
        tabMenu.forEach(function(item){
            item.style.color = 'black';
        });
        tabContent[num].style.display = 'flex';
        tabMenu[num].style.color = '#21A5B5';
    };
    
  var openWin;
 	<% ArrayList<UserVO> vo = (ArrayList<UserVO>)request.getAttribute("list");
	for(int i=0; i<vo.size(); i++) {
	%>
	if(document.getElementById("modify<%=vo.get(i).getId()%>") != null) {
    document.getElementById("modify<%=vo.get(i).getId() %>").addEventListener("click", function () {
        openWin = window.open("${pageContext.request.contextPath}/adminuserpopup?id=<%=vo.get(i).getId()%>", "_blank",`resizable=yes,left=500,width=420,height=550`);
    });
	}
	<% } %>
	
	//삭제
	 <% for(int j=0; j<vo.size(); j++) { %>
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
	<% } %>
	</script>
</body>

</html>