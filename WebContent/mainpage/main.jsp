<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>DB병원</title>

<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden; height:700px;}
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
	#visual{ width:960px; margin:20px auto; top:120px; position:relative;}
	#visual>ul{ width:960px; height:403px; position:relative;}
	#visual>ul>li{ position:absolute; left:0px; top:0px; }
	#visual>ul>li:not(:first-child){ display:none;}
	#visual>#btns{ position:absolute; bottom:10px; left:450px; }
	
	/* footer 시작 */
	#f_back{clear:both; width:100%; height:300px; background:#474747; margin:0 auto; top:700px; position:relative;}
	#f_back .footer{width:1300px; height:300px; margin:0 auto; position:relative;}
	#f_back .footer .firstline{width:1200px; height:80px; position:relative;}
	#f_back .footer .firstline #logo{width:120px; height:40px; border:1px solid #FFFFFF; top:40px; margin-left:60px; position:relative; color:#FFFFFF;}
	#f_back .footer .firstline .footer_innerbox{width:1050px; height:100px; margin:0 auto; margin-right:-80px; position:relative;}
	#f_back .footer .firstline .footer_innerbox ul{margin-top:20px; }
	#f_back .footer .firstline .footer_innerbox li{float:left; padding:0 5px; border-right:1px solid #5D5D5D;  position:relative;}
	#f_back .footer .firstline .footer_innerbox li.first{padding-left:0px;}
	#f_back .footer .firstline .footer_innerbox li.last{padding-right:0px; border:0 none;}
	#f_back .footer .firstline .footer_innerbox li a{color:#FFFFFF; font-size:12px;}
	#f_back .footer .firstline .footer_innerbox li a:hover{color:#ED4C00; font-size:12px;}
	#f_back .footer .secondline{width:1200px; height:120px; position:relative;}
	#f_back .footer .secondline #textbox{width:340px; height:100px; margin-top:0px; margin-left:60px; float:left; position:relative;}
	#f_back .footer .secondline #textbox p{color:#FFFFFF; font-size:12px;}
	#f_back .footer .secondline .selectbox1{width:300px; height:25px; position:relative; margin-left:450px; margin-top:30px; position:relative; }
	#f_back .footer .secondline .selectbox1 #select01{}
	#f_back .footer .secondline .selectbox1 #select01 #box01{width:70px; height:25px; background:#353535; position:relative; margin-top:-23px; margin-left:170px;}
	#f_back .footer .secondline .selectbox1 #select01 #box01 #move01{width:50px; height:15px; margin-left:10px; padding-top:4px;}
	#f_back .footer .secondline .selectbox1 #select01 #box01 #move01 a{color:#FFFFFF; font-size:12px; }
	#f_back .footer .secondline .selectbox1 #select02{margin-top:15px;}
	#f_back .footer .secondline .selectbox1 #select02 #box02{width:70px; height:25px; background:#353535; position:relative; margin-top:-23px; margin-left:170px;}
	#f_back .footer .secondline .selectbox1 #select02 #box02 #move02{width:50px; height:15px; margin-left:10px; padding-top:4px;}
	#f_back .footer .secondline .selectbox1 #select02 #box02 #move02 a{color:#FFFFFF; font-size:12px; }
	#f_back .footer .secondline .selectbox2{width:300px; height:25px; position:relative; margin-left:725px; margin-top:-25px;}
	#f_back .footer .secondline .selectbox2 #select03{}
	#f_back .footer .secondline .selectbox2 #select03 #box03{width:70px; height:25px; background:#353535; position:relative; margin-top:-23px; margin-left:170px;}
	#f_back .footer .secondline .selectbox2 #select03 #box03 #move03{width:50px; height:15px; margin-left:10px; padding-top:4px;}
	#f_back .footer .secondline .selectbox2 #select03 #box03 #move03 a{color:#FFFFFF; font-size:12px;  }
	#f_back .footer .secondline .selectbox2 #select04{margin-top:15px;}
	#f_back .footer .secondline .selectbox2 #select04 #box04{width:70px; height:25px; background:#353535; position:relative; margin-top:-23px; margin-left:170px;}
	#f_back .footer .secondline .selectbox2 #select04 #box04 #move04{width:50px; height:15px; margin-left:10px; padding-top:4px;}
	#f_back .footer .secondline .selectbox2 #select04 #box04 #move04 a{color:#FFFFFF; font-size:12px;  }
