<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">
<style>
main {
	display: flex;
	justify-content: center;
	padding: 50px;
}

.container {
	margin: 0 auto;
	width: 60%;
	display: flex;
    flex-direction: column;
    gap: 20px;
}
.container .head{
	display:flex;
}
.container .head h1{
	flex: 1;
}

.container .head nav {
	display: flex;
	align-items: center;
}
.container .head nav ul {
	display: flex;
	gap: 5px;
}

.thead {
	display: flex;
	border-top: 3px solid #21A5B5;
	padding: 10px;
	gap: 20px;
}

.thead .th {
	text-align: center;
}

.thead .th:nth-child(1){
	flex: 1;
}
.thead .th:nth-child(2){
	flex: 7;
}
.thead .th:nth-child(3){
	flex: 1;
}
.thead .th:nth-child(4){
	flex: 1;
}

.important {
	background-color: #F4F7FF;
}

.tr {
	display: flex;
	border-top: 1px solid #CACACA;
	padding: 5px;
	gap: 20px;
}
.tr:last-child {
	border-bottom: 1px solid #CACACA;
}

.tr .td {
	text-align: center;
}

.tr .td:nth-child(1){
	flex: 1;
}
.tr .td:nth-child(2){
	text-align: left;
	flex: 7;
}
.tr .td:nth-child(3){
	flex: 1;
	font-size: 13px;
}
.tr .td:nth-child(4){
	flex: 1;
}

.tr, .th {
	display: flex;
	justify-content:center;
	align-items: center;
}

.search {
	display: flex;
	align-items: center;
	gap: 10px;
}

input,select {
	border: 1px solid #d5d5d5;
    color: #353535;
    font-size: 12px;
    background-color: white;
    height: 24px;
}
#search-btn {
	height: 24px;
	padding: 2px 4px;
}
</style>
</head>
<body>

	<jsp:include page="../header.jsp"></jsp:include>
	<main>
		<div class="container">

			<div class="head">
			<h1>공지사항</h1>
			<nav>
				<ul>
					<li><a href="${pageContext.request.contextPath}/">홈</a></li>
					<li>〉</li>
					<li>공지사항</li>
				</ul>
			</nav>
			</div>
			<div class="table">
				<div class="thead">
					<div class="th">번호</div>
					<div class="th">제목</div>
					<div class="th">작성일</div>
					<div class="th">조회</div>
				</div>
				<c:forEach var="impvo" items="${impnotice}">
					<div class="tr important">
						<div class="td">[공지]</div>
						<div class="td"><a href="${pageContext.request.contextPath}/notice/${impvo.id}">${impvo.title}</a></div>
						<div class="td">${impvo.createDate}</div>
						<div class="td">${impvo.view}</div>
					</div>
				</c:forEach>
				<c:forEach var="vo" items="${notice}" varStatus="status">
					<div class="tr">
						<div class="td">${notice.size() - status.index}</div>
						<div class="td"><a href="${pageContext.request.contextPath}/notice/${vo.id}">${vo.title}</a></div>
						<div class="td">${vo.createDate}</div>
						<div class="td">${vo.view}</div>
					</div>
				</c:forEach>
			</div>
			
			<div class="search">
			<select name="" id="">
				<option value="">제목</option>
				<option value="">내용</option>
				<option value="">제목+내용</option>
			</select>
			<input type="text" name="" id="" />
			<button id="search-btn">검색</button>
			</div>
		</div>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>