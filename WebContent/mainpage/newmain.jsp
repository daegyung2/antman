<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>new main</title>

<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }
	
	#bar{clear:both; position:absolute; width:100%; height:2px; background:#BCE55C; top:0px; opacity:0.8;}

	#l_back{ width:100%; height:30px; background:#474747; top:2px; position:absolute;}
	#l_back #login{width:1100px; height:20px; margin:0 auto; margin-top:5px; position:relative;}
	#l_back #login .grid{ width:1050px; height:20px; margin-left:20px; position:relative; }
	#l_back #login .grid .login_innerbox{width:600px; height:20px; margin:0 auto; margin-right:-160px; position:relative;}
	#l_back #login .grid .login_innerbox ul{margin-top:-3px; }
	#l_back #login .grid .login_innerbox li{float:left; padding:0 10px; position:relative;}
	#l_back #login .grid .login_innerbox li.first{padding-left:0px;}
	#l_back #login .grid .login_innerbox li.last{padding-right:0px; border:0 none;}
	#l_back #login .grid .login_innerbox li a{color:#FFFFFF; font-size:12px;}
	#l_back #login .grid .login_innerbox li a:hover{color:#FAED7D; font-size:12px;}
	
	#h_back{ width:100%; height:40px; position:absolute;}
	#h_back #header{height:40px; margin:0 auto; position:relative;}
	#h_back #header .grid{height:40px; position:relative; }
	#h_back #header .grid #title{width:120px; position:relative;}
	#h_back #header .grid #title #box{width:110px; margin-left:80px; position:relative;}
	#h_back #header .grid #title #box h1{float:left; width:130px; height:50px; margin-top:30px; margin-left:130px; }
	#h_back #header .grid #title #box a{display:block; width:100%; height:100%; background:; padding-top:45px;}
	
	#gnb{ height:40px; margin-top:-30px; border-bottom:1px solid #5586EB; padding-left:380px; position:relative;}
	#gnb>li{ float:left; line-height:30px; background:#FFFFFF; position:relative;}
	#gnb li.title{padding-left:-300px;}
	#gnb li a{ display:block; font-size:14px; font-weight:bold; padding:5px 24px; color:#000000; width:100px; }
	#gnb li ul{ position:absolute; left:0px; opacity:0; width:160px; background:#FFFFFF;}
	#gnb li ul li{ height:0px; overflow:hidden;}
	#gnb li:hover ul{margin-top:1px; opacity:1; }
	#gnb li:hover ul li{ height:40px;}
	#gnb li a:hover, #gnb li a:focus{text-decoration:underline; color:#5586EB;}
	#gnb li a{ transition:all 0.4s;}
	#gnb li ul{ transition:all 0.4s;}
	#gnb li ul li{ transition:all 0.4s;}
	
	/* container 시작 */
	.sidebar{width:200px; height:1000px; float:left; margin-left:35px; top:80px; position:absolute; border:1px solid #BDBDBD; border-top:1px solid transparent;}
	.sidebar #sidebar_top{width:200px; height:120px; font-size:22px; margin-top:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD; text-align:right;}
	.sidebar #sidebar_top b{padding-right:0px;}
	.sidebar #sidebar_top a{text-decoration:none; color:#5586EB;}
	.sidebar #bookinfo{width:160px; height:100px; margin-left:20px; margin-top:500px; border:1px solid #BDBDBD; text-align:center; font-size:16px; }
	.sidebar #bookinfo b{font-size:20px;}
	#nav{width:200px; margin:30px auto; text-indent:10px; float:left; margin-top:25px; margin-bottom:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD;}
	#nav .title{display:block; height:50px; line-height:3em; font-size:17px; background:#FFFFFF; color:#000000; text-align:right; padding-right:20px; border-top:1px solid #BDBDBD;}
	#nav .title:hover{text-decoration:underline; }
	#nav li.on{background:#5586EB;}
	#nav li.on a{font-weight:bold; color:#FFFFFF;}
	#nav li:first-child a.title{border-top:none;}
	#container{width:1100px; height:1300px; margin:0 auto;  margin-left:230px; position:relative; main-top:300px;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:100px; position:relative}
</style>

</head>

<body>

<div id="bar"></div>

<!-- loginForm 시작 -->
<div id="l_back">
	<div id="login">
	<div class="grid">
		<div class="login_innerbox">
  			<ul>
    			<li class="first"><a href="#">회원가입</a></li>
    			<li><a href="#">병원둘러보기</a></li>
    			<li><a href="#">오시는길</a></li>
    			<li><a href="#">English</a></li>
    			<li><a href="#">中文</a></li>
    			<li><a href="#">日本語</a></li>
    			<li class="last"><a href="#">русский</a></li>
  			</ul>
		</div>
	</div>
	</div>
</div>

<!-- header 시작 -->
<div id="h_back">
	<div id="header">
	<div class="grid">
		<div id="title"><div id="box"><font size="4"><b><a href="#">DB Hospital</a></b></font></div></div>
		<div id="gnbWrap">
			<nav>
    			<ul id="gnb">
        			<!-- <li class="title"><font color="#5586EB"><a href="#">DB Hospital</a></font></li> -->
            		<li>
            			<a href="#">의료진/진료과</a>
                		<ul>
                			<li><a href="#">의료진</a></li>
                    		<li><a href="#">진료과</a></li>
                    		<li><a href="#">암병원</a></li>
                    		<li><a href="#">어린이병원</a></li>
							<li><a href="#">심장병원</a></li>
							<li><a href="#">센터</a></li>
							<li><a href="#">클리닉</a></li>
							<li><a href="#">기타</a></li>
                		</ul>
            		</li>
            		<li>
            			<a href="#">이용안내</a>
                		<ul>
                			<li><a href="#">병원안내</a></li>
							<li><a href="#">외래진료안내</a></li>
							<li><a href="#">응급진료안내</a></li>
							<li><a href="#">입원진료안내</a></li>
							<li><a href="#">가정간호안내</a></li>
							<li><a href="#">검사실안내</a></li>
                		</ul>
            		</li>
            		<li>
            			<a href="#">건강정보</a>
            			<ul>
                			<li><a href="#">의료정보</a></li>
							<li><a href="#">건강TV</a></li>
							<li><a href="#">건강이야기</a></li>
                		</ul>
                	</li>
                	<li>
            			<a href="#">웹서비스</a>
            			<ul>
                			<li><a href="#">발급안내</a></li>
							<li><a href="#">고객서비스</a></li>
                		</ul>
                	</li>
                	<li>
            			<a href="#">의학교육</a>
            			<ul>
                			<li><a href="#">학술행사일정</a></li>
							<li><a href="#">학술영상다시보기</a></li>
							<li><a href="#">의학포스터</a></li>
							<li><a href="#">3D자료</a></li>
                		</ul>
                	</li>
                	<li>
            			<a href="#">병원소개</a>
            			<ul>
                			<li><a href="#">재단소개</a></li>
							<li><a href="#">병원소개</a></li>
							<li><a href="#">소식</a></li>
							<li><a href="#">정기간행물</a></li>
							<li><a href="#">교육장안내</a></li>
                		</ul>
                	</li>
        		</ul>
    		</nav>
    		</div>
    	</div>
    </div>
</div>

<!-- container 시작 -->

<div class="sidebar">
	<div id="sidebar_top">
		<br/><br/>
		<font color="#5586EB"><b><a href="/antman/treatmentchoice.do?p_depart_id=1">의료진/진료과</a></b></font>
	</div>
<ul id="nav">
	<li><a href="#" class="title">의료진</a></li>
	<li><a href="/antman/treatmentchoice.do?p_depart_id=1" class="title">진료과</a></li>
	<li><a href="/antman/treatmentchoice.do?p_depart_id=3" class="title">암병원</a></li>
	<li><a href="/antman/treatmentchoice.do?p_depart_id=4" class="title">어린이병원</a></li>
	<li><a href="/antman/treatmentchoice.do?p_depart_id=5" class="title">심장병원</a></li>
	<li><a href="/antman/treatmentchoice.do?p_depart_id=6" class="title">센터</a></li>
	<li><a href="/antman/treatmentchoice.do?p_depart_id=7" class="title">클리닉</a></li>
	<li><a href="/antman/treatmentchoice.do?p_depart_id=8" class="title">기타</a></li>
</ul>
<div id="bookinfo">
	<p>예약문의 <br/>
	<b>1688-7575</b></p>
</div>
</div>
</body>
</html>