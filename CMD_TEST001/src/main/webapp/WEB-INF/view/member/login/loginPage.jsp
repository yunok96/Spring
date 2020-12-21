<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Login Page</h1>
		<div>
			<%-- <form action="/CMD_TEST001/member/login" method="post">
				<input type="text" name="email">
				<form:errors path="email"/>
				<input type="text" name="password">
				<form:errors path="password"/>
				<input type="submit" name="LOGIN">
			</form> --%>
			<form:form action="/CMD_TEST001/member/login">
				<div>
					<form:input path="email"/>
					<form:errors path="email"/>
				</div>
				<div>
					<form:input path="password"/>
					<form:errors path="password"/>
				</div>
				<input type="submit" value="LOGIN">
			</form:form>
		</div>
	</body>
</html>