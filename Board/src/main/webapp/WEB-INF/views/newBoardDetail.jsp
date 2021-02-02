<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>첨부파일</th>
			<th>작성자</th>
			<th>등록일자</th>
		</tr>
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.id}</td>
				<td>${board.title}</td>
				<td>${board.content}</td>
				<td>${board.fileName}<img
					src="/uploads/${board.server_fileName}">
				</td>
				<td>${board.memberId}</td>
				<td>${board.reg_date}</td>
			</tr>
		</c:forEach>
	</table>
	<div id="comment">
		<p>댓글란</p>
		<table class="container" border="1">
			<tr>
				<th>작성자</th><th>댓글 내용</th>
			</tr>
			<tr id="dynamic"></tr>
		</table>
		<form method="post" name="commentInsertForm">
			<label for="commentLabel">댓글</label>
			<input type="text" name="comment"/>
			<button name="commentInsert">댓글 작성</button>
		</form>
	</div>
	<script>
		document.getElementsByName("commentInsert")[0].addEventListener('click', function(){
			console.log(11)
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
					json.forEach(el => {
						a+='<tr id=\'dynamic\'><td>'+el.memberId+'</td><td>'+el.comment+'</td></tr>'
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