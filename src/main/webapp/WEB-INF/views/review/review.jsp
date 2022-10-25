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
h2{
	text-align: center;
	font-size : 25px;
}
h3{
	font-size : 20px;
	text-align: start;
}
p {
font-size : 12px;
}
#REVIEW {
	text-align: center;
	padding : 50px; 
}
#REVIEW p{
	text-align: center;
	font-size:15px;
}
#reviewContainer{
	width:100%;
}
.Allstar {
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
	display: flex;
   flex-direction : row;
}
.starsScore {
	align-self: center;
	width: 40%;
	text-align: center;
	padding: 20px;
	border-right: 1px solid gray;
}
.starsScore h3 {
	font-weight: 500;
	margin-bottom: 20px;
	font-size : 14px;
	text-align: center;
}
.starsScore button {
	font-size: large;
	padding: 10px 12px;
	background: linear-gradient(90deg, #21A5B5 0%, #71B2B4 100%);
	border-radius: 20px;
	border: none;
	color : white;
	font-weight: 800;
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
	padding: 20px;
	align-items : center;
}
.starsGrade-detail {
	display: flex;
	align-items: center;
	width: 100%;
	padding: 10px 0;
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
	font-size : 14px;
	padding: 0px 15px;
}
.image span {
	display: flex;
	padding : 20px 0;
}
.image a {
	margin-left: auto;
	align-self: center;
	text-decoration: none;
	color: gray;
	font-size : 15px;
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
	text-align: start;
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
	cursor:pointer;
}
.reviewContentBox {
	width: 70%;
	padding : 20px;
}
.reviewContentBox img {
	width: 100px;
}
#review-title {
	font-size : 20px;
}
#title-star {
	font-size: 25px;
	color : #21A5B5;
	padding-right : 10px;
}
#review-content {
	padding : 20px 0;
	font-size: 22px;
	color : gray;
}
.reviewComment {
	border-left : 1px solid gray;
	padding : 20px;
}
.reviewComment p {
	font-size : 15px;
	padding : 10px;
}
.dropdown {
	border-top : 1px dotted gray;
}
.dropdown textarea{
	margin : 15px 0 0 10px;
	padding:10px;
}
.dropdown button{
	width : 20%;
	height : 30px;
	border-radius: 10px;
	margin : 10px;
	padding : 0;
	vertical-align : text-top;
}
</style>
</head>
<body>
	<div id="reviewContainer">
    <div id="REVIEW">
        <h2>REVIEW</h2>
        <p>상품의 사용후기를 적어주세요</p>
    </div>
<%--     <h3>REVIEW(${review.size}개)</h3>
 --%>    <div class="Allstar">
        <div class="starsScore">
            <span id="star">★</span><span id="grade">${starGradeAvg}</span>
            <h3>97( (star 5,4,3)/전체리뷰쓴사람 %의 구매자가 이 상품을 좋아합니다</h3>
            <button>상품 리뷰 작성하기</button>
        </div>
        <div class="starsGrade">
            <div class="starsGrade-detail">
                <p class="starsGrade-detail-p">아주 좋아요</p>
                <div class="starsBack">
                    <div class="starsfront" style="width: ${starGradeCount.star5 / reviewCount}%;"></div>
                </div>
                <p class="starsGrade-detail-p">${starGradeCount.star5}</p>
            </div>
            <div class="starsGrade-detail">
                <p class="starsGrade-detail-p">맘에 들어요</p>
                <div class="starsBack">
                    <div class="starsfront" style="width: ${starGradeCount.star4 / reviewCount};"></div>
                </div>
                <p class="starsGrade-detail-p">${starGradeCount.star4}</p>
            </div>
            <div class="starsGrade-detail">
                <p class="starsGrade-detail-p">보통이에요&nbsp;</p>
                <div class="starsBack">
                    <div class="starsfront" style="width: ${starGradeCount.star3 / reviewCount}%;"></div>
                </div>
                <p class="starsGrade-detail-p">${starGradeCount.star3}</p>
            </div>
            <div class="starsGrade-detail">
                <p class="starsGrade-detail-p">그냥 그래요</p>
                <div class="starsBack">
                    <div class="starsfront" style="width: ${starGradeCount.star2 / reviewCount}%;"></div>
                </div>
                <p class="starsGrade-detail-p">${starGradeCount.star2}</p>
            </div>
            <div class="starsGrade-detail">
                <p class="starsGrade-detail-p">별로에요&nbsp;&nbsp;&nbsp;&nbsp;</p>
                <div class="starsBack">
                    <div class="starsfront" style="width: ${starGradeCount.star1 / reviewCount}%;"></div>
                </div>
                <p class="starsGrade-detail-p">${starGradeCount.star1}</p>
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
        
            <div class="reviewContentBox">
                <p id="review-title"><span id="title-star">★★★★★</span>제목이에요</p>
                <div id="review-content"><p>내용임내용임내용임내용임내용임내용임내용임내용임내용임</p></div>
                <c:if test="이미지가 널이 아니면">
                <img src="./6ee56f3c13ea76016434adea614a155e.jpg" alt="">
                <img src="./6ee56f3c13ea76016434adea614a155e.jpg" alt="">
                <img src="./6ee56f3c13ea76016434adea614a155e.jpg" alt="">
                </c:if>
            </div>
            <div class="reviewComment">
                <p>👍🏻 도움돼요</p>
                <p>댓글보기(몇개)</p>
                <div class="dropdown">
           		<%-- <c:foreach 댓글 반복> --%>
                	<p>작성자 : 드롭다운해서 펼쳐진 댓글입니다.</p>
           <%--      </c:foreach> --%>
                	<form action="" method="post">
               	 		<textarea name="recomm" id="" cols="40" rows="5" placeholder="ㅇㅇ님에게 댓글을 남겨주세요"></textarea>
               	 		<button>등록</button>
                	</form>
                </div>
            </div>
        </div>

    </div>
    </div>
</body>
</html>