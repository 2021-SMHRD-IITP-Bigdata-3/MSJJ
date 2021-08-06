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
	<link href="css/ReviewBoardStyle.css" rel="stylesheet">


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
				<li><a href="ReviewBoard.jsp">Review</a></li>
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
		
	</section>
	
	
	<!-- About 주문상품 그림& 설명-->
	<header class="top-menu con row">
    <div class="cell-right">
        <a href="#">로그인</a>
        <a href="#">회원가입</a>
        <a href="#">글 목록</a>
        <a href="#">글 작성</a>
    </div>
</header>

    <h1 class="con">후기 게시판</h1>
    <section class="article-list table-common con">
        <table border="1">
            <thead>
                <tr>
                    <th>매장</th>
                    <th>제목</th>
                    <th>평점</th>
                    <th>작성자</th>
                    
                </tr>
            </thead>
            <tbody>
            <!-- for문으로 내용출력 -->
                <tr>
                    <td>내용1</td>
                    <td>내용2</td>
                    <td>내용3</td>
                    <td>내용4</td>
                    
                </tr>
                <tr>
                    <td>내용1</td>
                    <td>내용2</td>
                    <td>내용3</td>
                    <td>내용4</td>
                   
                </tr>
                <tr>
                    <td>내용1</td>
                    <td>내용2</td>
                    <td>내용3</td>
                    <td>내용4</td>
                    
                </tr>
                <tr>
                    <td>내용1</td>
                    <td>내용2</td>
                    <td>내용3</td>
                    <td>내용4</td>
                    
                </tr>
                <tr>
                    <td>내용1</td>
                    <td>내용2</td>
                    <td>내용3</td>
                    <td>내용4</td>
                   
                </tr>
            </tbody>
        </table>
    </section>

   
    
</div>

<footer></footer>
	<section class="about" id="about">
		<div class="container about">
			<div class="row">
				<div class="col-md-6 big-letter">
					
					
				</table>
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