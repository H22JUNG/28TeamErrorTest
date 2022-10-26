<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">
 <style>
      

        #coverContainer{
            background-color: #FFF7E7;
            position: relative;
            top: 33%;
            width: 100%;
            justify-content: center;
            align-items: center;
            padding: 20px;
            min-width: 1200px;
            height : 100vh;
        }
        #container {
            margin: 0 auto;
            width: 90%;
            max-width: 1400px;
            background-color: white;
            padding : 30px;
        }
        h2{
            text-align: center;
            padding-bottom: 15px;
            border-bottom: 3px solid #21A5B5;
        }
        table {
            border-collapse: collapse;
        }
        td {
            border-bottom: 1px solid #CBCBCB;
            padding: 20px;
            width : 90%;
        }
        table tr td:first-child{
            width: 180px;
            font-weight: 900;
        }
        table tr:last-child td:last-child{
            height : 400px; 
        }
        #btn {
            padding: 20px;
            display: flex;
            justify-content: flex-end;
            gap: 20px;
        }
        #btn button {
            width: 100px;
            height: 50px;
            font-size: 16px;
            font-weight: 600;
            background: linear-gradient(90deg, #21A5B5 0%, #71B2B4 100%);
            border-radius: 15px;
            border: none;
            cursor: pointer;
            color: white;
        }
        footer {
            z-index: 10;
            position: absolute;
            bottom: 0;
       		
        }
    </style>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <div id="coverContainer">
      <div id="container">
			<h2>${detail.category}</h2>
			<table>
				<tr>
					<td>제목</td>
					<td>${detail.title }</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>${detail.owner }</td>
				</tr>
				<tr>
					<td>작성일자</td>
					<td>${detail.createDate}</td>
				</tr>
				<tr>
					<td>내용</td>
					<td>${detail.content}</td>
				</tr>
			</table>
			<div id="btn">
				<form action="${pageContext.request.contextPath}/list" method="post">
					<button>목 록</button>
				</form>
				<form action="/delete" method="post">
					<button id="delete">삭 제</button>
				</form>
				<form action="/modify" method="post">
					<button id="modify">수 정</button>
				</form>
			</div>
        </div>
    </div>
   	 <script>
        document.getElementById("delete").addEventListener("click", function(e){
            e.preventDefault();
            if(confirm("게시글을 삭제하시겠습니까?")){
                location.href = "${pageContext.request.contextPath}/delete/${detail.id}";
            }
        });
        document.getElementById("modify").addEventListener("click", function(e){
            e.preventDefault();
                location.href = "${pageContext.request.contextPath}/modify/${detail.id}";
        });
    </script>
   <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>