<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>DB병원</title>

<script type="text/javascript" src="/antman/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(function(){
	var visual = $('#visual');
	var btns = $('#btns a');
	var imgs = visual.find('li');
	var currentNum = 0;
	function rotateImg(){
		currentNum++;
		currentNum = currentNum%4;
		imgs.stop().fadeOut();
		$('.bg'+currentNum).stop().fadeIn();
	}
	var timer = setInterval(rotateImg, 4000);
	btns.click(function(){
		clearInterval(timer);
		currentNum = parseInt($(this).text())-1;
		imgs.stop().fadeOut();
		$('.bg'+currentNum).stop().fadeIn();
		timer = setInterval(rotateImg,4000);
	})
})
</script>



<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	body{font-size:14px; line-height:1.4; overflow-x:hidden; height:700px; margin:0px; padding:0px;}
	a{text-decoration:none; }

	#menutop{width:100%; height:40px; z-index:200; }
	
	/* container 시작 */
	
	#container{width:1300px; height:800px; margin:0 auto; margin-top:-40px; position:relative;}
	#container .main{width:1280px; height:700px; position:relative; margin-left:10px;}
	
	#visual{ width:1280px; margin:20px auto; top:120px; position:relative; }
	#visual>ul{ width:1280px; height:400px; position:relative;}
	#visual>ul>li{ position:absolute; left:0px; top:0px; }
	#visual>ul>li:not(:first-child){ display:none;}
	#visual>#btns{ position:absolute; bottom:10px; left:610px; }
	
	#container .main .quickbtn{width:1280px; height:200px; margin-top:120px; }
	#container .main .quickbtn #btn01{float:left; width:640px; height:120px; background:#5586EB; font-size:16px; text-align:center; line-height:3em;}
	#container .main .quickbtn #btn02{width:640px; height:120px; background:rgba(71,71,71,0.8); margin-left:640px; font-size:16px; text-align:center; line-height:3em;}
	
	#container .main .boards{width:1280px; height:300px; margin-top:-20px; }
	#container .main .boards #board01{float:left; width:310px; height:300px; font-size:18px; text-align:center; border:2px dashed rgba(71,71,71,0.8); line-height:15em; }
	#container .main .boards #board01 a{display:block; width:100%; height:100%;}
	#container .main .boards #board01:hover{border:2px dashed #5586EB; background:rgba(71,71,71,0.15);}
	#container .main .boards #board02{width:310px; height:300px; margin-left:320px; font-size:18px; text-align:center; border:2px dashed rgba(71,71,71,0.8); line-height:15em; }
	#container .main .boards #board02 a{display:block; width:100%; height:100%;}
	#container .main .boards #board02:hover{border:2px dashed #5586EB; background:rgba(71,71,71,0.15);}
	#container .main .boards #board03{width:310px; height:300px; margin-left:640px; margin-top:-305px; font-size:18px; text-align:center; border:2px dashed rgba(71,71,71,0.8); line-height:15em; }
	#container .main .boards #board03 a{display:block; width:100%; height:100%;}
	#container .main .boards #board03:hover{border:2px dashed #5586EB; background:rgba(71,71,71,0.15);}
	#container .main .boards #board04{width:310px; height:300px; margin-left:960px; margin-top:-305px; font-size:18px; text-align:center; border:2px dashed rgba(71,71,71,0.8); line-height:15em; }
	#container .main .boards #board04 a{display:block; width:100%; height:100%;}
	#container .main .boards #board04:hover{border:2px dashed #5586EB; background:rgba(71,71,71,0.15);}
	#container .main table{border:1px; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px; text-align:center; }
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65); text-align:center; }
	#container .main td{padding:5px 5px 5px 5px; }
	
	/* footer 시작 */
	#f_back{clear:both; width:100%; height:300px; background:#474747; margin:0 auto; top:100px; position:relative;}
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

<div id="menutop">
	<jsp:include page="main_top.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->
