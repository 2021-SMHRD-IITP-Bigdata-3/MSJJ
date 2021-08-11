<%@page import="com.moder.mixDTO"%>
<%@page import="com.moder.productDTO"%>
<%@page import="com.moder.flowerDTO"%>
<%@page import="com.moder.StoreDTO"%>
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

    <title>리뷰 쓰기</title>
     

    <!-- Css -->
    <link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/OrderStyle.css" rel="stylesheet">
	<style>
        .rating .rate_radio + label {
    position: relative;
    display: inline-block;
    margin-left: -4px;
    z-index: 10;
    width: 60px;
    height: 60px;
    background-image: url('./img/starrate.png');
    background-repeat: no-repeat;
    background-size: 200px 100px;
    cursor: pointer;
    background-color: #f0f0f0;
}
.rating .rate_radio:checked + label {
    background-color: #ff8;
}
.wrap{
    max-width: 480px;
    margin: 0 auto; /* 화면 가운데로 */
    background-color: #fff;
    height: 100%;
    padding: 20px;
    box-sizing: border-box;

}
.reviewform textarea{
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
}
.rating .rate_radio {
    position: relative;
    display: inline-block;
    z-index: 20;
    opacity: 0.001;
    width: 60px;
    height: 60px;
    background-color: #fff;
    cursor: pointer;
    vertical-align: top;
    display: none;
}
.rating .rate_radio + label {
    position: relative;
    display: inline-block;
    margin-left: -4px;
    z-index: 10;
    width: 60px;
    height: 60px;
    background-image: url('./img/starrate.png');
    background-repeat: no-repeat;
    background-size: 60px 60px;
    cursor: pointer;
    background-color: #f0f0f0;
}
.rating .rate_radio:checked + label {
    background-color: #ff8;
}

.warning_msg {
    display: none;
    position: relative;
    text-align: center;
    background: #ffffff;
    line-height: 26px;
    width: 100%;
    color: red;
    padding: 10px;
    box-sizing: border-box;
    border: 1px solid #e0e0e0;
}
    </style>


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
	<% int number = Integer.parseInt(request.getParameter("productNum"));%>
	<% int a = Integer.parseInt(request.getParameter("num"));%>
	<% int b = Integer.parseInt(request.getParameter("storeNum")); %>

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
				<li><a href="Market.jsp">상품</a></li>
				<li><a href="Mypage.jsp">마이페이지</a></li>
				<li><a href="logoutServiceCon">로그아웃</a></li>
				<li><a href="reviewBoardServiceCon">리뷰 </a></li>
			   <%}else{ %>
				<li><a href="Choiceflower.jsp">꽃추천</a></li>
				<li><a href="Market.jsp">상품</a></li>
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
				<li><a href="reviewBoardServiceCon">리뷰</a></li>
				
				<%} %>
			  </ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
  



    <!-- Intro -->
	<div class="rows navi_category" style="width:1000px; margin:0 auto; ">
    	<div style="width:650px; float:left; text-align:left; "><span style="font-family:noto; font-size:25px; line-height:25px; color:#333 ;padding-right:10px;">리뷰게시판</span> <span style="font-family:noto_light; font-size:16px; color:#666">꽃으로 사랑하는 사람에게 진심을 전해보세요.</span>
        </div>
        <div style="width:350px; float:right;  text-align:right">
            <span style="font-family:noto; font-size:12px; line-height:25px; color:#999;  "><img src="/urbanflower/images/icon_home.gif" width="10" height="10"> <span style="padding:0 10px 0 10px;">&gt;</span>CUSTOMER<span style="padding:0 10px 0 10px;">&gt;</span>리뷰게시판
        </span></div>
       
    </div>
	<div class="wrap">
        <h1></h1>
        
            <input type="hidden" name="rate" id="rate" value="0"/>
            <p>
            <img src = <%=productList.get(a).getProduct_image() %>  width="700" height= auto>
			상품이름  :<%= productList.get(a).getProduct_name()%>
			<br>
			상품가격  :<%= productList.get(a).getProduct_price() %>원
			<br>
			<%String stn = ""; 
			if (storeList.size() == 1){
				stn = storeList.get(0).getStore_name();	
			}else{
				stn = storeList.get(b-1).getStore_name(); 
			}%>
			매장       :<%= stn%>
			<br>
			
			<%session.setAttribute("image",productList.get(a).getProduct_image() ); %>
			<%session.setAttribute("name",productList.get(a).getProduct_name()); %>
			<%session.setAttribute("price",productList.get(a).getProduct_price() ); %>
			<%session.setAttribute("storename", stn ); %>
			<%session.setAttribute("email",info.getEmail() ); %>
			<%session.setAttribute("productNum",number); %>
			<%session.setAttribute("storeNum",b); %>

			
			</p>
            <p class="title_star">평점과 리뷰를 남겨주세요.</p>
            <form name="reviewform" class="reviewform" method="post" action="WriteBoardServiceCon">
            <div>
            1<input type="radio" style="width:20px;height:20px;border:1px" name="score" value = "1">
            2<input type="radio" style="width:20px;height:20px;border:1px" name="score" value = "2">
            3<input type="radio" style="width:20px;height:20px;border:1px" name="score" value = "3">
            4<input type="radio" style="width:20px;height:20px;border:1px" name="score" value = "4">
            5<input type="radio" style="width:20px;height:20px;border:1px" name="score" value = "5">
     		</div>
            <div class="review_contents">
            <tr>
						<td>작성자</td>
						<td> : <%= info.getName()%></td>
					</tr>
                <div class="warning_msg">5자 이상으로 작성해 주세요.</div>
                <textarea rows="10" class="review_textarea" name = "content"></textarea>
            </div>
            <input type="submit" name="save" id="save" value="등록"> 
            </form>
            
            
            <div class="cmd">
                 
            </div>
        
    </div>

	
	
	

</body>
</html>