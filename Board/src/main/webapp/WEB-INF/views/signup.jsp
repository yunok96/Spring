<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
</style>
</head>
<body>
    <!--내비 바-->
    <%@ include file="/WEB-INF/views/navbar.jsp"%>
    <!--회원가입 폼-->
      <form:form modelAttribute="signUpdata">
        <fieldset>
          <legend>Sign Up</legend>
          <div class="form-group">
            <label for="email">Email address</label>
            <form:input path="email" class="form-control" aria-describedby="emailHelp" placeholder="Enter email"/>
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <form:input path="password" class="form-control" placeholder="Enter Password"/>
          </div>
          <div class="form-group">
            <label for="confirmPassword">Password Check</label>
            <form:input path="confirmPassword" class="form-control" placeholder="Enter Password Again"/>
          </div>
          <div class="form-group">
            <label class="col-form-label" for="name">Name</label>
            <form:input path="name" class="form-control" placeholder="Enter Name"/>
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </fieldset>
      </form:form>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
    </body>
    </html>