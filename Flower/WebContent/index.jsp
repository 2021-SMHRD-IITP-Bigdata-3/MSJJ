<%@page import="java.util.ArrayList"%>
<%@page import="com.moder.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Belle Fleur</title>

    <!-- Css -->
    <link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/style2.css" rel="stylesheet">


</head>

<body>
<%
	memberDTO info = (memberDTO)session.getAttribute("info");
	
%>

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<div class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu">	
					<span class="bar1"></span>
					<span class="bar2"></span>
					<span class="bar3"></span>
			  </div>
				<a class="navbar-brand top" href="#">
					<img src="img/logo.png"alt="">
				</a>

			</div>

			<div class="collapse navbar-collapse" id="main-menu">
			   <ul class="nav navbar-nav navbar-right">
			   <%if(info != null){ %>
			   <li><a href="Choiceflower.jsp">꽃추천</a></li>
				<li><a href="Mypage.jsp">마이페이지</a></li>
				<li><a href="logoutServiceCon">로그아웃</a></li>
				<li><a href="reviewBoardServiceCon">리뷰 </a></li>
			   <%}else{ %>
				<li><a href="Choiceflower.jsp">꽃추천</a></li>
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
				<li><a href="reviewBoardServiceCon">리뷰</a></li>
				
				<%} %>
			  </ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
  



    <!-- Intro -->
	<section class="intro">
		<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<p>오늘의 그대에게 ..<br>  
					     한번쯤 다시 만나고 싶은 사람을 간직하는 것은<br>
					      궁금해서도 다시 시작하고 싶어서도 아니다<br>
					      나의 삶을 채워준 그대에게<br> 
					      사랑을 눈뜨게 해준 그대에게 <br>
					      감사하는 마음을 대신 하고 싶은 것이다.
					</p>
				</div>
			</div>
		</div>
	</section>

	
	<!-- Slider -->
	
	
	
	<!-- About -->
	
	

	
	
	<!-- Gallery -->
	<section id="portfolio">
		<div class="container">
			<div class="row">
			
			<h1>오늘의 추천 상품</h1>
				<div class="col-md-6 thumbnail">
					<div class="hovereffect">
						<div class="col-md-12 photo-1"></div>
				
				
							<a href="recommServiceCon2?eventDay='미선택'&flowerMean='순수한 사랑'&flowerType=2&mainNum=1">
								<div class="overlay">
									<h2>꽃을 보니 니가 생각나서..</h2>
									<p>8월에 어울리는..</p> 
								</div>
							</a>
					</div>
				</div>
				
				
				<div class="col-md-6 thumbnail">
					<div class="hovereffect">
						<div class="col-md-12 photo-2"></div>
							<a href="recommServiceCon2?eventDay=미선택&flowerMean=열렬한 사랑&flowerType=2&mainNum=2">
								<div class="overlay">
									<h2>오늘 너의 건치가 보고싶어서..</h2>
									<p>불타는 나의 사랑</p> 
								</div>
							</a>
					</div>
				</div>
				
				
			</div>
		</div>
		
		<div class="container">
			<div class="row">
			
			
				<div class="col-md-6 thumbnail">
					<div class="hovereffect">
						<div class="col-md-12 photo-3"></div>
							<a href="recommServiceCon2?eventDay='미선택'&flowerMean='행복한 사랑'&flowerType=2&mainNum=3">
								<div class="overlay">
									<h2>넌 나의 완소녀</h2>
									<p>완소녀</p> 
								</div>
							</a>
					</div>
				</div>
				
				
				<div class="col-md-6 thumbnail">
					<div class="hovereffect">
						<div class="col-md-12 photo-4"></div>
							<a href="recommServiceCon2?eventDay='미선택'&flowerMean='행복한 사랑'&flowerType=2&mainNum=4">
								<div class="overlay">
									<h2>나의 행복은...  </h2>
									<p>바로 당신</p> 
								</div>
							</a>
					</div>
				</div>
				
				
			</div>
		</div>	
	</section>
	<section class="about" id="about">
		<div class="container about">
			<div class="row">
				<div class="col-md-6 big-letter">
					<p>
						
					</p>
					<br>
					<p>
						
					</p>
				</div>
				<div class="col-md-6">
					<p>
						
					</p>
					<br>

				</div>
			</div>
		</div>
	</section>
		
	
	<!-- End Gallery -->

	<div class="container">
	  <div class="modal fade and carousel slide" id="mybox">
		<div class="modal-dialog">
		  <div class="modal-content">
			<div class="modal-body">
			  
			  <button class="close" data-dismiss="modal" type="button">×</button>
			  
			  
			  <div class="carousel-inner">
					<div class="item active">
					  <img src="img/1.jpg" alt="slide">
					</div>
					<div class="item">
					  <img src="img/2.jpg" alt="slide">
					</div>
					<div class="item">
					  <img src="img/3.jpg" alt="slide">
					</div>
					<div class="item">
					  <img src="img/4.jpg" alt="slide">
					</div>
			  </div><!-- /.carousel-inner -->
			  
			  
			  <a class="left carousel-control" href="#mybox" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			  </a>
			  <a class="right carousel-control" href="#mybox" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			  </a>
			  
			</div><!-- /.modal-body -->
		  </div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	  </div><!-- /.modal -->
	</div><!-- /.container -->
	
	
	
	
	
	<!-- Press -->
	
	
	
	<!-- Brand -->
	
	
	
	<!-- Copyright -->
	<footer>
		<div class="container">
			
		</div>
	</footer>
	
	<a href="#page-top" class="cd-top">Top</a>
	

    <!-- script -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script src="js/modernizr.js"></script>
	<script src="js/script.js"></script>
	
	

</body>
</html>