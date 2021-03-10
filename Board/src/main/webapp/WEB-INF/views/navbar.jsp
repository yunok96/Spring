<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="/">홈</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarColor02" aria-controls="navbarColor02"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarColor02">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="/board">게시판</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/member">회원목록</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#">About</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
				role="button" aria-haspopup="true" aria-expanded="false">메뉴</a>
				<div class="dropdown-menu">
				<c:choose>
					<c:when test="${empty user}">
						<a class="dropdown-item" href="/signIn">로그인</a>					
						<a class="dropdown-item" href="/signup">회원가입</a>
					</c:when>
					<c:otherwise>					
						<a class="dropdown-item" href="/signOut">로그아웃</a>
					</c:otherwise>
				</c:choose>
				</div>
			</li>
		</ul>
	</div>
</nav>