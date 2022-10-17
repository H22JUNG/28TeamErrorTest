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

        body {

            background-color: #fff7e7;
        }

        #container {
            margin: 0 auto;
            width: 90%;
            max-width: 1400px;
            background-color: white;
            display: flex;
            justify-content: center;
            /* align-items: center; */
            gap: 20px;
        }

        .itembox {
            border-bottom: 2px solid #fff7e7;;
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
            border: 2px solid #fff7e7;;
            width: 25px;
            height: 25px;
            border-radius: 10px 10px;
            cursor: pointer;
        }
        #infor{
            margin: 20px 0;
        }

        .inforInput {
            border: 2px solid #fff7e7;;
            width: 250px;
            height: 40px;
            margin: 10px 0;
            border-radius: 10px 10px;
        }

        .checkItems {
            border-bottom: 2px solid#fff7e7;;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        label{
            display: block;
            border-bottom: 2px solid#fff7e7;;
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
            background-color: #D9D9D9;
            height: 60px;
            border-radius: 20px 20px;
            margin-top: 10px;
            align-items: center;
            display: flex;
            padding-left: 20px;
            color: white;
        }
        #rightPrice{
            background-color: #fff7e7;;
            border: 2px solid #fff7e7;;
            height: 300px; 
            border-radius: 20px 20px;
            justify-content: center;
            align-items: center;
            display: flex;
            flex-direction: column;
            gap: 15px;
            
        }
        #nowButton{
            background-color: #D9D9D9;
            color: white;
            font-size: 18px;
            font-style: bold;
            border: 2px solid #D9D9D9;
            border-radius: 15px 15px;
            width: 300px;
            height: 60px;
        }
        #nowButton:hover{
            font-size: 22px;
            cursor: pointer;
        }
        #rightBottom{
            background-color: #fff7e7;;
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
        }
        @media (max-width:500px) {
            #right{
                margin-left: 10%;
            }
        }
        
    </style>
</head>

<body>
    <div id="container">

        <div class="left">
            <div id="top">
                <h3>선택한 상품</h3>
                <div class="itembox">
                    <div class="smallItembox">
                    <div class="itemImage">
                        <img src="./projectimg/dresser/dresser1_1.webp">
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
                        <img src="./projectimg/dresser/dresser1_2.webp">
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
                <div class="inforBox">배송지명  <input type="text" class="inforInput" required> 주문자 <input type="text" class="inforInput" placeholder="받으실분 성함" required></div>
                <div class="inforBox">주소  <input type="text" class="inforInput" required> 연락처 <input type="text" class="inforInput" placeholder="숫자만 입력해주세요" required></div>
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
    </body>
</html>