<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
        
        ul,
        li {
            list-style-type: none;
        }

        body {
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
        #main-image{
            background: url("${pageContext.request.contextPath}/image/KakaoTalk_20221013_170149504.webp") fixed;
            background-size: cover;
            background-position: top;
            width: 100%;
            height: 40vh;
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

        #coverContainer{
            background-color: #FFF7E7;
            position: relative;
            top: 33%;
            width: 100%;
            justify-content: center;
            align-items: center;
            padding: 20px;
            min-width: 1200px;
            height : 90%;
        }
        #container {
            margin: 0 auto;
            width: 90%;
            max-width: 1400px;
            background-color: white;
            padding : 30px;
        }
        h2{
            text-align: center;
            padding-bottom: 15px;
            border-bottom: 3px solid #21A5B5;
        }
        table {
            border-collapse: collapse;
        }
        td {
            border-bottom: 1px solid #CBCBCB;
            padding: 20px;
            width : 90%;
        }
        table tr td:first-child{
            width: 180px;
            font-weight: 900;
        }
        table tr:last-child td:last-child{
            height : 400px; 
        }
        #btn {
            padding: 20px;
            display: flex;
            justify-content: flex-end;
            gap: 20px;
        }
        #btn button {
            width: 100px;
            height: 50px;
            font-size: 16px;
            font-weight: 600;
            background: linear-gradient(90deg, #21A5B5 0%, #71B2B4 100%);
            border-radius: 15px;
            border: none;
            cursor: pointer;
            color: white;
        }
        #title {
            width: 80%;
            height: 35px;
            border: none;
            border-bottom: 1px solid #21A5B5;
        }
        #content {
            width: 80%;
            height: 400px;
            border: none;
            border: 1px solid #21A5B5;
        }
        input:focus {
            outline: none;
        }
        /* 푸터 */
        footer {
            width: 100%;
            background-color: #FFECC8;
            z-index: 10;
            font-size: 12px;
            padding: 20px 40px;
            color: #848484;
            display: flex;
        }
        .footer1 {
            width: 70%;
            border-right: 1px solid #848484;
        }
        footer p:nth-child(1) {
            font-size: 15px;
            color: #2C2C2C;
        }
        footer p:nth-child(2) {
            font-size: 15px;
        }
        #footer-tel {
            color:#21A5B5;
            font-size: 25px;
            font-weight: 900;
        }
        footer ul {
            display: flex;
        }
        footer ul li {
            padding: 10px 20px 0 0;
        }
        .footer2 {
            width: 30%;
            align-self: center;
            display: flex;
            justify-content: center;
        }
        .footer2 img{
            width: 50px;
            height: 50px;
            margin: 15px;
            cursor: pointer;
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
       <div id="main-image"></div>
    </header>
    <div id="coverContainer">
      <div id="container">
			
			<h2>${detail.category}</h2>
			<form:form modelAttribute="detail" action="${pageContext.request.contextPath}/modify?category=${detail.category}&id=${detail.id}" method="post">
			<table>
				<tr>
					<td>제목</td>
					<td><form:input type="text" path="title" /></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>${detail.owner}</td>
				</tr>
				<tr>
					<td>작성일자</td>
					<td>${detail.createDate}</td>
				</tr>
				<tr>
					<td>내용</td>
					<td><form:textarea type="text" path="content"/></td>
				</tr>
			</table>
			<div id="btn">
				<button id="modify">수 정</button>
			</div>
			</form:form>
			
        </div>
    </div>
	<footer>
        <div class="footer1">
        <p>고객센터 : <span id="footer-tel">1234-1234</span></p>
        <p>09:00 ~ 18:00 (주말 및 공휴일 휴무)</p>
        <ul>
            <li>상호명 : (주)내일의집</li>
            <li>이메일 : h2jung6875@naver.com</li>
            <li>공동대표 : 김희정 신유진 임수정 유승윤 조윤정</li>
            <li>FAX : 02-222-4444</li>
            <li>사업자등록번호 : 333-22-55555</li>
            <li>주소 : 서울 금천구 가산동</li>
        </ul>
        <br>
        <p>Copyright 2022. 28Team, Co., Ltd. All rights reserved</p>
      </div>
      <div class="footer2">
        <img src="${pageContext.request.contextPath}/image/Instagram_icon.png" alt="">
        <img src="${pageContext.request.contextPath}/image/facebook_icon.png" alt="">
        <img src="${pageContext.request.contextPath}/image/Twitter_Logo.png" alt="">
    </div>
    </footer>
</body>
</html>