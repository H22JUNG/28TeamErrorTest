<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">
<style>

/* 메인페이지 */
main {
	background-color: white;
	position: relative;
	top: 33%;
	width: 100%;
	padding: 20px;
	gap: 20px;
	min-width: 1200px;
	display : flex;
	justify-content: space-around;
}

main .item-container {
	width : 1020px;
}

main .item-container .itembox {
	width : 320px;
	height : 400px;
	float : left;
	margin : 10px;
}
main .item-container .itembox img {
	width : 100%;
	height : 240px;
}
main .item-container .itembox .itemname {
	display : flex;
	flex-direction : column;
	justify-content: center;
	align-items: center;
}

aside>ul>li {
	margin : 20px;
}
aside>ul>li>a {
	font-weight: bold;
}

aside>ul>li ul>li {
	margin : 20px;
}
aside>ul>li ul>li>a {
	margin-left : 10px;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	
	<main>
	<aside>
		<ul>
			<li>
				<a href="${pageContext.request.contextPath}/category/furniture">가구</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/category2/bed">침대</a></li>
					<li><a href="${pageContext.request.contextPath}/category2/sofa">소파</a></li>
					<li><a href="${pageContext.request.contextPath}/category2/mirror">거울</a></li>
					<li><a href="${pageContext.request.contextPath}/category2/chair">의자</a></li>
				</ul>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/category/fabric">패브릭</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/category2/curtain">커튼</a></li>
					<li><a href="${pageContext.request.contextPath}/category2/bedding">침구</a></li>
					<li><a href="${pageContext.request.contextPath}/category2/rug">러그</a></li>
				</ul>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/category/storage">수납용품</a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/category2/storage store">수납장</a></li>
					<li><a href="${pageContext.request.contextPath}/category2/supplies">옷걸이</a></li>
				</ul>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/category/supplies">생활용품</a>
			</li>
		</ul>
	
	</aside>
	<div class="item-container">
	<c:forEach var="vo" items="${list}">
		<div class="itembox">
			<img src="${vo.pic1}" alt="" />
			<div class="itemname">
			<a href="${pageContext.request.contextPath}/detail/${vo.id}"><h4>${vo.name}</h4></a>
			<p>${vo.price} 원</p>
			<p>${vo.discount} %</p>
			<p>${vo.id}</p>
			</div>
		</div>	
	</c:forEach>
	</div>
	</main>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>