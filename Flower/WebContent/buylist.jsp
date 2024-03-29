<%@page import="com.moder.buyDTO"%>
<%@page import="com.moder.StoreDTO"%>
<%@page import="com.moder.flowerDTO"%>
<%@page import="com.moder.productDTO"%>
<%@page import="com.moder.mixDTO"%>
<%@page import="java.util.ArrayList"%>
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

    <title>구매내역</title>

    <!-- Css -->
    <link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/OrderStyle.css" rel="stylesheet">


</head>

<body>
<%
	memberDTO info = (memberDTO)session.getAttribute("info");
	ArrayList<mixDTO> mixList = new ArrayList<mixDTO>();
	ArrayList<productDTO> productList = new ArrayList<productDTO>();
	ArrayList<flowerDTO> flowerList2 = new ArrayList<flowerDTO>();
	ArrayList<StoreDTO> storeList= new ArrayList<StoreDTO>();
	ArrayList<buyDTO> buyList = new ArrayList<buyDTO>();
		
%>

	<% mixList = (ArrayList)session.getAttribute("list");%>
	<% productList = (ArrayList)session.getAttribute("list2");%>
	<% flowerList2 = (ArrayList)session.getAttribute("list3");%>
	<% storeList = (ArrayList)session.getAttribute("list4");%>
	<% buyList = (ArrayList)session.getAttribute("buyList");%>
	<% int number = 0;%>
	<% int a = 0;%>
	<% int b = 0; %>
	
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<div class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu">	
					<span class="bar1"></span>
					<span class="bar2"></span>
					<span class="bar3"></span>
			  </div>
				<a href="index.jsp">
					<img src="img/logo.png" alt="">
				</a>

			</div>

			<div class="collapse navbar-collapse" id="main-menu">
			   <ul class="nav navbar-nav navbar-right">
			   <%if(info != null){ %>
			   <li><a href="Choiceflower.jsp">꽃추천</a></li>
				
				<li><a href="Mypage.jsp">마이페이지</a></li>
				<li><a href="logoutServiceCon">로그아웃</a></li>
				<li><a href="ReviewBoard.jsp">리뷰 </a></li>
			   <%}else{ %>
				<li><a href="Choiceflower.jsp">꽃추천</a></li>
				
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
				<li><a href="ReviewBoard.jsp">리뷰</a></li>
				
				<%} %>
			  </ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
  



    <!-- Intro -->
	
	<!-- Slider -->
	
	<div class="rows navi_category" style="width:1000px; margin:0 auto; ">
    	<div style="width:650px; float:left; text-align:left; "><span style="font-family:noto; font-size:25px; line-height:25px; color:#333 ;padding-right:10px;">구매내역</span> <span style="font-family:noto_light; font-size:16px; color:#666">꽃으로 사랑하는 사람에게 진심을 전해보세요.</span>
        </div>
        <div style="width:350px; float:right;  text-align:right">
            </div>
    </div>
	
	
	
	<!-- About 주문상품 그림& 설명-->
	
	<section class="about" id="about">
		<div class="container about">
			<div class="row">
				<div class="col-md-6 big-letter">
				<!-- 반복문으로 구매상품 출력 -->
				
					
					<br>
						<p>
						
						<%for (int i = 0; i < buyList.size(); i++){ %>
							상품이름:  
									<%= buyList.get(i).getBuy_productName() %><br>
									<img src= <%= buyList.get(i).getBuy_productImage()%> width = "700px" height= auto>
																
							<br>
							상품가격: <%= buyList.get(i).getBuy_price() %>
							<br>
							구매일자: <%= buyList.get(i).getBuy_date() %>
							<br>
							매장이름: <%= buyList.get(i).getBuy_productStoreName() %>
							<br>
							<a href = "WriteBoard.jsp?num=<%=i%>&productNum=<%=buyList.get(i).getBuy_productNum()%>&storeNum=<%=buyList.get(i).getBuy_store()%>"><input type="button" value="리뷰쓰기"></a>
							<br><br><br>
							
							
						<%} %>
							
						</p>
				
				
					
					<br>
					
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