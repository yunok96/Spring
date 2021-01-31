<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form modelAttribute="signUpdata">
		<label for="email">이메일</label>
		<form:input path="email" />
		<label for="password">비밀번호</label>
		<form:password path="password" />
		<label for="confirmPassword">비밀번호 확인</label>
		<form:password path="confirmPassword" />
		<label for="name">이름</label>
		<form:input path="name" />
		<input type="submit" value="확인">
	</form:form>
</body>
</html>