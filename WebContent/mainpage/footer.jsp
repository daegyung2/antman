<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">
	body{margin:0px; padding:0px;}
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px;}
	li{ margin:0px; padding:0px; }
	
	#f_back{clear:both; width:100%; height:300px; background:#474747; margin:0 auto; margin-bottom:0px; margin-top:0px; }
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

</head>
<body>
<div id="f_back">
	<div class="footer">
		<div class="firstline">
			<div id="logo"></div>
			<div class="footer_innerbox">
  				<ul>
    				<li class="first"><a href="/antman/notready.do">환자권리장전</a></li>
    				<li><a href="/antman/notready.do">개인정보처리(취급)방침</a></li>
    				<li><a href="/antman/notready.do">이용약관</a></li>
    				<li><a href="/antman/notready.do">의료정보운영방침</a></li>
    				<li><a href="/antman/notready.do">비급여진료비</a></li>
    				<li><a href="/antman/notready.do">의무기록사본발급안내</a></li>
    				<li><a href="/antman/notready.do">위변조문서확인</a></li>
    				<li><a href="/antman/notready.do">이메일 주소수집거부</a></li>
    				<li><a href="/antman/notready.do">원격지원서비스</a></li>
    				<li class="last"><a href="/antman/notready.do">홈페이지이용문의</a></li>
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
					<option value="0">======진료과======</option>
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
					<option value="0">====어린이병원====</option>
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
					<option value="0">=====심장병원=====</option>
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