<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/bootstrap.css">
<style>
.jumbotron {
	margin: 50px auto;
	width: 70%;
}
.table-hover, form {
	margin: auto;
	width: 70%;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<!--내비 바-->
	<%@ include file="/WEB-INF/views/navbar.jsp"%>
	<!--게시글 리스트-->
	<div class="jumbotron">
		<c:forEach var="board" items="${boardList}">
			<h1 class="display-4">${board.title}</h1>
			<p>Written by : ${board.memberId}</p>
			<p>Created date : ${board.reg_date}</p>
			<hr class="my-4">
			<p class="lead">${board.content}</p>
			<c:if test="${!empty board.fileName}">
				<hr class="my-4">
				<img src="/uploads/${board.server_fileName}">
			</c:if>
		</c:forEach>
	</div>
	<!--댓글 리스트-->
	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">User Id</th>
				<th scope="col">Comment</th>
			</tr>
		</thead>
		<tbody>
			<tr id="dynamic"></tr>
		</tbody>
	</table>
	<form method="post" name="commentInsertForm">
		<fieldset>
			<div class="form-group">
				<label for="comment">Leave your comment</label>
				<textarea class="form-control" name="comment" rows="2"
					style="margin-top: 0px; margin-bottom: 0px; height: 100px;"></textarea>
				<button type="submit" name="commentInsert" class="btn btn-primary">Save</button>
			</div>
		</fieldset>
	</form>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script>
		document.getElementsByName("commentInsert")[0].addEventListener('click', function(){
			commentInsert(JSON.stringify(serializeArray(document.getElementsByName("commentInsertForm")[0])))
		})
		commentList()

		function commentInsert(data){
			var url = '/board/${id}/post'
			var xhttp = new XMLHttpRequest();
			xhttp.open('POST', url, true);
			xhttp.setRequestHeader("Content-type", "application/json");
			xhttp.send(data);
		}

		function commentList(){
			var url = '/board/${id}/get'
			var xhttp = new XMLHttpRequest()
			xhttp.onreadystatechange = function(){
				if(xhttp.readyState==4 && xhttp.status==200){
					var data = xhttp.responseText;
					var json = JSON.parse(data);
					var a = '';
					json.forEach(function(el, idx){
						if(idx%2==0){
							a+='<tr class=\'table-secondary\' id=\'dynamic\'><td>'+el.memberId+'</td><td>'+el.comment+'</td></tr>'
						} else{
							a+='<tr id=\'dynamic\'><td>'+el.memberId+'</td><td>'+el.comment+'</td></tr>'
						}
					});
					document.getElementById("dynamic").outerHTML = a;
				}
			}
			xhttp.open('GET', url, true)
			xhttp.setRequestHeader('Content-type', 'application/json')
			xhttp.send()
		}

		//커스텀의 커스텀
		function serializeArray(form) {
    		var object = {};
    		if (typeof form == 'object' && form.nodeName.toLowerCase() == "form") {
				var fields = form.getElementsByTagName("input");
				for(i=0;i<fields.length;i++){
					object[fields[i].getAttribute("name")]=fields[i].value;
				}
				return object;
			}
		}
	</script>
</body>
</html>