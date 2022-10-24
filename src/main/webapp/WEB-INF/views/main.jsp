<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
        ul,
        li {
            list-style-type: none;
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
        
        /* 헤더 이미지 */
        header .header-top .side ul li a {
            text-decoration: none;
            color: #21A5B5;
        }
        #search-logo {
            width: 25px;
            height: 25px;
            margin-top: 2px;
            margin-right: 8px;
        }
        #cart-logo {
            width: 30px;
            height: 30px;
            margin-right: 8px;
        }
        header .header-top .side ul li{
            text-decoration: none;
            color: #21A5B5;
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

        /* 메인페이지 */
        main {
            background-color: white;
            width: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
            gap: 30px;
            min-width: 1200px;
        }
           main .event {
            width: 900px;
            height: 400px;
        }

        main .event img {
            width: 100%;
            height: 100%;
        }

        main .best {
            width: 800px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 10px;
            gap: 10px;
        }
        main .best ul{
            display: flex;
            width: 100%;
            justify-content: center;
            align-items: center;
            gap: 10px;
        }
        main .best ul li {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 150px;
            height: 150px;
            border: 1px solid black;
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
                    <c:if test="${admin != null}">
                    <li><a href="${pageContext.request.contextPath}/adminpage/1?searchUser=&userInfo=">관리자페이지</a></li>
                    </c:if>
                    <li><a href=""><img src="${pageContext.request.contextPath}/image/search.png" alt="" id="search-logo"></a></li>
                    <li><a href="${pageContext.request.contextPath}/cart"><img src="${pageContext.request.contextPath}/image/bag_buy_cart.png" alt="" id="cart-logo"></a></li>
                    <c:if test="${user eq null}">
                    <li><a href="${pageContext.request.contextPath}/loginpage">로그인 |</a></li>
                    </c:if>
                    <c:if test="${user != null}">
                    <li><a href="${pageContext.request.contextPath}/logout">로그아웃 |</a></li>
                    </c:if>
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
    <main>
        <div class="event">
			<img src="image/event.png" alt="">
        </div>
        <div class="best">
            <h1>Best</h1>
            <ul>
                <li>1</li>
                <li>2</li>
                <li>3</li>
                <li>4</li>
                <li>5</li>
            </ul>
        </div>
    </main>
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
    
     <script>
        var slideIndex = 0;

        window.onload = function () {
            showSlides(slideIndex);

            var sec = 3000;
            setInterval(function () {
                slideIndex++;
                showSlides(slideIndex);
            }, sec);
        }

        function showSlides(n) {
            if ((n + 1) > 7) {
                slideIndex = 0; n = 0;
            } else if (n < 0) {
                slideIndex = (7 - 1);
                n = (7 - 1);
            }
            var slide = document.querySelector(".event img");
            for (let i = 0; i < 7; i++) {
                slide.setAttribute("src", "image/event" + slideIndex + ".png");
            }
        }

        
    </script>
</body>

</html>