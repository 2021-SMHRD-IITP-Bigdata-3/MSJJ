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
<link  href = "./css/JoinStyle.css" rel = "stylesheet">
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
    	<div style="width:650px; float:left; text-align:left; "><span style="font-family:noto; font-size:25px; line-height:25px; color:#333 ;padding-right:10px;">회원가입</span> <span style="font-family:noto_light; font-size:16px; color:#666"></span>
        </div>
        <div style="width:350px; float:right;  text-align:right">
            <span style="font-family:noto; font-size:12px; line-height:25px; color:#999;  "><img src="/urbanflower/images/icon_home.gif" width="10" height="10"> <span style="padding:0 10px 0 10px;">&gt;</span>CUSTOMER<span style="padding:0 10px 0 10px;">&gt;</span>회원가입
        </span></div>
    </div>

    <!-- 회원가입 -->    
        <br>
	<form id="form" name="frmMember" method="post" action="joinServiceCon" onsubmit="return chkForm2(this)">

<!-- 네이버체크아웃(회원연동) -->


<div style="text-align: right;margin-bottom: 10px;font-size:12px;"><font color="FF6000">* </font><font class="small"><b>필수입력사항</b></font></div>
<div style="border:1px solid #DEDEDE;" class="hundred">
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tbody><tr>
<td style="border:5px solid #F3F3F3;">

<table width="100%" cellpadding="0" cellspacing="0">
<tbody><tr>
<td style="padding:10px 0" align="center">

<table width="50%" cellpadding="5" cellspacing="0" border="0">
<tbody><tr style="height:50px;">
	<td class="memberCols1"><font color="FF6000">*</font> 아이디</td>
	<td class="memberCols2">
	<input type="text" name="email" value="" style="width:200px;" maxlength="16&quot;" required="" fld_esssential="" option="regId" label="아이디">
	
	
	</td>
</tr>
<tr><td colspan="2" height="1" bgcolor="#DEDEDE" style="padding:0px;"></td></tr>
<tr style="height:50px;">
	<td class="memberCols1"><font color="FF6000">*</font> 비밀번호</td>
	<td class="memberCols2">
	<input type="password" name="pw" required="" fld_esssential="" option="regPass" label="비밀번호" style="width:200px;" onfocus="checkPassword(this)" onkeyup="checkPassword(this)" onblur="emptyPwState()" maxlength="16">

		

	</td>
</tr>
<tr><td colspan="2" height="1" bgcolor="#DEDEDE" style="padding:0px;"></td></tr>

<tr><td colspan="2" height="1" bgcolor="#DEDEDE" style="padding:0px;"></td></tr>
<tr style="height:50px;">
	<td class="memberCols1"><font color="FF6000">*</font> 이름</td>
	<td class="memberCols2">
	<input type="text" style="width:200px;" name="name" value="" required="" fld_esssential="" label="이름">
	</td>
</tr>

<tr><td colspan="2" height="1" bgcolor="#DEDEDE" style="padding:0px;"></td></tr>

<tr style="height:70px;">
	<td class="memberCols1"><font color="FF6000">*</font> 핸드폰</td>
	<td class="memberCols2">
	<input type="text" name="tel" id="mobile0" style="width:200px;" value="" size="4" maxlength="11" required="" fld_esssential="" option="regNum" label="핸드폰">
	

	</td>
</tr>

</tbody></table>

</td>
</tr>
</tbody></table>

</td>
</tr>
</tbody></table>
</div>

<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tbody><tr>
<td id="avoidDbl" align="center" height="100">
<div style="width:100%" class="noline"><input style="margin-right: 100px; background-color:white;" type="submit" value="회원가입">

</div>
</td>
</tr>
</tbody></table>

</form>
	
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