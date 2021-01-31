<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>인덱스 페이지</h1>
	<c:if test="${empty user}">
		<ul>
			<li><a href="signIn">로그인</a></li>
	</c:if>

	<c:if test="${!empty user}">
		<ul>
			${user.name}님 환영합니다.
			<li><a href='signOut'>로그아웃</a></li>
	</c:if>
	</ul>
</body>
</html>