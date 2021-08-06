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
	
	
	
<div class="rows navi_category" style="width:1000px; margin:0 auto; ">
    	<div style="width:650px; float:left; text-align:left; "><span style="font-family:noto; font-size:25px; line-height:25px; color:#333 ;padding-right:10px;">회원가입</span> <span style="font-family:noto_light; font-size:16px; color:#666">어반플라워의 꽃다발로 사랑하는 사람에게 진심을 전해보세요.</span>
        </div>
        <div style="width:350px; float:right;  text-align:right">
            <span style="font-family:noto; font-size:12px; line-height:25px; color:#999;  "><img src="/urbanflower/images/icon_home.gif" width="10" height="10"> <span style="padding:0 10px 0 10px;">&gt;</span>CUSTOMER<span style="padding:0 10px 0 10px;">&gt;</span>로그인
        </span></div>
    </div>
    <br>
    <!-- 회원가입 --> 
    
	  <!-- header -->


        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">

                <!-- ID -->
              
                <div>
                
                    <h3 class="join_title">
                        <label for="email">이메일</label>
                    </h3>
                    <span class="box int_id">
                    <form action = "joinServiceCon" method = "post">
                        <input type="text" id="email" class="int" maxlength="20" name = "email">
                       
                    </span>
                    <span class="error_next_box"></span>
               
                </div>

                <!-- PW1 -->
                <div>
              
                    <h3 class="join_title"><label for="pw">비밀번호</label></h3>
                    <span class="box int_pass">
                   
                        <input type="text" id="pw" class="int" maxlength="20" name = "pw">
                    	
                        <span id="alertTxt">사용불가</span>
                        <img src="m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                    
                </div>

                <!-- PW2 -->
                <div>
              
                    <h3 class="join_title"><label for="pw2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                    
                        <input type="text" id="pswd2" class="int" maxlength="20" name = "pw2">
                       
                        <img src="m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                  
                </div>

                <!-- NAME -->
                <div>
              
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" class="int" maxlength="20" name = "name">
                    </span>
                    <span class="error_next_box"></span>
                   
                </div>

                <!-- BIRTH -->
             
                
                

                <!-- MOBILE -->
                <div>
   
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력" name = "tel">
                    </span>
                    <span class="error_next_box"></span>
                       
                </div>


                <!-- JOIN BTN-->
              
                <div class="btn_area">

                       <input type = "submit" value = "가입하기">
          
                </div>
              	</form>

                

            </div> 
            <!-- content-->

        </div> 	
	
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