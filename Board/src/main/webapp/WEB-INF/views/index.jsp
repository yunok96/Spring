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
        <h1 class="display-3">Main Page of Web Application</h1>
        <p class="lead">This Web Application shows simple Sign In-Up-Out and write Articles with Session. Also Chat with Web Socket.</p>
        <hr class="my-4">
        <p>If you are new in here, Click the Sign Up Button on the Nav-Bar.</p>
    </div>
    </c:if>
    <!--로그인 후 인사말-->
    <c:if test="${!empty user}">
    <div class="jumbotron">
        <h1 class="display-3">Main Page of Web Application</h1>
        <p class="lead">This Web Application shows simple Sign In-Up-Out and write Articles with Session. Also Chat with Web Socket.</p>
        <hr class="my-4">
        <p>Welcome, ${user.name}!</p>
    </div>
    </c:if>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</body>
</html>