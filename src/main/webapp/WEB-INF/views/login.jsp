<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            background: url("${pageContext.request.contextPath}/image/KakaoTalk_20221013_170149504.webp") center;
            background-size: cover;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            z-index: 0;
        }

        .background {
            width: 100vw;
            height: 100vh;
            background: rgba(255, 255, 255, 0.4);
            position: absolute;
            z-index: -1;
        }

        .login-container {
            display: flex;
            flex: 3;
        }

        /* 로고 */
        .logo {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: flex-end;
        }

        .logo img {
            width: 265px;
        }

        /* 로그인박스 */
        .login-box {
            background: #FFFFFF;
            mix-blend-mode: normal;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            border-radius: 20px;
            width: 435px;
            height: 440px;
            display: flex;
            justify-content: center;
            align-items: center;

        }

        .login-box form {
            background-color: white;
            display: flex;
            flex-direction: column;
            gap: 30px;
            position: relative;
        }

        .login-box form h3 {
            font-size: 21px;
        }

        /* 닫기 버튼 */
        form span {
            font-size: 15px;
            position: absolute;
            left: 100%;
            top: -7%;
        }

        /* input */
        .login-box form .logininput {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .login-box form input[type="text"],
        .login-box form input[type="password"] {
            width: 335px;
            height: 52px;
            background: #FFFFFF;
            border: 0.5px solid #CFCFCF;
            border-radius: 15px;
            padding: 10px;
        }

        /* 비밀번호 눈모양 */
 

        /* 아이디 저장 */
        form input[type="checkbox"] {
            width: 16px;
            height: 16px;
            border: 1px solid #CFCFCF;
            border-radius: 50%;
        }

        /* 아이디/비밀번호 찾기, 회원가입 */
        .login-menu {
            display: flex;
            flex-direction: row;
            justify-content: center;
            gap: 10px;
        }

        .login-menu li a {
            font-weight: 400;
            font-size: 16px;
            text-decoration: none;
            background: linear-gradient(90deg, #21A5B5 0%, #71B2B4 100%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        /* 로그인 버튼 */
        button {
            background: linear-gradient(90deg, #21A5B5 0%, #71B2B4 100%);
            border: 0;
            color: white;
            border-radius: 15px;
            width: 335px;
            height: 52px;
            cursor: pointer;

            /* 로그인 폰트 */
            font-family: 'SeoulHangang';
            font-style: normal;
            font-weight: 400;
            font-size: 18px;
            line-height: 100%;
        }
    </style>
</head>
<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">

<body>
    <div class="background">

    </div>
    <div class="logo">
        <img src="${pageContext.request.contextPath}/image/KakaoTalk_20221012_170414651.png" alt="">
    </div>
    <div class="login-container">
        <div class="login-box">
            <form action="${pageContext.request.contextPath}/login" method="post">
                <span>╳</span>
                <h3>로그인</h3>
                <ul class="logininput">
                    <li>
                        <input type="text" name="userid" id="userid" placeholder="아이디를 입력하세요">
                    </li>
                    <li>
                        <input type="password" name="password" id="password" placeholder="비밀번호를 입력하세요">
                        <i class="fa fa-eye fa-lg"></i>
                    </li>
                    <li>
                        <input type="checkbox" name="saveid" id="saveid"><label for="saveid">아이디 저장</label>
                    </li>
                </ul>
                <ul class="login-menu">
                    <li><a href="">아이디 찾기</a></li>
                    <li><a href="">비밀번호 찾기</a></li>
                    <li><a href="${pageContext.request.contextPath}/signuppage">회원가입</a></li>
                </ul>
                <button>로그인</button>
            </form>
        </div>
    </div>

    <script>
        

    </script>
</body>

</html>