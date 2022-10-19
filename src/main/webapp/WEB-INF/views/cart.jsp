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
        main aside ul li:nth-child(2)>div {
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

        
        /* 장바구니 */
.cart_container {
            width: 60%;
            min-width: 800px;
            /* border: 1px solid rgb(173, 173, 173); */
        }

        /* 장바구니 테이블 */
        table,
        th,
        td {
            /* border: 1px solid gray; */
            border-top: none;
            border-collapse: collapse;
            text-align: center;
        }

        table {
            border-top : 2px solid black;
            border-bottom: 2px solid rgb(218, 218, 218);
        }

        th{
            border-bottom: 1px solid rgb(218, 218, 218);
        }

        /* 장바구니 header */
        .cart_goods {
            border-bottom: 1px solid #16181a;
            padding: 0px 0px 20px;
            display: flex;
            justify-content: space-between;
        }

        .cart_goods_text {
            /* border: 1px solid green; */
            font-size: 20px;
            font-weight: bold;
        }

        .step_location {
            font-weight: bold;
            font-size: 1.08rem;
        }

        .step_location_1 {
            color: #21A5B5;
        }

        .material-symbols-outlined {
            font-size: 20px;
        }

        .symbols1 {
            color: #21A5B5;
        }

        .next {
            font-weight: 2000;
            font-size: 1.2rem;
        }

        .next1 {
            color: #21A5B5;
        }

        /* 장바구니 header */


        /* 상품 정보 */
        input[type="checkbox"] {
            -webkit-appearance: none;
            position: relative;
            width: 22px;
            height: 22px;
            cursor: pointer;
            outline: none !important;
            border: 1px solid #eeeeee;
            border-radius: 2px;
            background: #fbfbfb;
        }

        input[type="checkbox"]::before {
            content: "\2713";
            position: absolute;
            top: 50%;
            left: 50%;
            overflow: hidden;
            transform: scale(0) translate(-50%, -50%);
            line-height: 1;
        }

        input[type="checkbox"]:hover {
            border-color: rgba(170, 170, 170, 0.5);
        }

        input[type="checkbox"]:checked {
            background-color: #21A5B5;
            border-color: rgba(255, 255, 255, 0.3);
            color: white;
        }

        input[type="checkbox"]:checked::before {
            border-radius: 2px;
            transform: scale(1) translate(-50%, -50%)
        }

        .info {
            width: 70%;
            padding: 10px;
        }

        .order {
            width: 15%;
        }

        .img {
            width: 15%;
            border-right: 1px solid white;
        }

		#ct_cont {
			padding: 0;
		}

        .main_content {
            height: 200px;
        }
        
        .right_line {
            border-right: 1px solid rgb(206, 206, 206);
        }

        .top_line {
            border-top: 1px solid rgb(206, 206, 206);
            padding: 8px;
        }

        .line {
            border-top: 1px solid rgb(219, 219, 219);
            width: 95%;
            margin-left: 10px;
            margin-right: 20px;

        }

        .item {
            display: flex;
            align-items: flex-end;
            justify-content: space-around;
            padding-top: 10px;
        }

        .op_name {
            margin: 0;
        }
        
        .op_name_inner {
            margin-top: 2px;
            font-size: 13px;
        }

        .price {
            display: flex;
            padding-left: 10px;
        }

        .dc {
            font-size: 5px;
            margin: 0;
        }
        .origin {
            font-size: 13px;
            margin: 0;
            color: orangered;
            font-weight: bold;
        }

        .bt_del {
            border: 1px solid rgb(212, 212, 212);
            background-color: white;
            height: 25px;
            width: 25px;
            cursor: pointer;
        }

        ._delete_selected {
            border: 1px solid #21A5B5;
            background-color: #21A5B5;
            color: white;
            padding: 3px 5px;
            cursor: pointer;
        }

        .bt_cnt {
            /* 굳이 없어도 되나? */
            width: 300px;
            display: flex;
            justify-content: right;
        }

        .ip_quantity {
            border: 1px solid rgb(212, 212, 212);
            width: 25px;
            height: 25px;
            text-align: center;
            margin-left: -2px;
            border-right: none;
            /* border-left: none; */
        }

        .cnt_minus,
        .cnt_plus {
            background-color: white;
            border: 1px solid rgb(212, 212, 212);
            color: gray;
            font-weight: bold;
            height: 25px;
            width: 25px;
            cursor: pointer;
        }

        .num {
            font-size: 1.1rem;
            font-weight: bold;
        }

        /* // 상품 정보 */

        .ct_total {
            display: flex;
            justify-content: space-between;
            padding: 40px 0;
        }

        /* .ct_total2{
            display: flex;
            justify-content: space-between;
        } */

        .matter {
            width: 200px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        /* 없어도 됌 */
        /* dd {
            margin-left: 10px;
        } */

        .total {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            padding: 15px 0;
        }

        /* dt{
            float: left;
        } */
        h3 {
            font-size: 2rem;
        }

        ._buy_amount {
            font-weight: bold;
        }

        ._total_amount {
            font-weight: bold;
            font-size: 1.5rem;
            color: #21A5B5;
        }

        ._delivery_amount {
            font-weight: bold;
        }

        .total_price_name {
            font-size: 20px;
            font-weight: bold;
            color: #21A5B5;
        }

        .total {
            border-top: 1px solid rgb(219, 219, 219);
            padding-top: 15px;
        }


        /* 맨 마지막 버튼 */
        .bt_area {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .bt_continue {
            text-decoration: none;
            color: gray;
            font-weight: bold;
            border: 1px solid #21A5B5;
            padding: 15px 55px;
            cursor: pointer;
        }
        
        .bt_submit {
            font-size: 1rem;
            color: white;
            font-weight: bold;
            border: 1px solid #21A5B5;
            background-color: #21A5B5;
            padding: 15px 70px;
            margin-left: 15px;
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
	<h2>장바구니</h2>
				<div class="cart_container">
					<!-- 장바구니 header -->
					<div class="ct_header">
						<div class="cart_goods">
							<span class="cart_goods_text"> 전체 <span
								class="cart_goods_num _cart_cnt">db</span> 개
							</span>

							<div class="step_location">
								<span class="step_location_1">01 장바구니</span>&nbsp;<span
									class="next next1">⟩</span>&nbsp; <span class="step_location_2">02
									주문/결제</span>&nbsp;<span class="next">⟩</span>&nbsp; <span
									class="step_location_3">03 결제완료</span>
							</div>
						</div>
					</div>
					<!-- // 장바구니 header -->

					<section id="ct_cont">
						<div>
							<table>
								<thead>
									<tr>
										<th><input type="checkbox" class="_check_all"
											checked="checked"></th>
										<th class="img"></th>
										<th class="info right_line">상품정보</th>
										<th class="order">상품금액</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td class="ch_top"><input type="checkbox"
											class="_check_all" checked="checked"></td>
										<td><img src="" alt="">db이미지</td>
										<td class="main_content right_line">
											<div class="prod_tit">
												<a href="" target="_blank">여기에 상품 링크 걸고</a>
												<div class="prod_name">
													<strong class="name">여기에 상품명을 불러와야하네</strong>
												</div>
											</div>

											<div class="higlight_wrap">
												<p class="line"></p>
												<div class="item">
													<p class="op_name">
														<span class="op_name_inner">상품옵션이름을 넣어줄거야.</span>
													</p>
													<div class="bt_cnt">
														<button type="button" class="cnt_minus"
															data-action-type="decrease">﹣</button>
														<input type="text" class="ip_quantity" title="수량 입력"
															value="1">
														<button type="button" class="cnt_plus"
															data-action-type="increase">﹢</button>

														<div class="price">
															<div class="price_inner">
																<!-- <p class="dc">dc가격</p> -->
																<p class="origin">원래가격</p>
															</div>
															<button type="button" class="bt_del">✖</button>
														</div>
													</div>
												</div>
											</div>
										</td>
										<td>
											<!-- 주문 금액 -->
											<div class="order_price">
												<div class="price_inner">
													<div class="price_cont">
														<p class="final">
															<span class="num">35,800</span>원
														</p>
													</div>
												</div>
											</div> <!-- // 주문 금액 -->
										</td>
									</tr>
								</tbody>

								<tfoot>
									<tr>
										<td class="top_line"><input type="checkbox"
											class="_check_all" checked="checked"></td>
										<td class="top_line">
											<div class="product_footer">
												<button type="button" class="_delete_selected">삭제</button>
											</div>
										</td>
										<td class="top_line" colspan="2"></td>
									</tr>
								</tfoot>
							</table>
						</div>
					</section>

					<!-- 총 주문금액 -->
					<div class="ct_total">
						<h3>총 주문금액</h3>
						<dl class="matter">
							<dt>총 상품금액</dt>
							<dd>
								<em class="_buy_amount">69,700</em> <span>원</span>
							</dd>

							<dt>배송비</dt>
							<dd>
								<em class="_delivery_amount">3,500</em> <span>원</span>
							</dd>

						</dl>
					</div>

					<div class="ct_total2">
						<dl class="total">
							<dt class="total_price_name">결제 예상금액</dt>
							<dd>
								<em class="_total_amount">49,200</em> <span>원</span>
							</dd>
						</dl>
					</div>
					<!--// 총 주문금액 -->

					<!-- 쇼핑 계속하기, 구매하기 -->
					<div class="bt_area">
						<a href="" class="bt_continue">쇼핑 계속하기</a>
						<button type="button" class="bt_submit">구매하기</button>
					</div>
				</div>
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