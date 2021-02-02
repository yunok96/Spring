<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/bootstrap.css">
<style>
    .box{
        margin: 50px auto;
        width: 80%;
    }
    .mb-3{
        display: inline-block;
        margin: 10px;
        width: 350px;
        cursor: pointer;
    }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
    <!--내비 바-->
    <%@ include file="/WEB-INF/views/navbar.jsp"%>
    <!--게시글 리스트-->
    <div class="box">
    <c:forEach var="board" items="${boardList}">
        <div class="card mb-3" onclick="location.href='/board/${board.id}'">
            <h3 class="card-header">${board.memberId}</h3>
            <div class="card-body">
                <h5 class="card-title">${board.title}</h5>
            </div>
            <svg xmlns="http://www.w3.org/2000/svg" class="d-block user-select-none" width="100%" height="200" aria-label="Placeholder: Image cap" focusable="false" role="img" preserveAspectRatio="xMidYMid slice" viewBox="0 0 318 180" style="font-size:1.125rem;text-anchor:middle">
                <rect width="100%" height="100%" fill="#868e96"></rect>
                <text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text>
            </svg>
            <div class="card-footer text-muted">
                ${board.reg_date}
            </div>
        </div>
    </c:forEach>
    </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
        <script>
            function moveToDetail(){
                location.href="/board/${board.id}";
            }
        </script>
    </body>
    </html>