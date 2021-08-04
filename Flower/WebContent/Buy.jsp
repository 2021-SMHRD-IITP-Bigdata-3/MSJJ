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
	
	
	
%>

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
	
	
	
	<div style="width:1000px; margin:0 auto;">
	<style>.starts { color #ff0000;}</style>
	<div>
		<div class="rows navi_category" style="width:1000px; margin:0 auto; ">
			<div style="width:600px; float:left; ">
				<span style="font-family:noto; font-size:25px; line-height:25px; color:#333  ;padding-right:10px;">주문하기</span> <span style="font-family:noto_light; font-size:16px; color:#666">꽃다발로 사랑하는 사람에게 진심을 전해보세요.</span>
			</div>

			
			
			<div style="width:400px; float:right; text-align:right">
			 	<span style="font-family;noto; font-size:12px; line-height:25px; color:#999;">
				<img src="아이콘" width="10" height="10">
				<span style="padding:0 10px 0 10px;">></span>
				" CUSTOMER "
				<span style="padding:0 10px 0 10px;">></span>
				"주문하기"
				</span>
				</div>
				</div>
		<div class="indiv">
			<div style="margin-top:20;"></div>
			<div>
				<img src="" border="0">
			</div>
		<div class = "rows hover_bg" style = "width :1000px; margin:0 auto; text-align:left; clear:both; position:relative;">
      
         <br><br><br>

      <div class = "rows_indi_item">
         <div style = "width:739px; float:right; text-align:center">
            <img src = "orderflower.jpg"  width="739" height="400">
         </div>
         <div style = "width:261px; float:left; text-align:center; display: table; height:100%">
            <div class = "clearboth" style = "font-size:25px; font-family:'noto'; display:table-cell; vertical-align: middle; text-align:center; width:100%; height:100%">
            <span style="font-size:18px;">Marin Blue</span>
            <br>
            <span style="font-size:26px;" font-weight:bold;">마린블루</span>
            <br>
            <span style="font-size: 14px; color: #EA604F;">여름에 가장 어울리는꽃</span>
            <div class="clearboth" style="padding:10px 5px 0px 5px; font-size:20px;">48000</div>
            
            </div>
         </div>
      </div>
      
   </div>
	
	
	<!-- Gallery -->
	
		<table width="100%" style="border:1px solid #DEDEDE" cellpadding="0" cellspacing="0">
      <tbody>
         <tr>
            <td width="150" valign="top" align="right" bgcolor= "#F3F3F3" align="center">
            	
               <img src = "">
            </td>
         
            <td style="padding:10px">
               <table>
                  <colgroup>
                     <col width="150">
                  </colgroup>
                  <tbody>
                     <tr>
                        <td>배송지 확인</td>
                        <td class = "noline">
	                          <input type = "checkbox" onclick ="ctrl_field(this.checked)">
	                         	  주문고객 정보와 동일합니다.
                        </td>
                     </tr>
                     <tr>
                        <td>
                           	받으실 분
                           <span class = "starts">*</span>
                        </td>
                        <td>
                           <input type = "text" name = "nameReceiver"  style="width:300px;" value required readonlycheck>
                        </td>
                     </tr>
                     <tr>
                        <td>
                           		받으실 곳
                           <span class = "starts">*</span>
                        </td>
                        <td>
                           <input type="text" name="zonecode" id="zonecode" size="5" class="line" style="width:150px;">
                           
                           (
                           <input type="text" name="zipcode[]" id="zipcode0" size="3" class="line">
                          
                           -
                           <input type="text" name="zipcode[]" id="zipcode1" size="3" class="line">
                          
                           )
                           <a href="" id="addressSearch">
                              <img src="" align="absmiddle">
                           </a>
                        </td>
                     </tr>
                     <tr>
                        <td></td>
                        <td>
                           <input type="text" name="address" id="address" class="lineBig " style="width:300px;">
        
                        </td>
                     </tr>
                     <tr>
                        <td></td>
                        <td>
                           <input type="text" name="address_sub" id="address_sub" class="lineBig" style="width:300px;"
                            value onkeyup="SameAddressSub(this)" oninput="SameAddressSub(this)" label="세부주소" readonlycheck>
                           <input type="hidden" name="road_address" id="road_address" style="width:100%"
                           value class="line">
                           <div style="padding:5px 5px 0 1px;font:12px dotum;color:#999;" id="div_road_address_sub"></div>
                           <div style="padding:5px 0 0 1px;font:12px dotum;color:#999;" id="div_road_address_sub"></div>
                           </td>
                     </tr>
                     <tr id="delivery_check" style="display:none">
                        <td>&nbsp;</td>
                        <td>
                           <input type="checkbox" name="delivery_add" id="delivery_add" value="y"
                           onclick="deliveryAddCheck('delivery_add,this')" style="width:300px;">
                           <label for="delivery_add">배송지 목록에 추가</lable>
                           <input type="checkbox" name="delivery_default" id="delivery_default" value
                           ="y" onclick="deliveryAddCheck('delivery_default',this)">
                           <label for="delivery_default">기본 배송지로 선택</label>
                        </td>
                     </tr>
                     <tr>
                        <td>
                         		  핸드폰 번호
                           <span class="starts">*</span>
                        </td>
                        <td>
                           <input type="text" name="mobileReceiver[]" value size="3" maxlenght="3"
                           option="regNum" required label="수령자 핸드폰번호" readonlycheck>
                           -
                           <input type="text" name="mobileReceiver[]" value size="4" maxlenght="4"
                           option="regNum" required label="수령자 핸드폰번호" readonlycheck>
                           -
                           <input type="text" name="mobileReceiver[]" value size="4" maxlenght="4"
                           option="regNum" required label="수령자 핸드폰번호" readonlycheck>
                        </td>
                     </tr>
                     <tr style="height=20px"></tr>
                 
                    
                     
                  
                  <tr id="postCardImagerWrap" style="display:none;">
                     <td>엽서 삽입 이미지</td>
                     <td>
                        <input type="file" name="postcardimage" id="postCardImage" style="width:300px;">
                     </td>
                  </tr>
                  <tr>
                     <td>엽서 문구</td>
                     <td>
                        <textarea name="postcard_memo" style="width:300px; height:100px;"></textarea>
                     </td>
                  </tr>
                  <tr>
                     <td colspan="2">&nbsp;</td>
                  </tr>
                  <tr id="paper_delivery_menu">
                     <td>배송선택</td>
                     <td class="noline">
                     <div style="float:left">
                     <label style="cursor:pointer;">
                        <input type="radio" id="basicDelivery" name="delipoli" value="0"
                         onblur="chk_emoney(document.frmOrder.emoney)"
                        disabled>
                        	택배발송
                     </label>
                     </div>
                        <div style="float:left;padding-left:10">
                           <label style="cursor:pointer;">
                              <input type="radio" id="QuickDelivery1" name="delipoli" value="1"
                              onclick="getDelivery()" onblur="chk_emoney(document.frmOrder.emoney)"
                              checked>
                             		 직배송
                           </label>
                        </div>
                        <div style="float:left;padding-left:10">
                        <label style="cursor:pointer;">
                           <input type="radio" id="QuickDelivery2" name="delipoli" value="2"
                           onclick="getDelivery()" onblur="chk_emoney(document.frmOrder.emoney)"
                           checked>
                           		매장방문수령
                        </label>
                        </div>
                        </td>
                  </tr>
                     <tr>
                        <td>
                           	상품 도착 일자
                           <span class="starts">*</span>
                        </td>
                        <td>
                           <input type="date" id="edatets" name="goal_date" style="width:300px; cursor:pointer;"
                           placeholder="선택해주세요" value onclick="calender(event,'-');">
                        </td>
                     </tr>
                     <tr>
                        <td style="vertical-align:top">상품 도착 시간</td>
                        <td>
                           <input type="time" name="goal_time" id="goalTimes" style="width:300px;">
                              
                           </select>
                           <div id="taxComment" style="color:rgb(255,0,0); font-size:12px; margin:6px 0px; display:none"></div>
                           <div id="QuickComment" style="color:#ff0000; font-size:12px; margin:6px 0;"></div>
                        </td>
                     </tr>
                     <tr>
                        <td>배송 요청 사항</td>
                        <td>
                           <input type="text" name="memo" style="width:100%">
                        </td>
                     </tr>
                  </tbody>
               </table>
              
            </td>
         </tr>
      </tobody>
   </table>
		 <a href="index.jsp"><input type="button"style="width:1000px" value="결제완료"></a>		
				
				
				
		
	
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