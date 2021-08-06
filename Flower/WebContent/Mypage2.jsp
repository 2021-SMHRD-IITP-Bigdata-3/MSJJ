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
	
	
	
<div class="rows navi_category" style="width:1000px; margin:0 auto; ">
    	<div style="width:650px; float:left; text-align:left; "><span style="font-family:noto; font-size:25px; line-height:25px; color:#333 ;padding-right:10px;">마이페이지</span> <span style="font-family:noto_light; font-size:16px; color:#666">꽃으로 사랑하는 사람에게 진심을 전해보세요.</span>
        </div>
        <div style="width:350px; float:right;  text-align:right">
            <span style="font-family:noto; font-size:12px; line-height:25px; color:#999;  "><img src="/urbanflower/images/icon_home.gif" width="10" height="10"> <span style="padding:0 10px 0 10px;">&gt;</span>CUSTOMER<span style="padding:0 10px 0 10px;">&gt;</span>마이페이지
        </span></div>
    </div>
    <!-- 마이페이지 css부분 -->
    
		
	<div class="indiv"><!-- Start indiv -->


<style type="text/css">
button.btn {
	border: none;
	font-size: 0;
	cursor: pointer;
}
div.sns-connect-status-title {
	margin-top: 15px;
	background: url("/shop/data/skin/standard/img/meminfor_sns_01.gif") no-repeat;
	width: 82px;
	height: 23px;
	font-size: 0;
}
div.outer-border {
	border: 1px solid #dedede;
}
.inner-border {
	border: 5px solid #f3f3f3;
	padding: 10px;
}
div.sns-connect-status {
	overflow: hidden;
}
div.sns-profile-image {
	float: left;
}
div.sns-profile-image img {
	vertical-align: top;
}
div.sns-connect-controll {
	float: left;
	margin-left: 10px;
}
div.connected-sns img {
	vertical-align: middle;
}
div.connected-sns span.connect-status {
	font: 11px dotum;
	color: #666666;
	margin-left: 6px;
}
div.connected-sns button.btn-facebook-disconnect {
	background: url('/shop/data/skin/standard/img/meminfo_btn_sns_clear_facebook.png') no-repeat;
	width: 200px;
	height: 26px;
	vertical-align: middle;
}
div.connected-sns button.btn-payco-disconnect {
	background: url('/shop/data/skin/standard/img/meminfo_btn_sns_clear_payco.png') no-repeat;
	width: 200px;
	height: 26px;
	vertical-align: middle;
}
div.connected-sns {
	display:inline;
}
div.connected-sns button.btn-facebook-connect {
	background: url('/shop/data/skin/standard/img/login_sns_facebook_wide.png') no-repeat;
	width: 250px;
	height: 45px;
	background-size: cover;
	vertical-align: middle;
}
div.connected-sns button.btn-payco-connect {
	background: url('/shop/data/skin/standard/img/meminfo_sns_payco.png') no-repeat;
	width: 200px;
	height: 26px;
	vertical-align: middle;
}
#sns-txt-FACEBOOK {color:#3b579d; font-weight:bold;}
#sns-txt-PAYCO {color:#fa1414; font-weight:bold;}
.sns-info {margin-top:2px; color:#959595;font-size:13px;}
</style>

	









<script src="/shop/data/skin/standard/godo.password_strength.js" type="text/javascript"></script>

<style type="text/css">
div.passwordStrenth {background-color:#FFFFFF; border:1px #CCCCCC solid; padding:10px; width:263px;display:none; position:absolute;}

div.passwordStrenth p {margin:0;padding:5px 0 0 0; font-size:11px; font-family:dotum;color:#616161; }

div.passwordStrenth dl {margin:0;padding:0 6px 0 0;color:#373737; font-weight:bold;font-size:11px; font-family:dotum; }
div.passwordStrenth dl dt,
div.passwordStrenth dl dd {display:inline;font-size:11px; font-family:dotum;margin:0;height:15px;line-height:15px;}

div.passwordStrenth dl dt {color:#363636; font-weight:bold; width:95px;}

div.passwordStrenth dl dd {text-indent:0px;font-size:12px; width:110px;background:url('/shop/data/skin/standard/img/common/password_level.gif') no-repeat top left;}
div.passwordStrenth dl dd.lv0 {color:#F52D00;background-position:20px 0;}
div.passwordStrenth dl dd.lv1 {color:#028EFF;background-position:20px -29px;}
div.passwordStrenth dl dd.lv2 {color:#0213FF;background-position:20px -44px;}
div.passwordStrenth dl dd.lv3 {color:#46C32D;background-position:20px -59px;}
div.passwordStrenth dl dd.lv4 {color:#46C32D;background-position:20px -59px;}


tr {

}

</style>

<style>
.memberCols1 {
width:100px;
text-align:right;
padding-right:10px;
font-family:'noto_light';
color:#5D5D5D;
letter-spacing:-1;
}
.memberCols2 {
text-align:left;
padding-left:10px;
}
.memberCols3 {
width:85px;
font-family:'noto_light';
color:#5D5D5D;
letter-spacing:-1;
}
.scroll	{
scrollbar-face-color: #FFFFFF;
scrollbar-shadow-color: #AFAFAF;
scrollbar-highlight-color: #AFAFAF;
scrollbar-3dlight-color: #FFFFFF;
scrollbar-darkshadow-color: #FFFFFF;
scrollbar-track-color: #F7F7F7;
scrollbar-arrow-color: #838383;
}
#boxScroll{width:96%; height:130px; overflow: auto; BACKGROUND: #ffffff; COLOR: #585858; font:9pt 돋움;border:1px #dddddd solid; overflow-x:hidden;text-align:left; }

#pwdManual { border:2px solid #BFBFBF; display:none; position:absolute; width:410px; background:#ffffff;margin-top:10px; }
#pwdManual p { background:#F1F1F1 url('/shop/data/skin/standard/img/common/blt_tip_gr.gif') no-repeat 10px center;margin:0;padding:12px 10px 12px 50px;color:#373737;font-weight:bold;}
#pwdManual p.close { background:none;padding:0px 10px 5px 0;margin:0;text-align:right;}
#pwdManual ul {list-style:none;margin:0;padding:15px;}
#pwdManual ul li {color:#6E6E6E; font-size:11px; line-height:17px;letter-spacing:-1px;}

#ipinManual { border:2px solid #BFBFBF; display:none; position:absolute; width:560px; z-index:999; }
#ipinManual .ipinmTop { background-color:#F1F1F1; color:#373737; font-weight:bold; padding:7px; }
#ipinManual .ipinmBottom { background-color:#FFFFFF; padding:10px 0px; }
#ipinManual .ipinmBottom .ipinmbText { color:#6E6E6E; font-size:11px; line-height:17px; margin-left:20px; }
#ipinManual .ipinmBottom .ipinmbText a { color:#6E6E6E; font-size:11px; font-weight:bold; line-height:17px; }
#ipinManual .ipinmBottom .ipinmbDotted { border-top:1px dotted #C0C0C0; margin:10px 20px; }
#ipinManual .ipinmBottom .ipinmbSolid { border-top:1px solid #C0C0C0; margin:10px 20px; }
#ipinManual .ipinmBottom .ipinmbTerm { margin:10px 20px; }
#ipinManual .ipinmBottom .ipinmbButton { margin:15px 10px 5px 10px; text-align:center; }
</style>



<!-- 마이페이지 본문 -->
<form id="form" name="frmMember" method="post" action="UpdateServiceCon">

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
	<span class="eng"><b>회원아이디</b></span>
	</td>
</tr>
<tr><td colspan="2" height="1" bgcolor="#DEDEDE" style="padding:0px;"></td></tr>
<tr style="height:50px;">
	<td class="memberCols1"><font color="FF6000">*</font> 비밀번호</td>
	<!-- 비밀번호 버튼 -->
	<td class="memberCols2">
		<input type="password" name="pw" placeholder="PW를 입력하세요" style="width: 200px; margin: 0 auto; background-color:white; color:gray;">
		
		
	</td>
</tr>


<tr><td colspan="2" height="1" bgcolor="#DEDEDE" style="padding:0px;"></td></tr>
<tr style="height:50px;">
	<td class="memberCols1"><font color="FF6000">*</font> 이름</td>
	<td class="memberCols2">
	<input type="text" style="width:200px;" name="name" placeholder="이름을 입력하세요" required="" fld_esssential="" label="이름">
	</td>
</tr>

<tr><td colspan="2" height="1" bgcolor="#DEDEDE" style="padding:0px;"></td></tr>

<tr style="height:70px;">
	<td class="memberCols1"><font color="FF6000">*</font> 핸드폰</td>
	<td class="memberCols2">
	<input type="text" name="mobile[]" id="mobile0" style="width:200px;" placeholder="번호를 입력하세요" size="4" maxlength="4" required="" option="regNum" label="핸드폰">
	
	
	</td>
</tr>
<tr><td colspan="2" height="1" bgcolor="#DEDEDE" style="padding:0px;"></td></tr>













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
<div style="width:100%" class="noline"><input type="submit" value="회원정보변경">
<input type="butten"  style=" width:118px; border-width:1px; background-color:#EFEFEF;" value="구매내역가기" onClick="location.href='buylist.jsp'">
</div>

</div>
</td>
</tr>
</tbody></table>

</form>

<iframe id="ifrmRnCheck" name="ifrmRnCheck" style="width:500px;height:500px;display:none;"></iframe>
<iframe id="ifrmHpauth" name="ifrmHpauth" style="width:300px;height:200px;display:none;"></iframe>


	
	
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