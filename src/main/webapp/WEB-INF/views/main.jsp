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

        body {
            background: url("${pageContext.request.contextPath}/image/KakaoTalk_20221013_170149504.webp") 0% 300% fixed;
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
			<ul>
				<li>Category</li>
				<li><a href="${pageContext.request.contextPath}/category/furniture">가구</a></li>
				<li><a href="${pageContext.request.contextPath}/category/fabric">패브릭</a></li>
				<li><a href="${pageContext.request.contextPath}/category/storage">수납용품</a></li>
				<li><a href="${pageContext.request.contextPath}/category/supplies">생활용품</a></li>
				<li>공지사항</li>
				<li>Q&A</li>
				<li>이벤트</li>
			</ul>
		</nav>
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

    </footer>
    
     <script>
 	// 미래의 나에게 : 나중에 잊지말고 반드시 7 => 이벤트 count로 바꿔야돼
     
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