<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

ul, li {
	list-style-type: none;
}

body {
	background:
		url("${pageContext.request.contextPath}/image/KakaoTalk_20221013_170149504.webp")
		0% 300% fixed;
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

/*main*/
body {
	width: 100%;
	background: #fff;
	min-width: 320px;
}

ul, ol, li {
	list-style: none;
}

table {
	width: 100%;
	border-spacing: 0;
	border-collapse: collapse;
}

img {
	border: 0;
}

label, img, input, select, textarea, button {
	vertical-align: middle;
}

a {
	color: #000;
	text-decoration: none;
}

select {
	height: 32px;
	font-size: 13px;
	color: #373737;
	border: 1px solid #e9e9e9;
	background: #fff;
	border-radius: 5px;
}

input[type=number] {
	width: 100%;
	height: 30px;
	font-size: 13px;
	color: #373737;
	border: 1px solid #e9e9e9;
	background: #fff;
	text-indent: 20px;
	border-radius: 5px;
	transition: all 0.5s;
	vertical-align: middle;
}

input::-webkit-input-placeholder {
	color: #b5b5b5;
	font-size: 12px;
	line-height: 100%;
}

.container {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.detail_top {
	display: flex;
}

.options {
	padding: 0 0 0 395px;
	box-sizing: border-box;
	width: 962px;
}

/*사진슬라이드 - 상세페이지 윗부분 좌측*/
#wrapper {
	position: relative;
	width: 250px;
	margin: 50px auto;
	height: 400px;
	color: #fff;
	text-shadow: rgba(0, 0, 0, 0.1) 2px 2px 0px;
}

#slider_wrap {
	border-radius: 20px;
	position: relative;
	width: 600px;
	height: 400px;
	overflow: hidden;
}

#slider_wrap ul#slider {
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
}

#slider_wrap ul#slider li {
	float: left;
	position: relative;
	width: 600px;
	height: 400px;
}

#slider_wrap ul#slider li img {
	display: block;
	width: 100%;
	height: 100%;
}
/*사진슬라이드 버튼*/
.btns {
	position: absolute;
	width: 50px;
	height: 60px;
	top: 50%;
	margin-top: -25px;
	line-height: 57px;
	text-align: center;
	cursor: pointer;
	background: rgba(0, 0, 0, 0.1);
	z-index: 100;
	-webkit-transition: all 0.1s ease;
	-moz-transition: all 0.1s ease;
	-o-transition: all 0.1s ease;
	-ms-transition: all 0.1s ease;
	transition: all 0.1s ease;
}

.btns:hover {
	background: rgba(0, 0, 0, 0.3);
}

#next {
	right: -50px;
	border-radius: 7px 0px 0px 7px;
}

#previous {
	left: -50px;
	border-radius: 0px 7px 7px 7px;
}

#slider_wrap.active #next {
	right: 0px;
}

#slider_wrap.active #previous {
	left: 0px;
}
/*bar*/
#pagination_wrap {
	position: relative;
	min-width: 20px;
	margin-top: 350px;
	margin-left: auto;
	margin-right: auto;
	height: 15px;
	text-align: center;
}

#pagination_wrap ul {
	width: 100%;
}

#pagination_wrap ul li {
	position: relative;
	margin: 0 4px;
	display: inline-block;
	width: 5px;
	height: 5px;
	border-radius: 50%;
	background: #fff;
	opacity: 0.5;
	top: 0;
}

#pagination_wrap ul li.active {
	width: 12px;
	height: 12px;
	top: 3px;
	opacity: 1;
	box-shadow: rgba(0, 0, 0, 0.1) 1px 1px 0px;
}
/*ANIMATION*/
#slider_wrap ul, #pagination_wrap ul li {
	-webkit-transition: all 0.3s cubic-bezier(1, .01, .32, 1);
	-moz-transition: all 0.3s cubic-bezier(1, .01, .32, 1);
	-o-transition: all 0.3s cubic-bezier(1, .01, .32, 1);
	-ms-transition: all 0.3s cubic-bezier(1, .01, .32, 1);
	transition: all 0.3s cubic-bezier(1, .01, .32, 1);
}

/*옵션부분 - 상세페이지 윗부분 우측*/
.detail_top table {
	border: none;
}

.detail_top h2 {
	margin: 15px 0 15px;
	font-size: 24px;
	color: #232323;
	line-height: 26px;
	padding: 0 0 20px;
	border-bottom: 2px solid #333;
}

.detail_top table th, td {
	padding: 10px 0;
	font-size: 15px;
	color: #444;
	text-align: left;
}

.detail_top table td.price {
	font-size: 22px;
}

.detail_top table td input {
	border: none;
}

.detail_top table td input:focus {
	outline: none;
}

