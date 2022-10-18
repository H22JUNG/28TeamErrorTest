<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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

        /* 마이페이지 */
        main {
            background-color: white;
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
			align-items: center
		}
		
        /* 마이페이지 메뉴 */
        main aside {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 50px;
        }

        main aside ul {
            display: flex;
            flex-direction: column;
            gap: 10px;
            width: 100%;
        }

        main aside ul li {
            display: flex;
            justify-content: center;
        }

        main aside ul li>div {
            border: 1px solid #F0F0F0;
            border-radius: 25px;
            width: 430px;
            height: 130px;
            padding: 30px;
            display: flex;
            justify-content: space-between;
            cursor: pointer;
        }

        main aside ul li>div .mytext {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        /* 선택중인 메뉴 css */
        main aside ul li:first-child>div {
            border: 1px solid transparent;
            background-image: linear-gradient(#fff, #fff), linear-gradient(90deg, #21A5B5 0%, #71B2B4 100%);
            background-origin: border-box;
            background-clip: padding-box, border-box;
        }


        /* open 버튼 */
        main aside ul li>div .open {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        main aside ul li>div .open>div {
            font-size: 30px;
            background: #f8f8f8;
            border-radius: 15px;
            width: 50px;
            height: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
           
        }

        main aside ul li>div .open>div span {
            height: 100%;
            background: linear-gradient(90deg, #21A5B5 0%, #71B2B4 100%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        /* 내정보 */
        main section {
            flex: 1.2;
            height: 100%;
            padding: 30px;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        main section .my-info {
            width: 500px;
            padding: 20px 0;
        }
        
        main section .my-info ul {
            display: flex;
            flex-direction: column;
        }

        main section .my-info ul li {
            border-bottom: 1px solid #ddd;
            padding: 10px;
            display: flex;
        }
        
        main section .my-info ul li:first-child {
            border-top: 1px solid #ddd;
        }

        main section .my-info ul li span {
            display: block;
            width: 200px;
        }

        main section .my-info ul li input[type="password"]{
            background: #D9D9D9;
            border: 0;
            padding: 0 5px;
            width: 150px;
        }

        /* 수정버튼 */
        main section .edit {
            width: 500px;
            display: flex;
            justify-content: flex-end;
            padding : 20px 0;
        }
        
        main section .edit #edit {
            background: #D9D9D9;
            border: 0;
            width: 90px;
            height: 30px;
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
    </header>
    <main>
    	<div class="mypage-container">
        <aside>
            <ul id="sidemenulist">
                <li>
                    <div class="sidemenu">
                        <div class="mytext">
                            <h4>마이페이지</h4>
                            <p>내 정보 조회 / 수정 / 적립금조회</p>
                        </div>
                        <div class="open">
                            <div><span>+</span></div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="sidemenu">
                        <div class="mytext">
                            <h4>장바구니</h4>
                        </div>
                        <div class="open">
                            <div><span>+</span></div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="sidemenu">
                        <div class="mytext">
                            <h4>주문내역 조회</h4>
                            <p>주문 / 배송 조회</p>
                        </div>
                        <div class="open">
                            <div><span>+</span></div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="sidemenu">
                        <div class="mytext">
                            <h4>내가 쓴 글</h4>
                        </div>
                        <div class="open">
                            <div><span>+</span></div>
                        </div>
                    </div>
                </li>
            </ul>
        </aside>
        <section>
            <h2>내 정보 조회</h2>
            <form action="${pageContext.request.contextPath}/" method="post" class="my-info">
                <ul>
                    <li><span>아이디</span> ${user.userid}</li>
                    <li><span>이름</span>${user.username}</li>
                    <li><span>비밀번호 변경</span><input type="password" name="" id=""></li>
                    <li><span>비밀번호 확인</span><input type="password" name="" id=""></li>
                    <li><span>휴대폰 번호</span> 010-xxxx-xxxx</li>
                    <li><span>적립금</span>xxx p</li>
                </ul>
            <div class="edit">
                <button id="edit">
                    수정하기
                </button>
            </div>
            </form>
        </section>
        </div>
    </main>
    <footer>

    </footer>
    
        <script>
        for (let i = 0; i < document.getElementById("sidemenulist").children.length; i++) {
            document.getElementsByClassName("sidemenu")[i].addEventListener("click", function(){
                location.href = "${pageContext.request.contextPath}/movemypage/"+i;
            });
        };
	    </script>
</body>

</html>