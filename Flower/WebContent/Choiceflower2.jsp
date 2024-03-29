<%@page import="com.moder.StoreDTO"%>
<%@page import="com.moder.flowerDTO"%>
<%@page import="com.moder.mixDTO"%>
<%@page import="com.moder.recommDAO"%>
<%@page import="com.moder.productDTO"%>
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

    <title>꽃 추천 페이지</title>

    <!-- Css -->
    <link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/OrderStyle.css" rel="stylesheet">


</head>

<body>
<%
	memberDTO info = (memberDTO)session.getAttribute("info");
	ArrayList<mixDTO> mixList = new ArrayList<mixDTO>();
	ArrayList<productDTO> productList = new ArrayList<productDTO>();
	ArrayList<flowerDTO> flowerList= new ArrayList<flowerDTO>();
	ArrayList<StoreDTO> storeList= new ArrayList<StoreDTO>();
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
					<img src="img/logo123.png" width="100px" height="80px">
				</a>

			</div>

			<div class="collapse navbar-collapse" id="main-menu">
			   <ul class="nav navbar-nav navbar-right">

		

			<%if(info != null){ %>
				<li><a href="Choiceflower.jsp">꽃추천</a></li>
				<li><a href="Market.jsp">상품</a></li>
				<li><a href="Mypage.jsp">마이페이지</a></li>
				<li><a href="logoutServiceCon">로그아웃</a></li>
				<li><a href="ReviewBoard.jsp">리뷰 </a></li>
			<%}else{ %>
				<li><a href="Choiceflower.jsp">꽃추천</a></li>
				<li><a href="Market.jsp">상품</a></li>
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
				<li><a href="ReviewBoard.jsp">리뷰</a></li>
			<%} %>
			  </ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
  



    <!-- Intro -->
	<div class="rows navi_category" style="width:1000px; margin:0 auto; ">
    	<div style="width:650px; float:left; text-align:left; "><span style="font-family:noto; font-size:25px; line-height:25px; color:#333 ;padding-right:10px;">나만의 꽃선물</span> <span style="font-family:noto_light; font-size:16px; color:#666">꽃으로 사랑하는 사람에게 진심을 전해보세요.</span>
        </div>
        <div style="width:350px; float:right;  text-align:right">
            <span style="font-family:noto; font-size:12px; line-height:25px; color:#999;  "><img src="/urbanflower/images/icon_home.gif" width="10" height="10"> <span style="padding:0 10px 0 10px;">&gt;</span>CUSTOMER<span style="padding:0 10px 0 10px;">&gt;</span>나만의 꽃선물
        </span></div>
       
    </div>
    <br>
    <br>

	
	<!-- Slider -->
<form align="center" action = "recommServiceCon" method = "post">
	<h2 align = "center">기념일 또는 꽃말을 선택하세요.</h2>
	<br>
	<select style= "width:200px;height:50px" name="eventDay">
		<option value="미선택">기념일</option>
		<option value="발렌타인데이">발렌타인데이</option>
		<option value="화이트데이">화이트데이</option>
		<option value="로즈데이">로즈데이</option>
		<option value="성년의 날">성년의 날</option>
		<option value="어버이날">어버이 날</option>
		<option value="스승의날">스승의 날</option>
		<option value="결혼기념일<">결혼기념일</option>
		<option value="졸업식">졸업식</option>
		<option value="미선택">미선택</option>
		
	</select>
	<select style="width:200px;height:50px" name="flowerMean">
		<option value="미선택">꽃말</option>
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
		<option value="미선택">미선택</option>
	</select>
<br><br>

	
	
	<!-- About 주문상품 그림& 설명-->
	
	<!-- Gallery -->
	
	<br><br>
	<table align="center" border-collapse = collapse; border-spacing = 0;>
	<tr>
	<td text-align="center">한송이</td>
	<td text-align="center">꽃다발</td>
	<td text-align="center">바구니</td>
	<td text-align="center">꽃상자</td>
	</tr>
	<tr>
	<td  style="width:25%; height:25%;">
	<label><input type="radio" style="width:20px;height:20px;border:1px" name="flowerType" value = "1"><img width = 50% height = 50% src= "./img/flower/a.jpg">
	</td></label>
	<td style="width:25%; height:25%;">
	<label><input type="radio" style="width:20px;height:20px;border:1px" name="flowerType" value = "2"><img width = 50% height = 50% src= "./img/flower/b.jpg"></label>
	</td>
	
	
	
	
	<td>
	<label><input type="radio" style="width:20px;height:20px;border:1px" name="flowerType" value = "3"><img width = 50% height = 50% src= "./img/flower/c.jpg"></label>
	</td>
	<td>
	<label><input type="radio" style="width:20px;height:20px;border:1px" name="flowerType" value = "4"><img width = 50% height = 50% src= "./img/flower/d.jpg"></label>
	</td>
	</tr>
	<tr>
	
	</tr>
	<tr>
	<td colspan = "4" align = "center">
	<br>
	<input style="width:100px;height:60px; color:white; background-color:black;" type = "submit" value = "선택">
	<td>
	</tr>
	</table>
</form>

<% mixList = (ArrayList)session.getAttribute("list");%>
<% productList = (ArrayList)session.getAttribute("list2");%>
<% flowerList = (ArrayList)session.getAttribute("list3");%>
<% storeList = (ArrayList)session.getAttribute("list4");%>

<%if(productList != null) {%>
	<%for(int i =0; i < productList.size(); i++){%>
	<%int a = productList.get(i).getProduct_store(); %>
		<table align = "center">
		<tr>
			<td width = "500px" height = 450px >			
				<a href = "Order.jsp?number=<%= productList.get(i).getProduct_number()%>&listNum=<%=i%>"> <img width = "400px" height = auto src = <%= productList.get(i).getProduct_image()%>></a>
			<td>
			<td width = "300px">
				상품명 : <%= productList.get(i).getProduct_name()%><br>
				가격 : <%= productList.get(i).getProduct_price()%>원<br>
				
				
				
				<%for (int j = 0; j <= 11; j++) {%>
					<% if (a == j+1){ %>
						매장명 : <%= storeList.get(j).getStore_name()%><br>
						매장주소 : <%= storeList.get(j).getStore_adress()%><br>
						매장전화번호 : <%= storeList.get(j).getStore_tel()%>
					<%} %>
				<%} %>
				<br><br>
				<%for (int j=0; j < mixList.size();j++) {%>
					<%if(productList.get(i).getProduct_mix().equals(mixList.get(j).getMix_flower())){%>
						<%= mixList.get(j).getMix_ment()%>	
					<%} %>
				<%} %>
				
				
			</td>
		</tr>
		

	
		</table>
	<%} %>
<%} %>

	
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