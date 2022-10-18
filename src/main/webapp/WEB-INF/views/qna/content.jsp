<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
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
	text-align: left;
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

.qna_content {
	width: 100%;
	border-top: 2px solid #000;
}

.qna_content .title {
	padding: 20px 15px;
	border-bottom: 1px dashed #ddd;
	font-size: 20px;
}

.qna_content .info {
	padding: 15px;
	border-bottom: 1px solid #999;
	font-size: 0;
}

.qna_content .info dl {
	position: relative;
	display: inline-block;
	padding: 0 20px;
}

.qna_content .info dl:first-child {
	padding-left: 0;
}

.qna_content .info dl::before {
	content: "";
	position: absolute;
	top: 6px;
	left: 0;
	display: block;
	width: 1px;
	height: 13px;
	background: #ddd;
}

.qna_content .info dl:first-child:before {
	display: none;
}

.qna_content .info dl dt {
	display: inline-block;
	font-size: 14px;
}

.qna_content .info dl dd {
	display: inline-block;
	font-size: 14px;
	margin-left: 10px;
	color: #777;
}

.qna_content .cont {
	padding: 15px;
	border-bottom: 1px solid #000;
	line-height: 160%;
	font-size: 14px;
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
				<div class="qna_content_wrap">
					<div class="qna_content">
						<div class="title">글 제목 입니다.</div>
						<div class="info">
							<dl>
								<dt>번호</dt>
								<dd>1</dd>
							</dl>
							<dl>
								<dt>작성자</dt>
								<dd>김아름</dd>
							</dl>
							<dl>
								<dt>작성일</dt>
								<dd>2022.01.16</dd>
							</dl>
							<dl>
								<dt>조회</dt>
								<dd>33</dd>
							</dl>
						</div>
						<div class="cont">

							내용입니다.<br> 내용입니다.<br> 내용입니다.<br> 내용입니다.<br>
							내용입니다.<br>

						</div>
					</div>
				</div>

				<!--버튼-->
				<div class="btn_wrap">
					<a href="qna.html" class="on">목록으로</a> <a href="modify.html">수정</a>
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