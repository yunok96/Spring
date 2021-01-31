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
	<form:form modelAttribute="board" enctype="multipart/form-data">
		<label for="title">제목</label>
		<form:input path="title"/>
		<label for="content">내용</label>
		<form:input path="content"/>
		<label for="file">파일</label>
		<input type="file" name="file" id="file">
		<input type="submit" value="확인">
	</form:form>
</body>
</html>