<div id="container">	
	<div class="main">
	<div id="visual">
		<ul>
		<c:forEach var="dto" items="${list}" begin="0" end="6" varStatus="status">
    		<li class="bg${status.index}"><a href="newsboardcontent.do?NEid=${dto.NEid}"><img src="${dto.neimg }" alt="" /></a></li>

        	</c:forEach>
    	</ul>

	<div id="btns">
		<a href="#">
		<font color="#FFFFFF">1</font>
		</a> 
		<font color="#FFFFFF"> || </font>
		<a href="#">
		<font color="#FFFFFF">2</font>
		</a>
		<font color="#FFFFFF"> || </font>
		<a href="#">
		<font color="#FFFFFF">3</font>
		</a>
	</div>
	</div>
	<div class="quickbtn">
		<a href="/antman/appointmentmain.do"><div id="btn01"><font color="#FFFFFF"><b>온라인 예약<br/>온라인으로 바로 예약하실 수 있습니다.</b></font></div></a>
		<c:if test="${sessionScope.memauth eq 'P' && sessionScope.memId ne null }">
		<a href="/antman/p_mypage.do?id=${sessionScope.memId}">
		</c:if>
		<c:if test="${sessionScope.memId eq null }">
		<a href="/antman/loginForm.do">
		</c:if>
				<c:if test="${sessionScope.memauth eq 'D' && sessionScope.memId ne null }">
		<a href="/antman/scheduleform.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memname}">
		</c:if>
		
			   <c:if test="${sessionScope.memId ne null && sessionScope.memauth eq 'E' }">
    			<a href="/antman/e_mypage.do">
    		    </c:if>
		<div id="btn02"><font color="#FFFFFF"><b>진료 조회<br/>진료예약 및 내역조회가 가능합니다.</b></font></div></a>
	</div>
	
	<table width="1300" height="150" border="0" bordercolor="black">
	<tr>
	
	
	<td align="center">
	<table border="1" width="315" align="center">
	<tr><td><b>공지사항</b></td></tr>
	<c:forEach var="dto" items="${listA}" begin="0" end="4">
	<tr><td>
	<font color="#000000"><a href="/antman/mainboard.do">${dto.subject}<br/></a></font>
	</td></tr>
	</c:forEach>
	</table>
	</td>
	
	
	<td align="center">
	<table border="1" width="315" align="center">
	<tr><td><b>뉴스</b></td></tr>
	<c:forEach var="dto" items="${list}" begin="0" end="4">
	<tr><td>
	<font color="#000000"><a href="/antman/newsboard.do">${dto.subject}<br/></a></font>
	</td></tr>
	</c:forEach>
	</table>
	</td>
	
	<td align="center">
	<table border="1" width="315" align="center">
	<tr><td><b>강좌안내</b></td></tr>
	<c:forEach var="dto" items="${listB}" begin="0" end="4">
	<tr><td>
	<font color="#000000"><a href="/antman/lectureboard.do">${dto.subject}<br/></a></font>
	</td></tr>
	</c:forEach>
	</table>
	</td>
	
	<td align="center">
	<table border="1" width="315" align="center">
	<tr><td><b>학술행사</b></td></tr>
	<c:forEach var="dto" items="${listC}" begin="0" end="4">
	<tr><td>
	<font color="#000000"><a href="/antman/academylist.do">${dto.assubject}<br/></a></font>
	</td></tr>
	</c:forEach>
	</table>
	</td>
	
	
	
	</tr>
	</table>
	

	
	
		<!-- 리스트 뽑아서 출력할려고 했더니 난리가 나네 난리가.. 
		ex.jsp에 리스트 출력 테스트 함 
		-->
	<!-- <div class="boards">
		<div id="board01"><font color="#000000"><b>공지사항</b></font></a></div>
		 -->
		
<%-- 	 <table align="center" border="1">
		  <c:forEach var="dto" items="${listA}">
		<tr><td>
		 <font color="#000000"><a href="/antman/mainboard.do">${dto.subject}<br/></a></font>
		</td></tr>
		</c:forEach> --%>
	
<!-- 		</div> -->

		
		<!-- <div id="board02"><font color="#000000"><b>뉴스</b></font></a></div> --> 
		
		
<%-- 	
		  <c:forEach var="dto" items="${listB}">
		<tr>
		 <font color="#000000"><a href="/antman/mainboard.do">${dto.subject}<br/></a></font>
		</tr>
		</c:forEach>
</table> --%>
<!-- </div> -->
		
		
		
		
		<!-- 
		<div id="board03"><a href="#"><font color="#000000"><b>강의정보</b></font></a></div> -->
		<%-- <table align="center" border="1">
		  <c:forEach var="dto" items="${listC}">
		<tr>
		 <font color="#000000"><a href="/antman/mainboard.do">${dto.subject}<br/></a></font>
		</tr>
		</c:forEach>
		</div>
		 --%>
		
	<!-- 	<div id="board04"><a href="#"><font color="#000000"><b>학술행사</b></font></a></div>
		
			
		</div> -->
	
	</div>
</div><br/><br/><br/>
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