</style>

<script type="text/javascript" src="/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(function(){
	var visual = $('#visual');
	var btns = $('#btns a');
	var imgs = visual.find('li');
	var currentNum = 0;
	function rotateImg(){
		currentNum++;
		currentNum = currentNum%3;
		imgs.stop().fadeOut();
		$('.bg'+currentNum).stop().fadeIn();
	}
	var timer = setInterval(rotateImg, 2000);
	btns.click(function(){
		clearInterval(timer);
		currentNum = parseInt($(this).text())-1;
		imgs.stop().fadeOut();
		$('.bg'+currentNum).stop().fadeIn();
		timer = setInterval(rotateImg,2000);
	})
})
</script>
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
<div id="visual">
	<ul>
    	<li class="bg0"><img src="img/main_image_01.jpg" alt="" /></li>
        <li class="bg1"><img src="img/main_image_02.jpg" alt="" /></li>
        <li class="bg2"><img src="img/main_image_03.jpg" alt="" /></li>
    </ul>

<div id="btns">
	<a href="#">1</a> || <a href="#">2</a> || <a href="#">3</a>
</div>
</div>

<!-- footer 시작 -->
<div id="f_back">
	<div class="footer">
		<div class="firstline">
			<div id="logo">LOGO</div>
			<div class="footer_innerbox">
  				<ul>
    				<li class="first"><a href="#">환자권리장전</a></li>
    				<li><a href="#">개인정보처리(취급)방침</a></li>
    				<li><a href="#">이용약관</a></li>
    				<li><a href="#">의료정보운영방침</a></li>
    				<li><a href="#">비급여진료비</a></li>
    				<li><a href="#">의무기록사본발급안내</a></li>
    				<li><a href="#">위변조문서확인</a></li>
    				<li><a href="#">이메일 주소수집거부</a></li>
    				<li><a href="#">원격지원서비스</a></li>
    				<li class="last"><a href="#">홈페이지이용문의</a></li>
  				</ul>
  			</div>
    	</div>
    	<div class="secondline">
    		<div id="textbox">
    			<p>
    			도로명주소 (05505) 서울특별시 송파구 올림픽로 43길 88 <br/>
				지번주소 (138-736) 서울특별시 송파구 풍납2동 388-1 <br/>
				TEL 1688-7575 / webmaster@amc.seoul.kr <br/>
				Copyright@2014 by Asan Medical Center. All Rights reserved.
    			</p>
    		</div>
    		<div class="selectbox1">
    			<div id="select01">
    			<select id="family01" class="select">
					<option value="0">진료과</option>
					<option value="0">====진료과====</option>
					<option value="#">가정의학과</option>
					<option value="#">간담도췌외과</option>
					<option value="#">간이식및간담도외과</option>
					<option value="#">감염내과</option>
					<option value="#">건강의학과</option>
					<option value="#">구강악안면외과</option>
					<option value="#">내분비내과</option>
					<option value="#">노년내과</option>
					<option value="#">대장항문외과</option>
					<option value="#">류마티스내과</option>
					<option value="#">마취통증의학과</option>
					<option value="#">방사선종양학과</option>
					<option value="#">병리과</option>
					<option value="#">비뇨기과</option>
					<option value="#">산부인과</option>
					<option value="#">성형외과</option>
					<option value="#">소화기내과</option>
					<option value="#">신경과</option>
					<option value="#">신경외과</option>
					<option value="#">신장내과</option>
					<option value="#">심장내과</option>
					<option value="#">심장외과</option>
					<option value="#">안과</option>
					<option value="#">알레르기내과</option>
					<option value="#">영상의학과</option>
					<option value="#">위장관외과</option>
					<option value="#">유방내분비외과</option>
					<option value="#">응급의학과</option>
					<option value="#">의공학과</option>
					<option value="#">이비인후과</option>
					<option value="#">일반외과</option>
					<option value="#">임상약리학과</option>
					<option value="#">재활의학과</option>
					<option value="#">정신건강의학과</option>
					<option value="#">정형외과</option>
					<option value="#">종양내과</option>
					<option value="#">진단검사의학과</option>
					<option value="#">치과 교정과</option>
					<option value="#">치과 보존과</option>
					<option value="#">치과 보철과</option>
					<option value="#">치주과</option>
					<option value="#">폐식도외과</option>
					<option value="#">피부과</option>
					<option value="#">핵의학과</option>
					<option value="#">혈관외과</option>
					<option value="#">혈액내과</option>
					<option value="#">호흡기내과</option>
					<option value="#">흉부외과</option>
					<option value="0">====암병원====</option>
					<option value="#">암병원</option>
					<option value="#">간암센터</option>
					<option value="#">골연부육종센터</option>
					<option value="#">뇌종양센터</option>
					<option value="#">담도 및 췌장암센터</option>
					<option value="#">대장암센터</option>
					<option value="#">두경부암센터</option>
					<option value="#">부인암센터</option>
					<option value="#">비뇨기암센터</option>
					<option value="#">식도암센터</option>
					<option value="#">위암센터</option>
					<option value="#">유방암센터</option>
					<option value="#">유전체맞춤암치료센터</option>
					<option value="#">폐암센터</option>
					<option value="#">피부암센터</option>
					<option value="#">혈액암 및 골수이식센터</option>
					<option value="0">===어린이병원===</option>
					<option value="#">어린이병원</option>
					<option value="#">감염과</option>
					<option value="#">내분비대사과</option>
					<option value="#">비뇨기과</option>
					<option value="#">소아외과</option>
					<option value="#">소아치과</option>
					<option value="#">소화기 영양과</option>
					<option value="#">신경과</option>
					<option value="#">신경외과</option>
					<option value="#">신생아과</option>
					<option value="#">신장과</option>
					<option value="#">심장과</option>
					<option value="#">심장외과</option>
					<option value="#">안과</option>
					<option value="#">영상의학과</option>
					<option value="#">의학유전학과</option>
					<option value="#">재활의학과</option>
					<option value="#">정신건강의학과</option>
					<option value="#">정형외과</option>
					<option value="#">종양혈액과</option>
					<option value="#">중환자과</option>
					<option value="#">호흡기알레르기과</option>
					<option value="0">===심장병원===</option>
					<option value="#">심장병원</option>
					<option value="#">대동맥질환센터</option>
					<option value="#">말초혈관질환센터</option>
					<option value="#">심방세동센터</option>
					<option value="#">심부전/심장이식센터</option>
					<option value="#">심장병예방재활센터</option>
					<option value="#">심장영상센터</option>
					<option value="#">판막질환센터</option>
					<option value="#">협심증심근경색증센터</option>			
				</select>
    			<div id="box01"><div id="move01"><a href="#">바로가기</a></div></div>
    			</div>
    			<div id="select02">
    			<select id="family02" class="select">
					<option value="0">진료과</option>
					<option value="0">======진료과======</option>
					<option value="#">가정의학과</option>
					<option value="#">간담도췌외과</option>
					<option value="#">간이식및간담도외과</option>
				</select>
				<div id="box02"><div id="move02"><a href="#">바로가기</a></div></div>
				</div>
    		</div>
    		<div class="selectbox2">
    			<div id="select03">
    			<select id="family03" class="select">
					<option value="0">진료과</option>
					<option value="0">======진료과======</option>
					<option value="#">가정의학과</option>
					<option value="#">간담도췌외과</option>
					<option value="#">간이식및간담도외과</option>
				</select>
				<div id="box03"><div id="move03"><a href="#">바로가기</a></div></div>
				</div>
				<div id="select04">
				<select id="family04" class="select">
					<option value="0">진료과</option>
					<option value="0">======진료과======</option>
					<option value="#">가정의학과</option>
					<option value="#">간담도췌외과</option>
					<option value="#">간이식및간담도외과</option>
				</select>
				<div id="box04"><div id="move04"><a href="#">바로가기</a></div></div>
				</div>
    		</div>
    	</div>
    </div>
</div>
</body>
</html>