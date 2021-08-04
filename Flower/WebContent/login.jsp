<!doctype HTML>
<head>
	<meta charset="UTF-8">
	<title>네이버 로그인</title>
	<link rel="stylesheet" href="css/LoginStyle.css">
	<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="main-container">
		<div class="main-wrap">
		<header>
			<div class="sel-lang-wrap">

				


				
			</div>
			<div class="logo-wrap">
				<a href="index.jsp"><img src="img/logo.png"></a>
			</div>
		</header>
		<form action = "loginServiceCon">
		<section class="login-input-section-wrap">
			<div class="login-input-wrap">	
				<input placeholder="Username" type="text" name = "email"></input>
			</div>
			<div class="login-input-wrap password-wrap">	
				<input placeholder="Password" type="password" name = "pw"></input>
			</div>
			<div class="login-button-wrap">
				<a href="index.jsp"><button>Login</button></a>
			</div>
			
			<div class="login-stay-sign-in">
				<i class="far fa-check-circle"></i>
				<span>Stay Signed in</span>
			</div>
		</section>
		</form>
		<footer>
			<div class="copyright-wrap">
			
			</div>
		</footer>
		</div>
	</div>
</body>