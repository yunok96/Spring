<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Choi Portfolio</title>
<link rel="stylesheet" href="/css/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
    <!--내비 바-->
	<%@ include file="/WEB-INF/views/navbar.jsp"%>
    <!--인사말-->
    <c:if test="${empty user}">
    <div class="jumbotron">
        <h1 class="display-3">웹 어플리케이션 메인 메뉴</h1>
        <p class="lead">세션을 이용한 로그인과 게시글 작성 기능이 있는 게시판 웹 어플리케이션입니다.</p>
        <hr class="my-4">
        <p>처음 오셨다면 위의 메뉴 버튼 안의 회원 가입 버튼을 클릭해서 가입해 주세요.</p>
    </div>
    </c:if>
    <!--로그인 후 인사말-->
    <c:if test="${!empty user}">
    <div class="jumbotron">
        <h1 class="display-3">웹 어플리케이션 메인 메뉴</h1>
        <p class="lead">세션을 이용한 로그인과 게시글 작성 기능이 있는 게시판 웹 어플리케이션입니다.</p>
        <hr class="my-4">
        <p>환영합니다, ${user.name}님!</p>
    </div>
    </c:if>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</body>
</html>