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

    <title>Nevada - Free HTML Bootstrap Template</title>

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

	<% mixList = (ArrayList)session.getAttribute("list");%>
	<% productList = (ArrayList)session.getAttribute("list2");%>
	<% flowerList2 = (ArrayList)session.getAttribute("list3");%>
	<% storeList = (ArrayList)session.getAttribute("list4");%>
	<% int number = (Integer)session.getAttribute("productNum");%>
	<% int a = (Integer)session.getAttribute("num");%>
	<% int b = (Integer)session.getAttribute("storeNum");%>
	
	
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
  



   

   
   <!-- Slider -->
   
   
   
   
   <h1 align = "center">결제가 완료 되었습니다.</h1>
   <div>
   <a href="WriteBoard.jsp?num=<%=a %>&productNum=<%=number%>&storeNum=<%=b%>"><input type="button"style="width:33%" value="리뷰 쓰러가기"></a>
   <a href="showBuyServiceCon?num=<%=a %>&productNum=<%=number%>&storeNum=<%=b%>&id=<%=info.getEmail()%>"><input type="button" style="width:33%" value="구매내역으로"></a>
   <a href="index.jsp"><input  type="button" style= "width:33%" value="메인으로"></a>      
   </div>    
            
            
      
   
   <!-- End Gallery -->

   
   
           
           
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