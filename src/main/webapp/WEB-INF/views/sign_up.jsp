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

        .signup-container {
            display: flex;
            justify-content: center;
        }

        /* 로고 */
        .logo {
            flex: 0.5;
            display: flex;
            justify-content: center;
            align-items: flex-end;
        }

        .logo img {
            width: 265px;
        }

        /* 회원가입박스 */
        .signup-box {
            background: #FFFFFF;
            mix-blend-mode: normal;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            border-radius: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px;
        }

        .signup-box form {
            background-color: white;
            display: flex;
            flex-direction: column;
            gap: 30px;
            position: relative;
        }

        .signup-box form h3 {
            font-size: 21px;
        }

        /* 닫기 버튼 */
        form span {
            font-size: 15px;
            position: absolute;
            left: 100%;
            top: -5%;
            cursor: pointer;
        }

        /* input */
        .signup-box form .signupinput {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .signup-box form input[type="text"],
        .signup-box form input[type="password"],
        .signup-box form input[type="email"] {
            width: 335px;
            height: 52px;
            background: #FFFFFF;
            border: 0.5px solid #CFCFCF;
            border-radius: 15px;
            padding: 10px;
        }

        .idli {
            display: flex;
            gap: 10px;
        }

        #userid {
            width: auto;
            flex: 1;
        }

        /* 아이디 중복 */
        .idcheck {
            background: rgba(162, 212, 214, 0.44);
            padding: 10px;
            border: 0.5px solid #CFCFCF;
            border-radius: 15px;
            flex: 1;
            cursor: pointer;
        }

        /* 회원가입 버튼 */
        .btn {
            background: linear-gradient(90deg, #21A5B5 0%, #71B2B4 100%);
            border: 0;
            color: white;
            border-radius: 15px;
            width: 335px;
            height: 52px;
            cursor: pointer;

            /* 폰트 */
            font-family: 'SeoulHangang';
            font-style: normal;
            font-weight: 400;
            font-size: 18px;
            line-height: 100%;
        }
    </style>
</head>

<body>
    <div class="background">

    </div>
    <div class="logo">
        <img src="${pageContext.request.contextPath}/image/KakaoTalk_20221012_170414651.png" alt="">
    </div>
    <div class="signup-container">
        <div class="signup-box">
            <form action="" method="post">
                <span>╳</span>
                <h3>회원가입</h3>
                <ul class="signupinput">
                    <li>
                        <input type="text" name="username" id="username" placeholder="이름">
                    </li>
                    <li class="idli">
                        <input type="text" name="userid" id="userid" placeholder="아이디">
                        <button class="idcheck">아이디 중복 확인</button>
                    </li>
                    <li>
                        <input type="password" name="password" id="password" placeholder="비밀번호">
                    </li>
                    <li>
                        <input type="password" name="pwcheck" id="pwcheck" placeholder="비밀번호 확인">
                    </li>
                    <li>
                        <input type="email" name="email" id="email" placeholder="이메일">
                    </li>
                </ul>
                <button class="btn">회원가입</button>
            </form>
        </div>
    </div>
</body>

</html>