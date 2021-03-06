<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>콘텐츠제공안내 | 고객서비스 | 웹서비스</title>

<style type="text/css">
	body{margin:0px; padding:0px;}
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px;}
	li{ margin:0px; padding:0px; }
	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#container{ width:1100px; height:1600px; margin:0 auto; margin-left:250px; position:relative;}
	#container .main{ width:1000px; height:1500px; margin-left:50px; position:relative}
	#container .main #title_1{font-size:30px; left:0px; position:relative; margin-top:30px;}
	#container .main #main_top{ width:970px; height:70px; margin-top:25px; font-size:15px; line-height:1.8;}
	#container .main .con_table{width:950px; height:280px; margin-top:10px;}
	#container .main .con_table #title_2{font-size:22px; color:#5586EB; position:relative;  }
	#container .main .con_table #table_sub{margin-top:15px;}
	#container .main .con_table #table_sub table{border:1px solid #BDBDBD; border-top:2px solid #5586EB;  border-collapse:collapse;}
	#container .main .con_table #table_sub th{color:#5586EB; height:30px;}
	#container .main .con_table #table_sub td{text-align:center; height:50px; }
	#container .main .con_table #table_sub td.textinput{ text-align:left; padding-left:15px; }
	#container .main .con_table #table_sub #TVbtn{width:120px; height:20px; margin-left:13px; border:1px solid #BDBDBD;}
	#container .main .con_table #table_sub #TVbtn a{width:110px; height:20px; padding-top:10px; padding-left:5px; color:#121212; font-size:12px;}
	#container .main .con_table #table_sub #medinfobtn{width:120px; height:20px; margin-left:13px; border:1px solid #BDBDBD;}
	#container .main .con_table #table_sub #medinfobtn a{width:110px; height:20px; padding-top:10px; padding-left:5px; color:#121212; font-size:12px;}
	#container .main .con_table #table_sub #healthbtn{width:120px; height:20px; margin-left:13px; margin-top:5px; border:1px solid #BDBDBD;} 
	#container .main .con_table #table_sub #healthbtn a{width:110px; height:20px; padding-top:10px; padding-left:5px; color:#121212; font-size:12px;}
	#container .main .con_img{width:950px; height:200px; margin-top:10px;}
	#container .main .con_img #title_3{font-size:22px; color:#5586EB; position:relative;  }
	#container .main .con_img #img{width:950px; height:180px; border:1px solid #BDBDBD;  }
	#container .main .con_img p{ font-size:12px; text-align:right; margin-top:5px;}
	#container .main .con_last{width:950px; height:150px; margin-top:30px;}
	#container .main .con_last #title_4{font-size:22px; color:#5586EB; position:relative;  }
	#container .main .con_last #title_5{font-size:20px; position:relative; margin-top:5px;}
	#container .main .con_last #title_6{position:relative; margin-top:3px;}
	
	#container .main .content{width:950px; height:280px; border:1px solid #CFCFCF; background:rgba(233,233,233,0.65); margin-top:0px;}
	#container .main .content #title_2{font-size:18px; position:relative; margin-top:15px; margin-left:18px;}
	#container .main .content #main_text{width:880px; height:135px; font-size:14px; line-height:1.8em; padding:10px; overflow:auto; 
		text-align:justify; margin-top:20px; margin-left:25px; background:#FFFFFF; border:1px solid #CFCFCF;}
	#container .main .content #radio{width:880px; height:20px; margin-top:20px; margin-left:25px;}
	
	#container .main .writeform{width:950px; margin-top:30px; margin-bottom:30px; }
	#container .main .writeform .sub table{border:1px solid #BDBDBD; border-top:2px solid #5586EB;  border-collapse:collapse;}
	#container .main .writeform .sub th,td{height:45px; }
	#container .main .writeform .sub th.thtype { padding-left:32px; text-align:left; color:#5586EB; background:rgba(233,233,233,0.65);} <!-- top right bottom left -->
	#container .main .writeform .sub th.required { padding-left:20px;}
	#container .main .writeform .sub th .requiredTitle { display:block; padding-left:13px; color:#0e787c; }
	#container .main .writeform .sub td .inputtext input{ margin-left:10px; width:310px;}
	#container .main .writeform .sub td .titleinput { width:100%;}
	#container .main .writeform .sub td.titleinput input { margin-left:10px;}
	#container .main .writeform .sub td .conttxtarea { margin-top:5px; width:100%; height:248px;}
	#container .main .writeform .sub td.phoneinput select { margin-left:10px; width:82px;}
	#container .main .writeform .sub td.phoneinput input { width:79px;}
	#container .main .writeform .sub td.emailinput select,
	#container .main .writeform .sub td.emailinput input { margin-left:10px; width:152px;}
	#container .main .writeform .sub td.titletd input{ margin-left:10px;}
	#container .main .writeform .sub td.titletd .infotxt { margin-left:10px; margin-top:-30px;}
	#container .main .writeform .sub td.titletd textarea { margin-left:10px;}
	#container .main .writeform #sendbtn{ width:80px; height:30px; margin-top:20px; margin-left:440px; background:#5586EB; position:relative; float:left;}
	#container .main .writeform #sendbtn a{ width:70px; height:30px; padding-left:10px; color:#FFFFFF;}
	#container .main .writeform #cancelbtn{ width:70px; height:30px; margin-top:20px; margin-left:530px; position:relative; border:1px solid #BDBDBD;}
	#container .main .writeform #cancelbtn a{ width:60px; height:30px; padding-top:10px; padding-left:18px; color:#121212;}
	
	#f_back{clear:both; width:100%; height:300px; background:#474747; margin:0 auto; margin-bottom:0px; margin-top:150px; }
	#f_back .footer{width:1300px; height:300px; margin:0 auto; position:relative;}
	#f_back .footer .firstline{width:1200px; height:80px; position:relative;}
	#f_back .footer .firstline #logo{width:120px; height:40px; top:40px; margin-left:60px; position:relative; color:#FFFFFF;}
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

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->
<div id="side">
	<jsp:include page="websidebar2.jsp" flush="true | false"/>
