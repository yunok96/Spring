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
    .jumbotron{
        margin: 50px auto;
        width: 70%;
    }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
    <!--내비 바-->
    <%@ include file="/WEB-INF/views/navbar.jsp"%>
    <!--게시글 리스트-->
    <div class="jumbotron">
    <c:forEach var="board" items="${boardList}">
        <h1 class="display-4">${board.title}</h1>
        <p>Written by : ${board.memberId}</p>
        <p>Written when : ${board.reg_date}</p>
        <hr class="my-4">
        <p class="lead">${board.content}</p>
        <c:if test="${!empty board.fileName}">
        	<hr class="my-4">
        	<img src="/uploads/${board.server_fileName}">
        </c:if>
    </c:forEach>
    </div>
        <script type="text/javascript" src="bootstrap.js" charset="UTF-8"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
    </body>
    </html>