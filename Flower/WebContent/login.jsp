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
</style>
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
			  </div class="navbar-brand top">
				<a  href="index.jsp">
					<img src="img/logo.png">
				</a>

			</div>

			<div class="collapse navbar-collapse" id="main-menu">
			   <ul class="nav navbar-nav navbar-right">
				<%if(info != null){ %>
			   <li><a href="Choiceflower.jsp">꽃추천</a></li>
				<li><a href="Market2.jsp">상품</a></li>
				<li><a href="Mypage2.jsp">마이페이지</a></li>
				<li><a href="logoutServiceCon">로그아웃</a></li>
			   <%}else{ %>
				<li><a href="Choiceflower.jsp">꽃추천</a></li>
				<li><a href="Market2.jsp">상품</a></li>
				<li><a href="login2.jsp">로그인</a></li>
				<li><a href="join3.jsp">회원가입</a></li>
				<%} %>
			  </ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
  



    <!-- Intro -->
	
	
<div class="rows navi_category" style="width:1000px; margin:0 auto; ">
    	<div style="width:650px; float:left; text-align:left; "><span style="font-family:noto; font-size:25px; line-height:25px; color:#333 ;padding-right:10px;">로그인</span> <span style="font-family:noto_light; font-size:16px; color:#666"></span>
        </div>
        <div style="width:350px; float:right;  text-align:right">
            <span style="font-family:noto; font-size:12px; line-height:25px; color:#999;  "><img src="/urbanflower/images/icon_home.gif" width="10" height="10"> <span style="padding:0 10px 0 10px;">&gt;</span>CUSTOMER<span style="padding:0 10px 0 10px;">&gt;</span>로그인
        </span></div>
    </div>
    <!-- 로그인 -->
    
		
	<center><div class="indiv"><!-- Start indiv -->





<table width="50%" cellpadding="0" cellspacing="0" border="0">
<tbody><tr>
	<td style="border:5px solid #F3F3F3; padding:30px 0px;" >
		<div style="margin-left: 45px ;width:400px; padding-right: 40px;margin-right: 45px;">
			<div>
					<div style="padding-bottom:10px;" width="50%"></div>
			</div>
			<div>
				<form method="post" action="loginServiceCon" id="form" name="form">
				
				<table cellpadding="2" border="0" align="right">

				<tbody><tr>
					<td width="80" class="input_txt" style="font-size:15px;">아이디</td>
					<td><input type="text" name="email" size="20" tabindex="1" style="width:215px;padding:5px;"></td>
					
					<td rowspan="2" class="noline"><input type="submit" value="login" tabindex="3" style="width:85px; height: 90px; background-color:black; color:white; "></td>
				</tr>
				
				<tr>
				
					<td width="80" class="input_txt" style="font-size:15px;">비밀번호 </td>
					<td><input type="password" name="pw" size="20" tabindex="2" style="width:215px;padding:5px;"></td>
				</tr>
			
				
				
				
				</tbody>
				</table>
				
				</form>
			</div>
					
					

		</div>

		</center>
					
	

					
				






	</td>
</tr>
</tbody></table>
</div>


</div><p>

</p></div>
	<!-- About ì£¼ë¬¸ìí ê·¸ë¦¼& ì¤ëª-->
	
	<section class="about" id="about">
		
				</div>
			</div>
		</div>
	</section>
	

	
	
	<!-- Gallery -->
	
		
				
				
				
				
		
	
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