/*옵션선택*/
.detail_top table select {
	width: 30%;
	border: 1px solid #c6c6c6;
	box-sizing: border-box;
	padding-left: 10px;
}

.detail_top table select::-ms-expand {
	display: none;
}

/*옵션버튼*/
.detail_top .datail_top_btns {
	text-align: center;
	padding: 45px 0 0;
}

.detail_top .datail_top_btns>a {
	display: inline-block;
	width: 136px;
	height: 50px;
	font-size: 17px;
	color: #fff;
	border-radius: 5px;
	line-height: 50px;
}

.detail_top .datail_top_btns>a.btn1 {
	background: white;
	border: 1px solid #4D5F75;
	color: #4D5F75;
}

.detail_top .datail_top_btns>a.btn2 {
	background: #4D5F75;
}

.detail_top .datail_top_btns>.btn1:hover {
	border: 1px solid #494b61;
	color: #494b61;
	font-weight: 400;
}

.detail_top .datail_top_btns>.btn2:hover {
	background-color: #494b61
}

hr {
	margin: 10px 0;
}

/*탭 메뉴*/
.tabmenu {
	font-size: 0;
}

.tabmenu input[type="radio"] {
	display: none;
}

.tabmenu label {
	display: inline-block;
	width: 33%;
	padding: 15px 0;
	color: #444;
	font-weight: 800;
	background: white;
	font-size: 20px;
	text-align: center;
	cursor: pointer;
}

.tabmenu label:nth-of-type(2) {
	width: 34%;
}

.tabmenu label:hover {
	color: #4D5F75;
}

.tabmenu input[type="radio"]:checked+label {
	border-bottom: 1px solid #4D5F75;
}
/*탭의 내용부분*/
.tabmenu>div {
	display: none;
	font-size: 60px;
	padding: 20px;
	min-height: 300px;
}

.tabmenu #tab1:checked ~ #content1, .tabmenu #tab2:checked ~ #content2,
	.tabmenu #tab3:checked ~ #content3 {
	display: block;
}
/* #content1{margin-left: 150px;} */

/*상세정보 내용*/
summary {
	font-size: 15px;
	cursor: pointer;
	list-style: none;
	font-weight: 600;
	margin: 10px 0;
}

