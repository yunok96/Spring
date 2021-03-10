<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Members</title>
<link rel="stylesheet" href="/css/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
  .table-hover{
    width: 70%;
    margin: 50px auto;
  }
</style>
</head>
<body>
    <!--내비 바-->
    <%@ include file="/WEB-INF/views/navbar.jsp"%>
    <!--멤버 리스트-->
    <table class="table table-hover">
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">이메일</th>
            <th scope="col">이름</th>
            <th scope="col">등록일</th>
          </tr>
        </thead>
        <c:forEach var="member" items="${memberList}" varStatus="status">
        <tbody>
            <tr
            <c:choose>
            	<c:when test="${status.index%2==0}">class="table-primary"</c:when>
            	<c:otherwise>class="table-secondary"</c:otherwise>
        	</c:choose>>
                <th scope="row">${member.id}</th>
                <td>${member.email}</td>
                <td>${member.name}</td>
                <td>${member.reg_date}</td>
            </tr>
        </tbody>
        </c:forEach>
    </table>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</body>
</html>