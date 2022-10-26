<%@page import="com.goodee.vo.ReviewCommentVO"%>
<%@page import="com.goodee.vo.ReviewVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/reviweModalCss.css" rel="stylesheet" type="text/css">
<style>
</style>
</head>
<body>
	<div id="reviewContainer">
    <div id="REVIEW">
        <h2>REVIEW</h2>
        <p>상품의 사용후기를 적어주세요</p>
        
    </div> 
     <h3>REVIEW(${review.size()}개)</h3>
    <div class="Allstar">
        <div class="starsScore">
            <span id="star">★</span><span id="grade">${starGradeAvg}</span>
	           <h3> ${(starGradeCount[4] + starGradeCount[3] + starGradeCount[2]) /reviewCount * 100}%의 구매자가 이 상품을 좋아합니다</h3>
            <button>상품 리뷰 작성하기</button>
        </div>
        <div class="starsGrade">
            <div class="starsGrade-detail">
                <p class="starsGrade-detail-p">아주 좋아요</p>
                <div class="starsBack">
                    <div class="starsfront" style="width: ${starGradeCount[4] / reviewCount * 100}%;"></div>
                </div>
                <p class="starsGrade-detail-p">${starGradeCount[4]}</p>
            </div>
            <div class="starsGrade-detail">
                <p class="starsGrade-detail-p">맘에 들어요</p>
                <div class="starsBack">
                    <div class="starsfront" style="width: ${starGradeCount[3] / reviewCount * 100}%;"></div>
                </div>
                <p class="starsGrade-detail-p">${starGradeCount[3]}</p>
            </div>
            <div class="starsGrade-detail">
                <p class="starsGrade-detail-p">보통이에요&nbsp;</p>
                <div class="starsBack">
                    <div class="starsfront" style="width: ${starGradeCount[2] / reviewCount * 100}%;"></div>
                </div>
                <p class="starsGrade-detail-p">${starGradeCount[2]}</p>
            </div>
            <div class="starsGrade-detail">
                <p class="starsGrade-detail-p">그냥 그래요</p>
                <div class="starsBack">
                    <div class="starsfront" style="width: ${starGradeCount[1] / reviewCount * 100}%;"></div>
                </div>
                <p class="starsGrade-detail-p">${starGradeCount[1]}</p>
            </div>
            <div class="starsGrade-detail">
                <p class="starsGrade-detail-p">별로에요&nbsp;&nbsp;&nbsp;&nbsp;</p>
                <div class="starsBack">
                    <div class="starsfront" style="width: ${starGradeCount[0] / reviewCount * 100}%;"></div>
                </div>
                <p class="starsGrade-detail-p">${starGradeCount[0]}</p>
            </div>
        </div>
    </div>

    <div class="image">
        <span>
            <h3>사진(${picCount}개)</h3>
            <a href="#" id="allpic">사진 리뷰 전체보기</a>
        </span>
        <div class="imgPreview">
        	<c:forEach var="pic" items="${pic}">        	
            	<img src="${pic.pic1}" alt="">
        	</c:forEach>
        </div>
    </div>

    <div class="review">
        <button>추천순</button>
        <button>최신순</button>
        <button>별점순</button>

        <c:forEach var="review" items="${review}">
        <div class="review-container">
        
            <div class="reviewContentBox">
                <p id="review-title">
                	<span class="title-star">
         			<c:forEach begin="1" end="${review.stargrade }">★</c:forEach>
         			</span>${review.title }</p>
                <div id="review-content"><p>${review.content }</p></div>
         	   <c:if test="${review.pic1 != null}">
              	  <img src="${review.pic1}" alt="">
               </c:if>
         	   <c:if test="${review.pic2 != null}">
             	  <img src="${review.pic2}" alt="">
               </c:if>
            </div>
				<div class="reviewComment">
					<p>👍🏻 도움돼요(${review.hits})</p>
					<p>	
<%-- 						<%ReviewVO revo = (ReviewVO)request.getAttribute("review");
						ReviewCommentVO commvo = (ReviewCommentVO)request.getAttribute("comment");
							int count = 0;
			
						if(revo.getId() == commvo.getReviewId()) {
							count++;
						}%> --%>
						<a href="" class="commCount" id="commCount">댓글보기(??개)</a>
					</p>
					<div class="dropdown">
						<c:forEach var="comment" items="${comment}">
							<c:if test="${comment.reviewId eq review.id}">
								<p>${comment.username}: ${comment.content}</p>
							</c:if>
						</c:forEach>
						<form action="" method="post">
							<textarea name="recomm" id="" cols="40" rows="3"
								placeholder="댓글을 남겨주세요"></textarea>
							<button>등록</button>
						</form>
					</div>
				</div>
				</div>
            </c:forEach>

    </div>
    </div>
    <script>
     for(let i = 0; i< document.getElementsByClassName("commCount").length; i++) {
 	    document.getElementsByClassName("commCount")[i].addEventListener("click", function(e) {
   			e.preventDefault();
 	        document.getElementsByClassName("dropdown")[i].style.display = 'block';
	    });
/*  	    if(document.getElementsByClassName("dropdown")[i].style.display == 'block') {
 	    	document.getElementsByClassName("dropdown")[i].style.display = 'none';
 	    } */
    }; 

   	 document.getElementById("allpic").addEventListener("click", function(e) {
   		document.getElementById("modal").style.display = "flex";
/*    		document.querySelector('body').style.overflow = 'hidden';
 */   	 });
    </script>
       
    <div id="modal">
    	<div id="photo">
    		 <c:forEach var="review" items="${pic}">
    		 	<img src="${review.pic1}" />
    		 </c:forEach>
    	</div>
		<div id="review">
			<div id="review-productInfo">
                <div>
                    <h6>상품명</h6>
                   <%--   <p><c:forEach begin="1" end="${starGradeAvg}"><span id="review-star">★</span></c:forEach>
                        리뷰 ${reviewCount+(1-reviewCount%1))%1}개</p> --%>
                </div>
				<div id="x">✖</div>
			</div>
			<div id="image-box">
				<c:forEach var="review" items="${pic}">
					<img src="${review.pic1}" />
				</c:forEach>
			</div>
			<hr>
			<div>
 				<c:forEach var="review" items="${review}">
					<p class="review-star"><c:forEach begin="1" end="${review.stargrade}">★</c:forEach> ${review.title}</p>
					<hr>
					<p>${review.content}</p>
				</c:forEach>
			</div>
		</div>
	</div>
	
	<script>
	 document.getElementById("x").addEventListener("click", function() {
	        document.getElementById("modal").style.display = "none";
	        document.querySelector('body').style.overflow = 'auto';
	  });
	</script>
</body>
</html>