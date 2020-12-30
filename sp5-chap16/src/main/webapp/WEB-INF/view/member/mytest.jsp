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
	<form:form action="/sp5-chap16/api/members" modelAttribute="reg">
		<form:input path="email" />
		<form:input path="name" />
		<form:password path="password" />
		<form:password path="confirmPassword" />
		<input type="submit" value="확인">
	</form:form>
</body>
</html>