<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#REVIEW {
	text-align: center;
}
.Allstar {
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
	display: flex;
}
.starsScore {
	align-self: center;
	width: 30%;
	text-align: center;
	padding: 20px;
	border-right: 1px solid gray;
}
.starsScore h3 {
	font-weight: 500;
	margin-bottom: 20px;
}
.starsScore button {
	font-size: large;
	padding: 10px 12px;
	background: linear-gradient(90deg, #21A5B5 0%, #71B2B4 100%);
	border-radius: 20px;
	border: none;
}
#star {
	font-size: 50px;
	color: #21A5B5;
}
#grade {
	font-size: 30px;
	color: black;
	padding-left: 10px;
}
.starsGrade {
	width: 60%;
	padding: 40px;
}
.starsGrade-detail {
	display: flex;
	align-items: center;
	width: 100%;
}
.starsBack {
	width: 70%;
	height: 20px;
	background-color: #f1f1f1;
	border-radius: 10px;
}
.starsfront {
	height: 20px;
	background-color: gray;
	border-radius: 10px;
}
.starsGrade-detail-p {
	min-width: 50px;
	font-size: 15px;
	padding: 0px 15px;
}
.image span {
	display: flex;
}
.image a {
	margin-left: auto;
	align-self: center;
	text-decoration: none;
	color: gray;
}
.imgPreview img {
	width: 200px;
	padding-bottom: 20px;
}
.review-container {
	display: flex;
}
.review {
	border-top: 1px solid gray;
	padding-top: 20px;
}
.review button {
	border: 1px solid #71B2B4;
	width: 80px;
	height: 50px;
	margin: 0px;
	padding: 0px;
	font-size: 15px;
	color: gray;
	background-color: white;
}
.reviewContent {
	width: 70%;
}
.reviewContent img {
	width: 100px;
}
</style>
</head>
<body>
    <div id="REVIEW">
        <h2>REVIEW</h2>
        <p>상품의 사용후기를 적어주세요</p>
    </div>
    <h3>REVIEW(개수)</h3>
    <div class="Allstar">
        <div class="starsScore">
            <span id="star">★</span><span id="grade">4.8(백)</span>
            <h3>97(백)%의 구매자가 이 상품을 좋아합니다</h3>
            <button>상품 리뷰 작성하기</button>
        </div>
        <div class="starsGrade">
            <div class="starsGrade-detail">
                <p class="starsGrade-detail-p">아주 좋아요</p>
                <div class="starsBack">
                    <div class="starsfront" style="width: 80%;"></div>
                </div>
                <p class="starsGrade-detail-p">count(백)</p>
            </div>
            <div class="starsGrade-detail">
                <p class="starsGrade-detail-p">맘에 들어요</p>
                <div class="starsBack">
                    <div class="starsfront" style="width: 20%;"></div>
                </div>
                <p class="starsGrade-detail-p">count(백)</p>
            </div>
            <div class="starsGrade-detail">
                <p class="starsGrade-detail-p">보통이에요&nbsp;</p>
                <div class="starsBack">
                    <div class="starsfront" style="width: 10%;"></div>
                </div>
                <p class="starsGrade-detail-p">count(백)</p>
            </div>
            <div class="starsGrade-detail">
                <p class="starsGrade-detail-p">그냥 그래요</p>
                <div class="starsBack">
                    <div class="starsfront" style="width: 3%;"></div>
                </div>
                <p class="starsGrade-detail-p">count(백)</p>
            </div>
            <div class="starsGrade-detail">
                <p class="starsGrade-detail-p">별로에요&nbsp;&nbsp;&nbsp;&nbsp;</p>
                <div class="starsBack">
                    <div class="starsfront" style="width: 5%;"></div>
                </div>
                <p class="starsGrade-detail-p">count(백)</p>
            </div>
        </div>
    </div>

    <div class="image">
        <span>
            <h3>사진(개수)</h3>
            <a href="모달창">사진 리뷰 전체보기</a>
        </span>
        <div class="imgPreview">
            <img src="./6ee56f3c13ea76016434adea614a155e.jpg" alt="">
            <img src="./6ee56f3c13ea76016434adea614a155e.jpg" alt="">
            <img src="./6ee56f3c13ea76016434adea614a155e.jpg" alt="">
            <img src="./6ee56f3c13ea76016434adea614a155e.jpg" alt="">
            <img src="./6ee56f3c13ea76016434adea614a155e.jpg" alt="">
        </div>
    </div>

    <div class="review">
        <button>추천순</button>
        <button>최신순</button>
        <button>별점순</button>

        <div class="review-container">
        
            <div class="reviewContent">
                <p id="stars">★★★★★제목이에요</p>
                <div>내용임내용임내용임내용임내용임내용임내용임내용임내용임</div>
                <img src="./6ee56f3c13ea76016434adea614a155e.jpg" alt="">
                <img src="./6ee56f3c13ea76016434adea614a155e.jpg" alt="">
                <img src="./6ee56f3c13ea76016434adea614a155e.jpg" alt="">
            </div>
            <div class="reviewComment">
                <p>따봉 도움돼요</p>
                댓글(몇개)
                <div class="dropdown">
                
                </div>
            </div>
        </div>

    </div>
</body>
</html>