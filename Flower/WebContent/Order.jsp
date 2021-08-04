<%@page import="com.moder.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Nevada - Free HTML Bootstrap Template</title>

    <!-- Css -->
    <link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/OrderStyle.css" rel="stylesheet">


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
			  
			  <div>
				<a class="navbar-brand top" href="index.jsp">
					<img src="img/logo.png" alt="">
				</a>

			</div>

			<div class="collapse navbar-collapse" id="main-menu">
			   <ul class="nav navbar-nav navbar-right">
				<%if(info != null){ %>
			   <li><a href="Choiceflower.jsp">꽃추천</a></li>
				<li><a href="Market2.jsp">상품</a></li>
				<li><a href="Mypage.jsp">마이페이지</a></li>
				<li><a href="logoutServiceCon">로그아웃</a></li>
			   <%}else{ %>
				<li><a href="Choiceflower.jsp">꽃추천</a></li>
				<li><a href="Market2.jsp">상품</a></li>
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
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
					<p>오늘의 그대에게 ..  <i>sem ut viverra</i> ullamcorper, neque ligula laoreet justo, non semper nunc mauris mattis lorem. </p>
				</div>
			</div>
		</div>
	</section>

	
	<!-- Slider -->
	<section class="slider">
		<div class="container-fluid">
			<div class="row no-gutter">
				<div class="col-lg-12">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">

					  <!-- Wrapper for slides -->
					  <div class="carousel-inner" role="listbox">
						<div class="item active">
						  <img src="img/slide-1.jpg" alt="slide">
						</div>

						<div class="item">
						  <img src="img/slide-2.jpg" alt="slide">
						</div>

						<div class="item">
						  <img src="img/slide-3.jpg" alt="slide">
						</div>

						<div class="item">
						  <img src="img/slide-4.jpg" alt="slide">
						</div>
					  </div>
					  
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	<!-- About 주문상품 그림& 설명-->
	
	<section class="about" id="about">
		<div class="container about">
			<div class="row">
				<div class="col-md-6 big-letter">
					<p>
						<img src="orderflower.jpg" width = "700px" height= "700px">
					</p>
					<br>
					<p>
						상품이름  :
						<br>
						상품가격  :
						<br>
						매장이름 및 주소 :
						<br>
						
						<form>
							
							<br>
							<span><input type="submit" value="결제하기"></span>
							<br>
							<span>꽃말 띄워주는 부분</span>
							
						</form>
						
					</p>
				</div>
				<div class="col-md-6">
					<p style="text-align: right;">
					
					
					
					
					
					</p>
					<br>
					
				</div>
			</div>
		</div>
	</section>
	

	
	
	<!-- Gallery -->
	
		
				
				
				
				
		
	
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
	<section class="press" id="press">
		<div class="container about">
			<div class="row">
				<div class="col-md-4">
					
				</div>
				
				
				<div class="col-md-4">
					
				</div>
				
				
				<div class="col-md-4">
					
				</div>
			</div>
		</div>
	</section>
	
	
	<!-- Brand -->
	<section id="brand">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
				   <ul class="logo-list list-inline text-center">
					
				  </ul>
				</div>
			</div>
		</div>
	</section>
	
	
	<!-- Copyright -->
	<footer>
		<div class="container">
			<p class="text-center">© 2016 - Designed by <a href="http://www.nicolatolin.com">Nicola Tolin</a></p>
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