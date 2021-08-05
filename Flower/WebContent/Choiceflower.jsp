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
			  </div class="navbar-brand top" >
				<a href="index.jsp">
					<img src="img/logo.png">
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
<form action = "recommServiceCon" method = "post">
	<select name="eventday">
		<option value="">기념일</option>
		<option value="발렌타인데이">발렌타인데이</option>
		<option value="화이트데이">화이트데이</option>
		<option value="로즈데이">로즈데이</option>
		<option value="성년의 날">성년의 날</option>
		<option value="어버이날">어버이 날</option>
		<option value="스승의날">스승의 날</option>
		<option value="결혼기념일<">결혼기념일</option>
		<option value="졸업식">졸업식</option>
		
	</select>
	<select name="flowermean">
		<option value="">꽃말</option>
		<option value="당신의 앞날">당신의 앞날</option>
		<option value="기적같은 사랑">기적같은 사랑</option>
		<option value="사랑의 성공">사랑의 성공</option>
		<option value="순수한 사랑">순수한 사랑</option>
		<option value="신비로운 사랑">신비로운 사랑</option>
		<option value="열렬한 사랑">열렬한 사랑</option>
		<option value="영훤한 사랑">영원한 사랑</option>
		<option value="최고의 사랑">최고의 사랑</option>
		<option value="행복한 사랑">행복한 사랑</option>
		<option value="첫사랑의 고백">첫사랑의 고백</option>
		<option value="진심">진심</option>
		<option value="우정">우정</option>
		<option value="존경">존경</option>
		<option value="감사">감사</option>
		<option value="성공">성공</option>
		
	</select>
	<input type = "submit" value = "선택">
</form>
	
	
	<!-- About 주문상품 그림& 설명-->
	
	<section class="about" id="about">
		<div class="container about">
			<div class="row">
				<div class="col-md-6 big-letter">
				<!-- 반복문으로 구매상품 출력 -->
				
					<a>
						<img src="orderflower.jpg" width = "400px" height= "400px">
					</a>
				


					
					
					
				</div>
				<div class="col-md-6">
					<p style="text-align: right;">
					
					
					
					
					
					</p>
					<br>
					
				</div>
			</div>
		</div>
	</section>
	
<input type="text"> <button>+</button><button>-</button> <br>
	
	
	<!-- Gallery -->
	<h1>포장고르기</h1>
	
	
	<label><input type="radio" name="s"><img src= "pojangji.png"></label>
	<label><input type="radio" name="s"><img src= "pojangji.png"></label>
	<label><input type="radio" name="s"><img src= "pojangji.png"></label>
	<label><input type="radio" name="s"><img src= "pojangji.png"></label>
	<br>
	
	<a>
		<img src="orderflower.jpg" width = "400px" height= "400px">
	</a>
	<br>
	
	<span>매장,위치</span><button>매장리뷰</button>	<br>
	<span>매장,위치</span><button>매장리뷰</button>	<br>
	<span>매장,위치</span><button>매장리뷰</button>	<br>
	<!-- for문으로 더보기 -->
	<p>꽃말 123131231231231</p>	
		
		<a href="Order.html"><button>주문하기</button>	</a>	
				
				
				
		
	
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