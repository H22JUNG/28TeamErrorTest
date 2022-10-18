<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A</title>
<style type="text/css">
<
style>* {
	margin: 0;
	padding: 0;
}

ul, li {
	list-style: none;
}

a {
	text-decoration: none;
	color: inherit;
}

.qna_wrap {
	width: 1000px;
	margin: 100px auto;
}

.qna_title {
	margin-bottom: 30px;
}

.qna_title strong {
	font-size: 30px;
}

.qna_title p {
	margin-top: 5px;
	font-size: 14px;
}

.btn_wrap {
	margin-top: 30px;
	text-align: right;
	font-size: 0;
	right: 0;
}

.btn_wrap a {
	display: inline-block;
	text-align: center;
	margin-left: 10px;
	min-width: 80px;
	padding: 10px;
	border: 1px solid #000;
	border-radius: 2px;
	font-size: 14px;
}

.btn_wrap a.on {
	background: #000;
	color: #fff;
}

.qna_list {
	width: 100%;
	border-top: 2px solid #000;
}

.qna_list>th, td {
	border-bottom: 1px solid #ddd;
}

.top th {
	border-bottom: 2px solid #999;
}

.qna_list {
	border-bottom: 2px solid #000;
}

.qna_list tr>td {
	text-align: center;
}

.qna_list .num, .count {
	width: 5%;
}

.qna_list .writer {
	width: 10%;
}

.qna_list .category, .date {
	width: 15%;
}

.qna_list .title {
	width: 50%;
}

.qna_list tbody .title {
	text-align: left;
	padding-left: 30px;
}

.qna_list th, td {
	padding: 15px 0;
}
/*페이지번호*/
.qna_page {
	margin-top: 30px;
	text-align: center;
	font-size: 0;
}

.qna_page a {
	display: inline-block;
	width: 32px;
	box-sizing: border-box;
	height: 32px;
	border: 1px solid #ddd;
	border-left: 0;
	vertical-align: middle;
	line-height: 100%;
}

.qna_page a.btn {
	font-size: 12px;
	padding-top: 10px;
	letter-spacing: -1px;
}

.qna_page a.page {
	font-size: 14px;
	padding-top: 9px;
}

.qna_page a:first-child {
	border-left: 1px solid #ddd;
}

