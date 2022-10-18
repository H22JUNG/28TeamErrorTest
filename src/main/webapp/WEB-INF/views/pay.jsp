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

        #coverContainer{
            background-color:#FFF7E7;
            width: 100%;
            position: relative;
            top: 33%;
            padding-top: 2%;
        }

        #container {
            margin: 0 auto;
            width: 90%;
            max-width: 1400px;
            background-color: white;
            display: flex;
            justify-content: center;
            /* align-items: center; */
            padding-top: 2%;
            padding-bottom: 2%;
            gap: 20px;
          
        }

        .itembox {
            border-bottom: 2px solid #71B2B4;
            padding: 10px 0;
            width: 100%;
        }
        .smallItembox{
            display: flex;
            align-items: center;
            width: 100%;
        }
        .itemboxText{
            flex: 1;
        }
        .delete{
            float: right;
        }
        

        .itemImage img {
            width: 100px;
        }

        .itemImage {
            margin: 0px 10px;
        }

        #right {
            width: 350px;
            height: 500px;
            border: 1px solid white;
        }

        .number {
            width: 40px;
            border-style: none;
        }

        .btn1 {
            background-color: white;
            border: 2px solid #fff7e7;
            width: 25px;
            height: 25px;
            border-radius: 10px 10px;
            cursor: pointer;
        }
        #infor{
            margin: 20px 0;
        }

        .inforInput {
            border-style: none;
            background-color: #D9D9D9;
            width: 250px;
            height: 40px;
            margin: 10px 0;
            border-radius: 10px 10px;
            padding-left: 10px;
        }
        #sample6_postcode{
            background-color: #D9D9D9;
            border : 2px solid #D9D9D9;
            margin-left: 5px;
            border-radius: 5px 5px;
        }
        #addBtn{
            background-color:#71B2B4;
            border: 1px solid #71B2B4;
            color: white;
            border-radius: 5px 5px;
            font-size: 12px;
            cursor: pointer;
        }
        #sample6_address{
            width: 70%;
        }

        .checkItems {
            border-bottom: 2px solid#71B2B4;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        label{
            display: block;
            border-bottom: 2px solid #71B2B4;
            padding:15px 0;
        }
        #selectPay p{
            font-size: 11px;
        }
        #messageContainer{
            margin: 15px 0;
        }
        #message{
            resize: none; 
            
        }
        #point{
            text-align: right;
        }
        #allPay{
            width: 100%;
            background-color:  #71B2B4;
            height: 60px;
            border-radius: 20px 20px;
            margin-top: 10px;
            align-items: center;
            display: flex;
            padding-left: 20px;
            color: white;
        }
        #rightPrice{
            
            border: 2px solid #71B2B4;
            height: 300px; 
            border-radius: 20px 20px;
            justify-content: center;
            align-items: center;
            display: flex;
            flex-direction: column;
            gap: 15px;
            
        }
        #nowButton{
            background-color: #71B2B4;
            color: white;
            font-size: 18px;
            font-style: bold;
            border: 2px solid #71B2B4;
            border-radius: 15px 15px;
            width: 300px;
            height: 60px;
        }
        #nowButton:hover{
            font-size: 22px;
            cursor: pointer;
        }
        #rightBottom{
            border:2px solid  #71B2B4;
            border-radius: 20px 20px;
            height: 100px;
            margin-top: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        @media  (max-width : 700px){
            *{
                box-sizing: content-box;
            }
            #container{
                flex-direction: column;

            }
          
            .infor{
                flex-direction: column;
             
            }
            .inforBox{
                flex-direction: column;
                display: flex;
                padding: 20px 5%;
                
            }
            .inforBox input{
                width: 400px;
            }
            .checkItems{
                padding-left: 20px;
            }
            #selectPayForm{
                padding-left: 5%;
            }
            #message{
                width: 100%;
            }
            #allPay {
                width: 70%;
                margin-left: 10%;
            }
            #right{
                margin-left: 20%;
            }
             #sample6_postcode{
                width: 100px;
            }
            #addBtn{
                width: 50px;
            }
        }
        @media (max-width:500px) {
            #right{
                margin-left: 10%;
            }
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
    <div id="coverContainer">
    <div id="container">
        <div class="left">
            <div id="top">
                <h3>선택한 상품</h3>
                <div class="itembox">
                    <div class="smallItembox">
                    <div class="itemImage">
                        <img src="${pageContext.request.contextPath}/image/dresser1_2.webp">
                    </div>
                    <div class="itemboxText">
                        <h4>상품 이름 : </h4>
                        <p>Size : </p>
                        <h4>상품 가격 : </h4>
                        
                          
                    </div>
                </div>

                </div>
                <div class="itembox">
                    <div class="smallItembox">                    <div class="itemImage">
                        <img src="${pageContext.request.contextPath}/image/dresser1_2.webp">
                    </div>
                    <div class="itemboxText">
                        <h4>상품 이름 : </h4>
                        <p>Size : </p>
                        <h4>상품 가격 : </h4>
                        </div>

                    </div>
                </div>
            </div>
            <!--여기까지 top끝-->
             <div id="infor">
                <h3>고객 정보 입력</h3>
                <div class="inforBox"> 
                <div>
                <input type="text" id="sample6_postcode" placeholder="우편번호">
                <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" id="addBtn"><br>
                </div>
               주소<input type="text" class="inforInput" required  id="sample6_address" placeholder="주소"><br>
               상세 주소<input type="text" class="inforInput"  id="sample6_detailAddress" required placeholder="상세주소를 입력해주세요"> <input type="text" id="sample6_extraAddress" placeholder="(동, 건물)" class="inforInput"></div>
                <div class="inforBox">주문자  <input type="text" class="inforInput" placeholder="이름을 입력해주세요" required> 연락처 <input type="text" class="inforInput" placeholder="숫자로만 입력해주세요" required></div>
            </div>
            <!--여기까지 infor끝-->
            <div id="checkItem">
                <h3>결제 목록</h3>
                <div class="checkItems">
                    <h4>물건 이름 </h4>
                    <p>물건 가격</p>
                </div>
                <div class="checkItems">
                    <h4>물건 이름</h4>
                    <p>물건 가격</p>
                </div>
                <div class="checkItems">
                    <h4>물건 이름</h4>
                    <p>물건 가격</p>
                </div>
                <div class="checkItems">
                    <h4>물건 이름</h4>
                    <p>물건 가격</p>
                </div>
            </div>
            <!--여기까지 결제 할 물건 -->
            <div id="selectPay">
                <h3>결제 방법 선택</h3>
                <form id="selectPayForm" action="">
               <label for="cash">무통장입금<input type="radio" class="pay" name="pay" value="cash" id="cash"></label>
               <label for="card">카드결제<input type="radio" class="pay" name="pay" value="card" id="card"></label>
               <p>사용가능 적립금 : </p><label for="point">사용할 적립금 <input type="text" class="pay" id="point"></label>
            </form>
            </div>
            <!--여기 까지 결제 할 물건-->
            <div id="messageContainer">
                <h3>배송 요청 사항</h3>
                <textarea name="" id="message" cols="100" rows="10" >
            </textarea>
                <div id="allPay">
                    <h3>총 결제 금액 : </h3>
                    <p>돈 내놔</p>
                </div>
            </div>
            <!--여기까지 총 결제 끝-->
        </div>

        <div id="right">
            <div id="rightPrice">
                <h3>총 결제 금액 : </h3>
                <p>총 상품 금액 : </p>
                <button id="nowButton">바로 결제 하기</button>
                <p>적립금 : - 원 사용</p>
                <p>배송비 : 2500원</p>
            </div>
            <div id="rightBottom">
              <p>주문 번호 : </p>
            </div>
        </div>
    </div>
</div>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
  function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
    </body>
</html>