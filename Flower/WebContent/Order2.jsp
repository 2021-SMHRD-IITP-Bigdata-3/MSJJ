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

    <title>주문 페이지</title>

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
	
	<!-- About 주문상품 그림& 설명-->
	<% int number = (Integer)session.getAttribute("number");%>
	<% int a = (Integer)session.getAttribute("listNum");%>
	<% int b = (Integer)session.getAttribute("storeNum");%>
	<% mixList = (ArrayList)session.getAttribute("list");%>
	<% productList = (ArrayList)session.getAttribute("list2");%>
	<% flowerList2 = (ArrayList)session.getAttribute("list3");%>
	<% storeList = (ArrayList)session.getAttribute("list4");%>
	
	
	<% System.out.println(number);%>
	<% System.out.println(flowerList2.size());%>
	<section class="about" id="about">
		<div class="container about">
			<div class="row">
				<div class="col-md-6 big-letter">
					
					<p>
						<img src= <%=productList.get(a).getProduct_image() %> width = "700px" height= auto>
					
					<br>
					
						상품명  : <%= productList.get(a).getProduct_name()%>
						<br>
						가격  : <%= productList.get(a).getProduct_price()%>원 
						<br>
						<%for (int j = 0; j <= 11; j++) {%>
							<% if (b == j+1){ %>
								매장명 : <%= storeList.get(j).getStore_name()%><br>
								매장주소 : <%= storeList.get(j).getStore_adress()%><br>
								매장전화번호 : <%= storeList.get(j).getStore_tel()%>
							<%} %>
						<%} %>
						<br>
						<%for (int j=0; j < mixList.size();j++) {%>
							<%if(productList.get(a).getProduct_mix().equals(mixList.get(j).getMix_flower())){%>
								<%String [] useFlower = mixList.get(j).getMix_flower().split("_"); %>
								사용한 꽃 : 
								<% for (int i = 0; i<useFlower.length; i++){ %>
									<%= useFlower[i] %>
								<%} %>
								
								<br>
								<% for (int i = 0; i<useFlower.length; i++){ %>
									<%= useFlower[i] %>의 꽃말 :
									<%for (int k =0; k < 25; k++){ %>
										<%if(useFlower[i].equals(flowerList2.get(k).getFlower_name())){ %>
											<%= flowerList2.get(k).getFlower_mean()%><br>
										<%} %>
									<%} %>
								<%} %>
								<br>
								<%= mixList.get(j).getMix_ment()%>	
							<%} %>
						<%} %>
						
						
							
							<br>
							<a href = "Buy.jsp?num=<%=a %>&productNum=<%=number%>&storeNum=<%=b%>"><button>결제하기</button></a>
							<a href = "productReviewServiceCon?num=<%=a %>&productNum=<%=number%>&storeNum=<%=b%>"><button>상품리뷰보기</button></a>
							<br>
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