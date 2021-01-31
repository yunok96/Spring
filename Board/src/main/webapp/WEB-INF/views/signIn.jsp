<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form modelAttribute="signInData">
		<label for="email">이메일</label>
		<form:input path="email" />
		<label for="password">비밀번호</label>
		<form:password path="password"/>
		<label for="checked">아이디와 비밀번호 기억</label>
		<form:checkbox path="checked"/>
		<input type="submit" value="로그인">
	</form:form>
</body>
</html>