.qna_page a.page.on {
	border-color: #000;
	background: #000;
	color: #fff;
}
</style>
</head>
<body>
	<div class="container">
		<header> </header>
		<main>
			<div class="qna_wrap">
				<div class="qna_title">
					<strong>Q&A</strong>
					<p>문의사항을 빠르고 정확하게 안내해드립니다.</p>
				</div>
				<div class="qna_list_wrap">
					<table class="qna_list">
						<thead class="top">
							<!-- 글번호,분류, 제목, 작성자, 작성일자, 조회수  -->
							<tr>
								<th class="num">NO</th>
								<th class="category">문의유형</th>
								<th class="title">제목</th>
								<th class="writer">작성자</th>
								<th class="date">작성일</th>
								<th class="count">조회</th>
							</tr>
						</thead>
						<tbody>
							<div>
								<%-- <c:forEach var="vo" items="${}"> --%>
								<tr>
									<td class="num">
										<%-- ${vo.id} --%>5
									</td>
									<td class="category">
										<%-- ${vo.category} --%>배송문의
									</td>
									<td class="title">
										<%-- <c:forEach var="i" begin="1" end="${들여쓰기DB(vo.indent)}"> --%>
										<%-- ${i eq vo.indent ? "<img src='img/re.gif' />" : "&nbsp;&nbsp;"} --%>
										<%-- <c:forEach> --%> <a href="content.html"> <%-- ${vo.title} --%>제목입니다.
									</a>
									</td>
									<td class="writer">
										<%-- ${vo.name} --%>김아름
									</td>
									<td class="date">
										<%-- ${vo.writedate} --%>22.01.15
									</td>
									<td class="count">
										<%-- ${vo.hits} --%>33
									</td>
								</tr>
								<%-- </c:forEach> --%>
							</div>
							<div>
								<%-- <c:forEach var="vo" items="${}"> --%>
								<tr>
									<td class="num">
										<%-- ${vo.id} --%>5
									</td>
									<td class="category">
										<%-- ${vo.category} --%>배송문의
									</td>
									<td class="title">
										<%-- <c:forEach var="i" begin="1" end="${들여쓰기DB(vo.indent)}"> --%>
										<%-- ${i eq vo.indent ? "<img src='img/re.gif' />" : "&nbsp;&nbsp;"} --%>
										<%-- <c:forEach> --%> <a href="content.html"> <%-- ${vo.title} --%>제목입니다.
									</a>
									</td>
									<td class="writer">
										<%-- ${vo.name} --%>김아름
									</td>
									<td class="date">
										<%-- ${vo.writedate} --%>22.01.15
									</td>
									<td class="count">
										<%-- ${vo.hits} --%>33
									</td>
								</tr>
								<%-- </c:forEach> --%>
							</div>
							<div>
								<%-- <c:forEach var="vo" items="${}"> --%>
								<tr>
									<td class="num">
										<%-- ${vo.id} --%>5
									</td>
									<td class="category">
										<%-- ${vo.category} --%>배송문의
									</td>
									<td class="title">
										<%-- <c:forEach var="i" begin="1" end="${들여쓰기DB(vo.indent)}"> --%>
										<%-- ${i eq vo.indent ? "<img src='img/re.gif' />" : "&nbsp;&nbsp;"} --%>
										<%-- <c:forEach> --%> <a href="content.html"> <%-- ${vo.title} --%>제목입니다.
									</a>
									</td>
									<td class="writer">
										<%-- ${vo.name} --%>김아름
									</td>
									<td class="date">
										<%-- ${vo.writedate} --%>22.01.15
									</td>
									<td class="count">
										<%-- ${vo.hits} --%>33
									</td>
								</tr>
								<%-- </c:forEach> --%>
							</div>
							<div>
								<%-- <c:forEach var="vo" items="${}"> --%>
								<tr>
									<td class="num">
										<%-- ${vo.id} --%>5
									</td>
									<td class="category">
										<%-- ${vo.category} --%>배송문의
									</td>
									<td class="title">
										<%-- <c:forEach var="i" begin="1" end="${들여쓰기DB(vo.indent)}"> --%>
										<%-- ${i eq vo.indent ? "<img src='img/re.gif' />" : "&nbsp;&nbsp;"} --%>
										<%-- <c:forEach> --%> <a href="content.html"> <%-- ${vo.title} --%>제목입니다.
									</a>
									</td>
									<td class="writer">
										<%-- ${vo.name} --%>김아름
									</td>
									<td class="date">
										<%-- ${vo.writedate} --%>22.01.15
									</td>
									<td class="count">
										<%-- ${vo.hits} --%>33
									</td>
								</tr>
								<%-- </c:forEach> --%>
							</div>
							<div>
								<%-- <c:forEach var="vo" items="${}"> --%>
								<tr>
									<td class="num">
										<%-- ${vo.id} --%>5
									</td>
									<td class="category">
										<%-- ${vo.category} --%>배송문의
									</td>
									<td class="title">
										<%-- <c:forEach var="i" begin="1" end="${들여쓰기DB(vo.indent)}"> --%>
										<%-- ${i eq vo.indent ? "<img src='img/re.gif' />" : "&nbsp;&nbsp;"} --%>
										<%-- <c:forEach> --%> <a href="content.html"> <%-- ${vo.title} --%>제목입니다.
									</a>
									</td>
									<td class="writer">
										<%-- ${vo.name} --%>김아름
									</td>
									<td class="date">
										<%-- ${vo.writedate} --%>22.01.15
									</td>
									<td class="count">
										<%-- ${vo.hits} --%>33
									</td>
								</tr>
								<%-- </c:forEach> --%>
							</div>
						</tbody>
					</table>
				</div>

				<!--버튼-->
				<div class="btn_wrap">
					<a href="write.html" class="on">문의하기</a>
					<%-- <a href="#">수정</a> --%>
				</div>

				<!--페이지번호-->
				<div class="qna_page">
					<a href="#" class="btn first"><<</a> <a href="#" class="btn prev"><</a>
					<a href="#" class="page on">1</a> <a href="#" class="page">2</a> <a
						href="#" class="page">3</a> <a href="#" class="page">4</a> <a
						href="#" class="page">5</a> <a href="#" class="btn next">></a> <a
						href="#" class="btn last">>></a>
				</div>


				<%-- <ul>
	<c:if test="${로그인중}"
	<li><a href="${pageContext.request.contextPath}/write">글쓰기</a></li>
	 </c:if>
</ul>

페이징페이지를 따로..
<div class="pagebtn">
	<jsp:include page="/WEB-INF/views/include/page.jsp"/> --%>

			</div>
		</main>
		<footer> </footer>
	</div>
</body>
</html>