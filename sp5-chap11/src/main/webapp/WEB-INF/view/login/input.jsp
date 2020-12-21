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
	<form:form action="result" modelAttribute="loginData">
		<label> 이메일 <form:input path="email" />
		</label>
		<label> 비밀번호 <form:input path="password" />
		</label>
		<input type="submit" value="로그인">
	</form:form>
</body>
</html>