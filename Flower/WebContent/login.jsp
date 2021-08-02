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
				<select class="lang-select">
					<option>korean</option>
					<option>English</option>
				</select>
			</div>
			<div class="logo-wrap">
				<a href="index.jsp"><img src="img/logo.png"></a>
			</div>
		</header>
		<section class="login-input-section-wrap">
			<div class="login-input-wrap">	
				<input placeholder="Username" type="text"></input>
			</div>
			<div class="login-input-wrap password-wrap">	
				<input placeholder="Password" type="password"></input>
			</div>
			<div class="login-button-wrap">
				<a href="index.jsp"><button>Sign in</button></a>
			</div>
			<div class="login-stay-sign-in">
				<i class="far fa-check-circle"></i>
				<span>Stay Signed in</span>
			</div>
		</section>
		<section class="Easy-sgin-in-wrap">
			<h2>Easier sign in</h2>
			<ul class="sign-button-list">
				<li><button><i class="fas fa-qrcode"></i><span>Sign in with QR code</span></button></li>
				<li><button><i class="fab fa-facebook-square"></i><span>Facebook</span></button></li>
				<li><button><i class="fab fa-line"></i><span>line</span></button></li>
			</ul>
			<p class="forget-msg">Forgot your Username or Password? | Sign up</p>
		</section>
		<footer>
			<div class="copyright-wrap">
			<span>	</a><img src="img/logo.png"> Copyright © NAVER Corp. All Rights Reserved.</span>
			</div>
		</footer>
		</div>
	</div>
</body>