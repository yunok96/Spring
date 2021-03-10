<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/bootstrap.css">
<style>
fieldset{
	margin: 50px auto;
	width: 70%;
}
</style>
</head>
<body>
<!--내비 바-->
<%@ include file="/WEB-INF/views/navbar.jsp"%>
<!--입력 폼-->
<form:form modelAttribute="board" enctype="multipart/form-data">
  <fieldset>
    <legend>게시글</legend>
	<div class="form-group">
  		<label class="col-form-label col-form-label-lg" for="title">제목</label>
  		<form:input path="title" class="form-control form-control-lg" type="text" placeholder="게시글 제목을 입력해주세요"/>
	</div>
    <div class="form-group">
      <label for="content">내용</label>
      <form:textarea path="content" class="form-control" placeholder="게시글 내용을 입력해주세요" rows="5"/>
    </div>
    <div class="form-group">
      <label for="file">파일 첨부</label>
      <input type="file" class="form-control-file" name="file" id="file">
    </div>
    <button type="submit" class="btn btn-primary">확인</button>
  </fieldset>
</form:form>
</body>
</html>