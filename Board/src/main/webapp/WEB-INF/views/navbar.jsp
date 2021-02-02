<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="/">Home</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarColor02" aria-controls="navbarColor02"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarColor02">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="/board">Board</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/member">Member</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#">About</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
				role="button" aria-haspopup="true" aria-expanded="false">Menu</a>
				<div class="dropdown-menu">
				<c:choose>
					<c:when test="${empty user}">
						<a class="dropdown-item" href="/signIn">Sign In</a>					
						<a class="dropdown-item" href="/signup">Sign Up</a>
					</c:when>
					<c:otherwise>					
						<a class="dropdown-item" href="/signOut">Sign Out</a>
					</c:otherwise>
				</c:choose>
				</div>
			</li>
		</ul>
	</div>
</nav>