.summary1, .summary2, .summary3, .summary4 {
	width: 60%;
	background: #e9e9e9;
	font-size: 10px;
	line-height: 25px;
	margin: 10px 0;
}
</style>
<script type="text/javascript" src="js/jquery-3.6.1.min.js"></script>
<link rel="stylesheet" href="/detail_style.css" type="text/css">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Anton'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Neucha'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="container">
		<header>
			<div class="header-top">
				<div class="logo">
					<a href="${pageContext.request.contextPath}/"><img
						src="${pageContext.request.contextPath}/image/KakaoTalk_20221012_170414651.png"
						alt=""></a>
				</div>
				<div class="side">
					<ul>
						<li><a href=""><img src="" alt="">검색</a></li>
						<li><a href=""><img src="" alt="">장바구니</a></li>
						<c:if test="${id eq null}">
							<li><a href="${pageContext.request.contextPath}/loginpage">로그인</a></li>
						</c:if>
						<c:if test="${id != null}">
							<li><a href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
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
		</header>
		<main>
			<!--상세페이지 상단(사진슬라이드+옵션부분)-->
			<div class="detail_top">
				<!--상세페이지 윗부분의 좌측(사진슬라이드)-->
				<div id="wrapper">
					<div id="slider_wrap">
						<ul id="slider">
							<li><img
								src="https://www.bens.co.kr/shopimages/bens1/014008000127.jpg?1638328948"
								alt=""></li>
							<li><img
								src="https://www.bens.co.kr/shopimages/bens1/014008000127.jpg?1638328948"
								alt=""></li>
							<li><img
								src="https://www.bens.co.kr/shopimages/bens1/014008000127.jpg?1638328948"
								alt=""></li>
							<li><img
								src="https://www.bens.co.kr/shopimages/bens1/014008000127.jpg?1638328948"
								alt=""></li>
						</ul>

						<!--사진슬라이드 버튼-->
						<div class="btns" id="next">
							<i class="fa fa-chevron-right"></i>
						</div>
						<div class="btns" id="previous">
							<i class="fa fa-chevron-left"></i>
						</div>
						<!-- <div id="counter"></div> -->

						<div id="pagination_wrap">
							<ul></ul>
						</div>

					</div>
				</div>

				<!--상세페이지 상단의 우측(옵션부분)-->
				<div class="options">
					<h2>모달 커튼</h2>
					<table>
						<!-- <caption>
                <details >
                    <summary>상품정보</summary>
                    판매가, 상품코드, 옵션 및 결제금액 안내
                </details>
            </caption> -->
						<colgroup>
							<!--이름쪽은 변하지 않고, 옵션쪽은 유동적이게-->
							<col style="width: 173px;">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<!-- <th>소비자가격</th>
                        <td>129,000 <span>45%</span></td> -->
								<th><label>가격 </label></th>
								<td><input type="text" value="${productbbs.price}"
									id="cost"><span>원&nbsp;</span><label for="dc"></label><input
									type="text" value="${productbbs.dscount}" name="dc" id="dc"></td>
							</tr>
							<tr>
								<!-- <th>판매가격</th>
                        <td class="price" id="price">(소비자가격-(소비자가격*0.45)</td> -->
								<th><label>판매가격 </label></th>
								<td><input type="text"
									value="${productInfo.price - (productbbs.price * productbbs.dscount)}"
									id="price"><span>&nbsp;원</span></td>
							</tr>
							<tr>
								<th><label>상품코드 </label></th>
								<td><input type="text" value="${productbbs.id}"
									id="product_code"></td>
							</tr>
							<tr>
								<th>배송비</th>
								<td>무료배송</td>
							</tr>
							<tr>
								<!-- <th>적립금</th>
                        <td>판매가격*0.1</td> -->
								<th><label>적립금 </label></th>
								<td><input type="text" value="${productbbs.price / 100}"
									id="save"><span>&nbsp;원</span></td>
							</tr>
							<c:choose>
								<c:when test="${productbbs.color != null}">
									<tr>
										<th>옵션선택(색상)</th>
										<td><select name="opt_select" id="select_color">
												<option value="${productbbs.id.color}">"${productbbs.id.color}"</option>
												<option value="${productbbs.id.color}">"${productbbs.id.color}"</option>
										</select></td>
									</tr>
								</c:when>
								<c:otherwise></c:otherwise>
							</c:choose>

							<c:choose>
								<c:when test="${productbbs.size != null}">
									<tr>
										<th>옵션선택(사이즈)</th>
										<td><select name="opt_select" id="select_color">
												<option value="S">S</option>
												<option value="M">M</option>
												<option value="L">L</option>
										</select></td>
									</tr>
								</c:when>
								<c:otherwise></c:otherwise>
							</c:choose>
							<tr>
								<th><label>구매수량</label></th>
								<td>
									<!-- <input type="number" min="0" value="1" id="select_count"> -->
									<select name="select_count" id="select_count">
										<c:forEach begin="1" end="${productbbs.stock}" var="count">
											<option>${count}</option>
										</c:forEach>
								</select>
								</td>
							</tr>
							<tr>

							</tr>
						</tbody>
					</table>

					<!--선택옵션 출력창-->
					<div class="selected_option" style="text-align: right;"></div>
					<!--장바구니/구매하기 버튼-->
					<div class="datail_top_btns">
						<a href="#a" class="btn1">장바구니</a> <a href="#a" class="btn2">구매하기</a>
					</div>
				</div>
			</div>
			<hr>
			<!--탭-->
			<div class="tabmenu">
				<input type="radio" name="tab" id="tab1" checked> <a
					href="#"><label for="tab1">상세정보</label></a> <input type="radio"
					name="tab" id="tab2"> <a href="#"><label for="tab2">리뷰</label></a>
				<input type="radio" name="tab" id="tab3"> <a href="#"><label
					for="tab3">상품문의</label></a>
				<div id="content1">
					<img
						src="http://m.jgagu.co.kr/web/upload/jinyoung/sub/guide_banner_delivery_ipgum.png"
						alt="">
					<caption>
						<details>
							<summary>구매전 유의사항 +</summary>
							<div class="summary1">
								<p>✓ 사다리차 이용 또는 엘레베이터 이용료 등 설치현장의 특수성으로 인한 추가비용은 고객부담입니다.</p>
								<p>✓ 저층의 경우에도 입구 및 엘리베이터가 협소하여 물품이동이 어려운 경우 사다리차를 사용할 수
									있습니다.</p>
								<p>✓ 상품이 배송되기 전 설치를 원하시는 공간을 미리 확보 및 정돈 부탁드립니다.</p>
								<p>✓ 모니터 환경에 따라 실제 제품의 색상에 다소 차이가 있을 수 있습니다.</p>
							</div>
						</details>
						<details>
							<summary>CUSTOMER SERVICE +</summary>
							<div class="summary2">
								<p>✓ Call Center : 070-000-052</p>
								<p>✓ 상담시간 평일 AM 09:00 ~ PM 18:00</p>
								<p>✓ 점심시간 AM 12:00 ~ PM 13:00(점심시간 상담불가)</p>
							</div>
						</details>
						<details>
							<summary>교환 및 반품 안내 +</summary>
							<div class="summary3">
								<p>✓ 정상설치 완료 전, 고객 변심으로 인한 교환/반품 시에는 왕복배송비 + 고객부담금이 발생됩니다.</p>
								<p>✓ 조립 및 설치 이후에는 재판매가 불가능하므로, 교환/반품이 불가합니다.</p>
								<p>✓ 매트리스, 매트리스 커버 등의 제품은 위생 관리상 포장 개봉 이후에는 교환/반품이 불가합니다.</p>
								<p>✓ 교환/반품 주소 : 서울 금천구 가산디지털5로 484번지</p>
								<p>✓ 제주도 및 도서산간지역의 경우 배송비가 추가됩니다</p>
							</div>
						</details>
						<details>
							<summary>배송 안내 +</summary>
							<div class="summary2">
								<p>✓ 주문일로부터 평균 3-7일 이후 배송이 가능합니다.</p>
								<p>✓ 일요일 및 공휴일에는 배송이 불가능합니다.</p>
								<p>✓ 일부 제품은 주문제작 상품으로 배송기간이 다소 소요될 수 있습니다.</p>
								<p>✓ 주문폭주, 일시적 재고부족, 기상이변, 악천후, 천재지변 등에 의한 배송지연이 발생할 수 있습니다.</p>
							</div>
						</details>
					</caption>
				</div>
				<div id="content2">Review 내용</div>
				<div id="content3">
					<jsp:include page="${pageContext.request.contextPath}/qna/qna.jsp" flush="true" />
				</div>
			</div>
		</main>
		<footer>
			<img
				src="https://image.casamiashop.com/mall/DESIGN/PRODUCT/PL/livingdesignlaboratory/2021/08/daon/daon_event_banner.jpg"
				alt="">
		</footer>
	</div>

	<script>
		// 옵션선택 후 출력창
		$("#select_count")
				.on(
						'blur',
						function() {
							var count = $(this).val();
							var price = $("#price").val();
							var color = $("#select_color").val();
							var size = $("#select_size").val();

							if (count * price >= 1) {
								var shipping = '무료배송';
								var finalPrice = count * price;
							} else {
								alert("옵션을 선택하세요.");
							}

							var str = '';

							str += '<p><label>수량 : </label><span>&nbsp;'
									+ count + '</span>&nbsp;&nbsp;&nbsp;';

							if (color != 'brown' && color != 'gray') {
								tr += '<lable></lable>';
							} else {
								tr += '<label>색상 : </label><span>&nbsp;'
										+ color + '</span>&nbsp;&nbsp;&nbsp;';
							}

							if (size != 'S' && size != 'M' && size != 'L') {
								tr += '<lable></lable>';
							} else {
								tr += '<label>사이즈 : </label><span>&nbsp;'
										+ size + '</span>&nbsp;&nbsp;&nbsp;';
							}

							str += '<label>배송비 : </label><span>&nbsp;'
									+ shipping + '</span>&nbsp;&nbsp;&nbsp;';
							str += '<label>가격 : </label><span>&nbsp;' + price
									+ ' 원</span></p>';
							str += '<h4><label>결제금액 : </label><span>&nbsp;'
									+ finalPrice + ' 원</span></h4>';
							str += '<span class="glyphicon glyphicon-exclamation-remove"></span>';

							$(".selected_option").html(str);
						});

		// 사진슬라이드
		var pos = 0;
		var totalSlides = $('#slider_wrap ul li').length;
		var sliderWidth = $('#slider_wrap').width();

		$(document).ready(function() {

			$('#slider_wrap ul#slider').width(sliderWidth * totalSlides);

			$('#next').click(function() {
				slideRight();
			});

			$('#previous').click(function() {
				slideLeft();
			});

			var autoSlider = setInterval(slideRight, 2000);

			$.each($('#slider_wrap ul li'), function() {

				var li = document.createElement('li');
				$('#pagination_wrap ul').append(li);
			});

			countSlides();

			pagination();

			$('#slider_wrap').hover(function() {
				$(this).addClass('active');
				clearInterval(autoSlider);
			}, function() {
				$(this).removeClass('active');
				autoSlider = setInterval(slideRight, 3000);
			});
		});

		function slideLeft() {
			pos--;
			if (pos == -1) {
				pos = totalSlides - 1;
			}
			$('#slider_wrap ul#slider').css('left', -(sliderWidth * pos));

			countSlides();
			pagination();
		}

		function slideRight() {
			pos++;
			if (pos == totalSlides) {
				pos = 0;
			}
			$('#slider_wrap ul#slider').css('left', -(sliderWidth * pos));

			countSlides();
			pagination();
		}

		function countSlides() {
			$('#counter').html(pos + 1 + ' / ' + totalSlides);
		}

		function pagination() {
			$('#pagination_wrap ul li').removeClass('active');
			$('#pagination_wrap ul li:eq(' + pos + ')').addClass('active');
		}
	</script>
</body>
</html>