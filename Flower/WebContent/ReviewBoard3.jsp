
<%@page import="com.moder.BoardDTO"%>
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

    <title>리뷰 페이지</title>

    <!-- Css -->
    <link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/OrderStyle.css" rel="stylesheet">

<style>
.rows_indi_item:after{
content:"";
display:block;
clear:both;
}
i.discount-ico{
display:inline-block;
width:13px;
heigh: 13px;
background-image: url("");
background-repeat: no-repeat;
background-size: cover;
}
.hover_bg{
height:400px;
padding: 0px !important;
margin:30px auto 30px auto !improtant;
}
.hover_bg:hover .hover_bg_inner{
background: rgba(0,0,0,0.1);
height:400px;
width:100%;
position:relative:
}
.hover_bg:hover.rows_indi_item{
margin-top: -400px;
}

<%
	memberDTO info = (memberDTO)session.getAttribute("info");
	ArrayList<productDTO> list = new ArrayList<productDTO>();
	ArrayList<BoardDTO> board_list = new ArrayList<BoardDTO>();
	list = (ArrayList)session.getAttribute("list");
	board_list = (ArrayList)session.getAttribute("board_list");
%>
</style>
</head>

<body>
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
            
        </div>
       
    </div>
    <!--게시판 css부분 -->
     

	<style>
/* 게시판 html문 */
.sub_news,.sub_news th,.sub_news td{border:0}
.sub_news a{color:#383838;text-decoration:none}
.sub_news{width:50%;border-bottom:0px solid #999;color:#666;font-size:12px;table-layout:fixed }
.sub_news caption{display:none}
.sub_news th{padding:5px 0 6px;border-top:solid 1px #999;border-bottom:solid 1px #b2b2b2;background-color:#f1f1f4;color:#333;font-weight:bold;line-height:20px;vertical-align:top; text-align:center;}
.sub_news td{padding:8px 0 9px;border-bottom:solid 1px #d2d2d2;text-align:center;line-height:18px;}
.sub_news .date,.sub_news .hit{padding:0;font-family:Tahoma;font-size:11px;line-height:50px;}
.sub_news .title{text-align:left; padding-left:15px; font-size:13px;}
.sub_news .title .pic,.sub_news .title .new{margin:0 0 2px;vertical-align:middle}
.sub_news .title a.comment{padding:0;background:none;color:#f00;font-size:12px;font-weight:bold}
.sub_news tr.reply .title a{padding-left:16px;background:url(첨부파일/ic_reply.png) 0 1px no-repeat}
/* //게시판 리스트 목록 */
</style>
</head>
<body>
<!--게시판 시작-->
<br><br>
<table class="sub_news" border="0" cellspacing="0" summary="게시판의 글제목 리스트" style="margin-left: auto; margin-right: auto;">
<caption>리뷰 내용</caption>

<tbody>
<tr>
<td><img src = <%=list.get(0).getProduct_image()%>></td>
<td>상품명 <%=list.get(0).getProduct_name()%> <br><br>
가격<%=list.get(0).getProduct_price()%>원<br><br>
평점 <%=board_list.get(0).getBoard_score()%>점
</td>
</tr>
<tr>
<td colspan = "2"><%=board_list.get(0).getBoard_content() %></td>
</tr>
<!-- tr이 제목 1줄입니다 보일 list 갯수만큼 li반복합니다.-->
</tbody>
</table>

<!-- 리스트 게시판 끝-->
		
	






	
	
	<!-- Gallery -->
	
		
				
				
				
				
		
	
	<!-- End Gallery -->

	
	
			  
			  
			 
			  
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