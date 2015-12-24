<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>고객의소리 | 고객서비스 | 웹서비스</title>
<script type="text/javascript" src="/antman/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(function(){
	/* 만약에 클릭한 개체의 다음개체의 display값이 none값과 같은때만 실행 */
	$('.title').click(function(){
	 if($(this).next().css('display')=='none'){
		$('.sub').slideUp(200);
		$(this).next().slideDown(200);
	 }
		/*
		$('.sub').hide();
		$(this).next().show();
		*/
	});
})
</script>
<style type="text/css">
	body{margin:0px; padding:0px;}
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px;}
	li{ margin:0px; padding:0px; }
	
	#nav{ width:200px; margin:30px auto; text-indent:10px;}
	#nav .title{ display:block; height:36px; background:; line-height:3em; color:; }
	#nav .sub li{ height:36px; line-height:3em; background:#CFF;}
	#nav .sub li a{ display:block; width:100%; height:100%; color:#222;}
	#nav .sub{ display:none;}
	#nav li:first-child a.title{ border-top:none;}
	
	#container{ width:1100px; height:1300px; margin:0 auto; position:relative;}
	#container .main{ width:1000px; height:1200px; margin-left:50px; position:relative}
	#container .main #main_top{ width:950px; height:130px; margin-top:20px; line-height:1.6;}
	#container .main #btn{ width:70px; height:30px; margin-top:20px; margin-right:10px; background:#5586EB; position:relative; float:right;}
	#container .main #btn a{ width:60px; height:30px; padding-left:10px;}
	#container .main #bar{ clear:both; position:absolute; width:950px; height:1px; background:#CFCFCF; margin-top:65px; opacity:0.8; }
	#container .main #title_1{font-size:24px; left:0px; position:relative; margin-top:30px;}
	#container .main #title_2{font-size:24px; left:0px; position:relative; margin-top:90px;}
	#main_video{width:600px; height:420px; border:1px solid #333; float:left; margin-top:40px;}
	#main_text{width:300px; height:400px; font-size:14px; line-height:1.8em; padding:10px; overflow:auto; text-align:justify; 
				margin-top:40px; padding-left:50px;}
</style>

</head>
<body>
<div class="sidebar">
<ul id="nav">
	<li>
    	<a href="#" class="title"> 발급안내 </a>
        <ul class="sub">
        	<li><a href="#">의무기록사본</a></li>
            <li><a href="#">증명서</a></li>
            <li><a href="#">중간진료비결제</a></li>
            <li><a href="#">위변조문서확인</a></li>
        </ul>
    </li>
    <li>
    	<a href="#" class="title"> 고객서비스 </a>
        <ul class="sub">
        	<li><a href="#">자주하는질문</a></li>
            <li><a href="#">고객의소리</a></li>
            <li><a href="#">칭찬코너</a></li>
            <li><a href="#">홈페이지이용문의</a></li>
            <li><a href="#">콘텐츠제공안내</a></li>
        </ul>
    </li>
</ul>
	<div id="bookinfo">
		<p>예약문의 <br/>
		1688-7575</p>
	</div>
</div>
<div id="container">	
	<div class="main">
		<div id="title_1"><b>고객의소리</b></div>
		<div id="main_top">	
		병원을 이용하시면서 불편하신 점이나 건의하고자 하는 사항을 등록해 주세요. <br/>
		<font color="#5586EB">민원업무에 관련 없는 내용, 운영취지에 맞지 않거나 정확하게 기술되지 않은 모호한 질문, 욕설이 섞인 글,<br/>
		광고 등은 답변을 드리지 않으며 임의 삭제할 수 있습니다.</font> <br/>
		의견 등록 시 고객님의 정확한 연락처를 남겨주시면 빠른 회신을 약속 드립니다. <br/>
		<b>문의사항 :</b> 1688-7575 <br/>
		<div id="btn"><a href="#"><font color="#FFFFFF">글쓰기</font></a></div>
		<div id="bar"></div>
		</div>
		<div id="title_2"><font color="#5586EB"><b>불만고충처리안내</b></font></div>
		<div id="main_video">
		동영상
		</div>
		<div id="main_text">
		우리 병원은 고객 여러분께서 보다 편리하게 진료를 받을 수 있도록 끊임없이 노력하고 있습니다. 
		병원을 이용하면서 느낀 불편 사항을 말씀해 주시면 정성껏 상담하고 최선을 다해 처리해 드리겠습니다. 
		우리 병원의 불편사항 접수 방법은 열린상담실, 열린소리함, 그리고 인터넷을 이용한 접수방법이 있습니다. 
		첫 번째 열린 상담실은 직접내원 또는 전화를 통해 고객불편사항을 접수 받고 있습니다. 
		열린상담실을 내원하시면 불편사항에 대해 친절하게 상담해 드리도록 하겠습니다. 
		또한 전화를 이용한 상담은 지역번호 02-3010국에 5350번과 무료전화 080-203국에 3355번을 이용하시면 됩니다. 
		불편 사항 접수 방법 두 번째 열린 소리함입니다. 
		병동 및 외래 등 병원 곳곳에 비치된 열린 소리함에 고객 제안 불편 신고 카드를 작성해 접수하시면 됩니다. 
		불편사항 접수 방법 세 번째는 인터넷을 통한 접수 방법이 있는데요. 
		서울아산병원 홈페이지 amc.seoul.kr에서 회원가입 후 고객의 소리를 이용해 접수하시면 됩니다. 
		이렇게 고객 여러분께서 접수해 주신 제안이나 불편 사항을 최대한 신속히 해결하고 처리해 드리겠습니다. 
		앞으로 더욱 친절하고 최선을 다하는 서울아산병원이 되도록 노력하겠습니다. 
		감사합니다.
		</div>
	</div>
</div>

</body>
</html>