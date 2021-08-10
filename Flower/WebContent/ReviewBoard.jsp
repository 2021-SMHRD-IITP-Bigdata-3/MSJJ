<%@page import="com.moder.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.moder.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Nevada - Free HTML Bootstrap Template</title>

    <!-- Css -->
    <link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">

</head>

<body>
<%
	memberDTO info = (memberDTO)session.getAttribute("info");
	ArrayList<BoardDTO> list = (ArrayList)session.getAttribute("list");
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
  
  
<div class="rows navi_category" style="width:1000px; margin:0 auto; ">
       <div style="width:650px; float:left; text-align:left; "><span style="font-family:noto; font-size:25px; line-height:25px; color:#333 ;padding-right:10px;">리뷰게시판</span> <span style="font-family:noto_light; font-size:16px; color:#666">꽃으로 사랑하는 사람에게 진심을 전해보세요.</span>
        </div>
        <div style="width:350px; float:right;  text-align:right">
            
        </span></div>
       
    </div>
    <!--게시판 css부분 -->
     

 <style>
/* 게시판 html문 */
.sub_news,.sub_news th,.sub_news td{border:0}
.sub_news a{color:#383838;text-decoration:none}
.sub_news{width:50%;border-bottom:1px solid #999;color:#666;font-size:12px;table-layout:fixed }
.sub_news caption{display:none}
.sub_news th{padding:5px 0 6px;border-top:solid 1px #999;border-bottom:solid 1px #b2b2b2;background-color:#f1f1f4;color:#333;font-weight:bold;line-height:20px;vertical-align:top; text-align:center;}
.sub_news td{padding:8px 0 9px;border-bottom:solid 1px #d2d2d2;text-align:center;line-height:18px;}
.sub_news .date,.sub_news .hit{padding:0;font-family:Tahoma;font-size:11px;line-height:normal}
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
<table class="sub_news" border="1" cellspacing="0" summary="게시판의 글제목 리스트" style="margin-left: auto; margin-right: auto;">
<caption>게시판 리스트</caption>
<colgroup>
<col width="50">
<col>
<col width="50">
<col width="150">
<col width="40">
</colgroup>
<thead>
<tr>
<th scope="col">상품번호</th>
<th scope="col">내용</th>
<th scope="col">작성자</th>
<th scope="col">날짜</th>
<th scope="col">평점</th>
</tr>
</thead>
<tbody>

<%for (int i = 0; i < list.size();i++ ){ %>
<tr>
<td><%=list.get(i).getBoard_flower()%></td>
<td class="title">
<a href="reviewBoard3ServiceCon?boardNum=<%=list.get(i).getBoard_number()%>&productNum=<%=list.get(i).getBoard_flower()%>"><%= list.get(i).getBoard_content() %></a>
</td>
<td class="name"><%= list.get(i).getBoard_member()%></td>
<td class="date"><%= list.get(i).getBoard_date()%></td>
<td class="hit"><%= list.get(i).getBoard_score()%></td>
</tr>
<%} %>


<!-- tr이 제목 1줄입니다 보일 list 갯수만큼 li반복합니다.-->
</tbody>
</table>

<!-- 리스트 게시판 끝-->
</body>
</html>