</div>

<div id="container">	
	<div class="main">
		<div id="title_1"><b>콘텐츠제공안내</b></div>
		<div id="main_top">	
		<font>
		서울아산병원은 신뢰도 있는 건강정보 콘텐츠를 무상으로 제공하여 더 건강한 사회 만들기에 도움이 되고자 합니다. <br/>
		단, 상업적 용도로 사용하거나 재가공해 사용할 수 없습니다.
		</font>
		</div>
		
		<div class="con_table">
			<div id="title_2"><b>제공하는 콘텐츠</b></div>
			<div id="table_sub">
				<table cellpadding="0" cellspacing="0" border="1" width="950px" height="230px;" class="tablelayout" >
				<col width="180px;" />
				<col width="620px;" />
				<col width="150px;" />
				<tbody>
					<tr>
						<th scope="col"><label for="name">구분</label></th>
						<th scope="col">내용</th>
						<th scope="col">바로가기</th>
					</tr>
					<tr>
						<th scope="row"><label for="video_con">동영상 콘텐츠</label></th>
						<td class="textinput">
						건강에 관한 기초 정보, 인체에 대한 설명, 병원에서 시행하는 검사의 원리를 <br/>
						일반인의 눈높이에 맞춰 설명하는 동영상입니다. <br/>
						(건강플러스, 내 몸 둘러보기, 영상으로 보는 검사 등)
						</td>
						<td class="div_input">
						<div id="TVbtn"><a href="#" class="TV">건강TV</a></div>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="text_con">텍스트 콘텐츠</label></th>
						<td class="textinput">
						질환정보와 식단 정보, 의료진의 이야기 등 다양한 텍스트입니다. <br/>
						(질환백과, 식사요법, 메디컬칼럼, 생활속건강 등)
						</td>
						<td class="div_input">
						<div id="medinfobtn"><a href="#" class="medinfo">의료정보</a></div>
						<div id="healthbtn"><a href="#" class="health">건강이야기</a></div>
						</td>
					</tr>
					</tbody>
					</table>
			</div>
		</div>
		<div class="con_img">
			<div id="title_3"><b>콘텐츠 제공 절차</b></div>
			<div id="img">img</div>
			<p>※ 콘텐츠 제공 형태 : 홈페이지 링크 또는 원본파일 전달</p>
		</div>
		<div class="con_last">
			<div id="title_4"><b>콘텐츠 제공 신청</b></div>
			<div id="title_5"><b>전화 문의</b></div>
			<div id="title_6">서울아산병원 e-med팀 장철호 주임(T.02-3010-5412)</div><br/>
			<div id="title_5"><b>이메일 문의</b></div>
		</div>
		
		<div class="content">
			<div id="title_2"><b>개인정보 수집 · 이용 동의(필수)</b></div>
			<div id="main_text">
			관리자이메일보내기 서비스의 개인정보는 관리자가 메일에 대한 답변 시 본인 확인의 목적을 위하여 수집, 이용됩니다.
			수집되는 개인정보 항목은 아래와 같습니다.<br/>
			· 성명, 휴대전화, 이메일<br/>
			수집된 개인정보는 아래의 기간 동안에 한하여 보유 및 이용됩니다.<br/>
			· 수집된 개인정보는 관리자 이메일 보내기 취소 전까지 보관 및 관리됩니다.<br/>
			· 관리자이메일보내기 사용자가 개인정보의 삭제를 원하는 경우 지체 없이 해당 정보를 삭제합니다.<br/>
			귀하는 개인정보 수집 및 이용에 대하여 동의를 거부할 권리가 있으며, 동의를 거부할 경우, 본 관리자 이메일보내기
			서비스를 이용할 수 없음을 알려 드립니다.
			</div>
			<div id="radio">
			<input type="radio" name="agreement" value="동의"> 동의합니다 &nbsp;
			<input type="radio" name="agreement" value="동의하지않음"> 동의하지 않습니다
			</div>
		</div>
		<div class="writeform">
			<div class="sub">
				<table cellpadding="0" cellspacing="0" border="1" width="100%" class="tablelayout" >
				<col width="20%" />
				<col width="80%" />
				<tbody>
					<tr>
						<th scope="row" class="thtype"><label for="name">보내는 사람</label></th>
						<td class="titleinput"><input type="text" id="name" name="name" class="inputText" value="" maxlength="25" style="width: 273px;"  /></td>
					</tr>
					<tr>
						<th scope="row" class="thtype"><label for="phone1">휴대전화</label></th>
						<td class="phoneinput">
							<select id="phone1" name="phone1" class="phone1" style="width:87px; height:26px;">
							<option value='010'>010</option><option value='011'>011</option>
							<option value='016'>016</option><option value='017'>017</option>
							<option value='018'>018</option><option value='019'>019</option></select>
 							-
							<input type="text" class="inputtext" name="phone2" id="phone2" maxlength="4" value="" /> -
							<input type="text" class="inputtext" name="phone2" id="phone2" maxlength="4" value="" />
						</td>
					</tr>
					<tr>
						<th scope="row" class="thtype"><label for="email">이메일 주소</label></th>
						<td class="emailinput">
							<input type="text" class="inputtext" id="email1" name="email1" value="" maxlength="25"/> @ 
							<input type="text" class="inputtext" id="email2" name="email2" value="" maxlength="25"/>
							<select id="email3" name="email3" onchange="on_email3(this.form)" style="height:26px;">
							<option value="">선택해주세요.</option><option value="dreamwiz.com">dreamwiz.com</option>
							<option value="empas.com">empas.com</option><option value="gmail.com">gmail.com</option>
							<option value="hanafos.com">hanafos.com</option><option value="yahoo.co.kr">yahoo.co.kr</option>
							<option value="hotmail.com">hotmail.com</option><option value="korea.com">korea.com</option>
							<option value="nate.com">nate.com</option><option value="naver.com">naver.com</option>
							<option value="paran.com">paran.com</option><option value="hanmail.net">hanmail.net</option>
							<option value="0">직접입력</option></select>
						</td>
					</tr>
					<tr>
						<th scope="row" class="thtype"><label for="inquirytitle">제목</label></th>
						<td class="titletd">
							<input type="text" id="inquirytitle" name="inquirytitle" class="titleinput" maxlength="100" style="width: 720px;"/>
						</td>
					</tr>
					<tr>
						<th scope="row" class="thtype"><label for="inquirycontent">내용</label></th>
						<td class="titletd" style="height: 350px;">
							<p class="infotxt">* <span id="byteView" >0</span> byte / 최대 4000 byte(한글 2000자, 영문 4000자)</p>
							<textarea rows="" cols="100" id="inquirycontent" name="inquirycontent" class="conttxtarea" style="width: 720px;"></textarea>
						</td>
					</tr>
					</tbody>
					</table>
			</div>
				<div id="sendbtn"><a href="#" class="send">신청하기</a></div>
				<div id="cancelbtn"><a href="#" class="cancel">취소</a></div>
		</div>
	</div>
	
	
</div>
<div id="f_back">
	<div class="footer">
		<div class="firstline">
			<div id="logo"><a href="/antman/main.do"><img src="/antman/img/main_logo.png" width="130" height="42"></a></div>
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