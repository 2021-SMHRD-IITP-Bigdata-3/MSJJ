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
			  </div>
				<a class="navbar-brand top" href="#">
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
					<p>오늘의 그대에게 ..   <i>sem ut viverra</i> ullamcorper, neque ligula laoreet justo, non semper nunc mauris mattis lorem. </p>
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
	<f:form modelAttribute="review" action="${ reviewsPath }" method="post">
    <c:forEach var="error" items="${ fieldErrors }">
        <div class="alert alert-warning">
            <strong>${ error.getField() }</strong>: ${ error.getDefaultMessage() }
        </div>
    </c:forEach>
    <f:textarea path="text" cssClass="form-control" rows="5" />
    <!-- 평점 선택창 -->
    <f:label path="rating">평점: </f:label>
    <f:select path="rating">
        <f:options items="${ ratingOptions }"/>
    </f:select>
    <f:hidden path="bookId" />
    <f:hidden path="userId" />
    <button class="btn btn-block btn-primary" type="submit">리뷰 등록</button>
</f:form>
	
	
	<div style="width:1000px; margin:0 auto;">
	<style>.starts { color #ff0000;}</style>
	<div>
		<div class="wrap">
    
    <h1>후기</h1>
    <form name="reviewform" class="reviewform" method="post" action="/save">
        <input type="hidden" name="rate" id="rate" value="0"/>
        <p class="title_star">별점과 리뷰를 남겨주세요.</p>
 
        <div class="review_rating">
            <div class="startRadio">
  <label class="startRadio__box">
    <input type="radio" name="star" id="">
    <span class="startRadio__img"><span class="blind">별 1개</span></span>
  </label>
  <label class="startRadio__box">
    <input type="radio" name="star" id="">
    <span class="startRadio__img"><span class="blind">별 1.5개</span></span>
  </label>
  <label class="startRadio__box">
    <input type="radio" name="star" id="">
    <span class="startRadio__img"><span class="blind">별 2개</span></span>
  </label>
  <label class="startRadio__box">
    <input type="radio" name="star" id="">
    <span class="startRadio__img"><span class="blind">별 2.5개</span></span>
  </label>
  <label class="startRadio__box">
    <input type="radio" name="star" id="">
    <span class="startRadio__img"><span class="blind">별 3개</span></span>
  </label>
  <label class="startRadio__box">
    <input type="radio" name="star" id="">
    <span class="startRadio__img"><span class="blind">별 3.5개</span></span>
  </label>
  <label class="startRadio__box">
    <input type="radio" name="star" id="">
    <span class="startRadio__img"><span class="blind">별 4개</span></span>
  </label>
  <label class="startRadio__box">
    <input type="radio" name="star" id="">
    <span class="startRadio__img"><span class="blind">별 4.5개</span></span>
  </label>
  <label class="startRadio__box">
    <input type="radio" name="star" id="">
    <span class="startRadio__img"><span class="blind">별 5개</span></span>
  </label>
  <label class="startRadio__box">
    <input type="radio" name="star" id="">
    <span class="startRadio__img"><span class="blind">별 5.5개</span></span>
  </label>
</div>
        <div class="review_contents">
            <div class="warning_msg">5자 이상으로 작성해 주세요.</div>
            <textarea rows="10" class="review_textarea"></textarea>
        </div>   
        <div class="cmd">
            <input type="button" name="save" id="save" value="등록">
        </div>
    </form>
</div>
        
			</div><!-- /.modal-body -->
		  </div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	  </div><!-- /.modal -->
	</div><!-- /.container -->
	
	
	
	
	
	<!-- Press -->
	
	
	
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
			<p class="text-center">Â© 2016 - Designed by <a href="http://www.nicolatolin.com">Nicola Tolin</a></p>
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