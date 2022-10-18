<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	text-align: center;
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

.qna_write {
	border-top: 2px solid #000;
}

.qna_write .title, .qna_write .info {
	padding: 15px;
}

.qna_write .info {
	border-top: 1px dashed #ddd;
	border-bottom: 1px solid #000;
	font-size: 0;
}

.qna_write .info dl {
	display: inline-block;
	width: 50%;
	vertical-align: middle;
}

.qna_write .title dt, .qna_write .title dd, .qna_write .info dt,
	.qna_write .info dd {
	display: inline-block;
	vertical-align: middle;
	font-size: 14px;
}

.qna_write .title dt, .qna_write .info dt {
	width: 100px;
}

.qna_write .title dd {
	width: calc(100% - 100px);
}

.qna_write .title input[type="text"], .qna_write .info input[type="text"],
	.qna_write .info input[type="password"] {
	padding: 10px;
	box-sizing: border-box;
}

.qna_write .title input[type="text"] {
	width: 80%;
}

.qna_write .title dl {
	font-size: 0;
}

.qna_write .cont {
	border-bottom: 1px solid #000;
}

.qna_write .cont textarea {
	display: block;
	width: 100%;
	height: 300px;
	padding: 15px;
	box-sizing: border-box;
	border: 0;
	resize: vertical;
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
				<div class="qna_write_wrap">
					<div class="qna_write">
						<div class="title">
							<dl>
								<dt>제목</dt>
								<dd>
									<input type="text" name="" id="" value="제목입니다.">
								</dd>
							</dl>
						</div>
						<div class="info">
							<dl>
								<dt>작성자</dt>
								<dd>
									<input type="text" name="" id="" value="김아름">
								</dd>
							</dl>
							<dl>
								<dt>비밀번호</dt>
								<dd>
									<input type="password" name="" id="" value="1234">
								</dd>
							</dl>
						</div>
						<div class="cont">
							<textarea>
            				내용입니다.
            				내용입니다.
            				내용입니다.
            				내용입니다.
            				내용입니다.
        					</textarea>
						</div>
					</div>
				</div>

				<!--버튼-->
				<div class="btn_wrap">
					<a href="qna.html" class="on">수정</a> <a href="qna.html">취소</a>
				</div>

				<!-- <ul>
	<c:if test="${로그인중}"
	<li><a href="${pageContext.request.contextPath}/write">글쓰기</a></li>
	 </c:if>
</ul>

페이징페이지를 따로..
<div class="pagebtn">
	<jsp:include page="/WEB-INF/views/include/page.jsp"/> -->

			</div>
		</main>
		<footer> </footer>
	</div>
</body>
</html>