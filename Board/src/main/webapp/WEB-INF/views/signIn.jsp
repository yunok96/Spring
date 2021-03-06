<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
  form{
    margin: 50px auto;
    width: 500px;
  }
  .btn-primary{
  	margin-top: 10px;
  }
</style>
</head>
<body>
    <!--내비 바-->
    <%@ include file="/WEB-INF/views/navbar.jsp"%>
    <!--로그인 폼-->
    <form:form modelAttribute="signInData">
        <fieldset>
          <legend>로그인</legend>
          <div class="form-group">
            <label for="email">이메일 주소</label>
            <form:input path="email" class="form-control" placeholder="Enter email"/>
            <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">-->
          </div>
          <div class="form-group">
            <label for="password">비밀번호</label>
            <form:input path="password" class="form-control" placeholder="Enter Password"/>
            <!--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Password">-->
          </div>
    	  <div class="custom-control custom-checkbox">
      		<form:checkbox path="checked" class="custom-control-input"/>
      		<label class="custom-control-label" for="checked1">이메일 저장</label>
   		  </div>
          <button type="submit" class="btn btn-primary">확인</button>
        </fieldset>
      </form:form>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</body>
</html>