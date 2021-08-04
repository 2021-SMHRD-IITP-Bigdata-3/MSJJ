<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link  href = "./css/JoinStyle.css" rel = "stylesheet">

</head>
<body>
	<body>
        <!-- header -->
        <div id="header">
            <a href="index.jsp" target="_blank" title="네이버 회원가입 페이지 보러가기"><img src="img/logo.png" id="logo"></a>
        </div>


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
        <!-- wrapper -->
    <script src="main.js"></script>
</body>
</html>