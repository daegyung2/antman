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
		$('.sub').slideUp(0);
		$(this).next().slideDown(0);
	 }
		/*$('.sub').hide();
		$(this).next().show();*/
	});
	
})

$(function(){
	var tabDiv = $('#nav');
	var anchors =  tabDiv.find('ul.sub a');
	var currentAnchor = anchors.filter('.on'); 
	/* selector중에서 (~)적용되는 개체 찾기 */
	var currentPanel = $(currentAnchor.attr('href'));
	currentPanel.show();
	
	anchors.click(function(event){
		event.preventDefault(); /* 해당 이벤트 기본동작 해제(방지) */
		var newAnchor = $(this);
		/* 클릭되는 a를 새로운 선택개체(newAnchor)로 지정 */
		var newPanel = $(newAnchor.attr('href'));
		/* 새로운 선택개체의href값을 호출해서 새로운panel 지정 */
		currentAnchor.removeClass('on');
		/* 기존에 선택된 a에서 on클래스를 지워서 회색배경으로 처리 */
		newAnchor.addClass('on');
		/* 새로운 선택a에 on클래서 적용해서 흰색배경으로 처리 */
		currentPanel.hide();
		/* 현재 보여지고 있는 panel 가리기 */
		newPanel.show();
		/* 새롭게 정의된 panel을 보이기 */
		currentAnchor = newAnchor;
		/* 현재선택된 a를 새로 클릭한 a값으로 정의 */
		currentPanel = newPanel;
		/* 현재 보여지고 있는 panel을 새롭게 정의된 panel값으로 정의 */
	})
})
</script>
<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	.sidebar{width:200px; height:1350px; float:left; margin-left:120px; top:0px; position:absolute; border:1px solid #BDBDBD;}
	.sidebar #sidebar_top{width:200px; height:120px; font-size:22px; margin-top:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD; text-align:right;}
	.sidebar #sidebar_top b{padding-right:0px;}
	.sidebar #bookinfo{width:160px; height:100px; margin-left:20px; margin-top:380px; border:1px solid #BDBDBD; text-align:center; font-size:16px; }
	.sidebar #bookinfo b{font-size:20px;}
	#nav{width:200px; margin:30px auto; text-indent:10px; float:left; margin-top:25px; margin-bottom:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD;}
	#nav .title{display:block; height:50px; line-height:3em; font-size:17px; background:#5586EB; color:#FFFFFF; text-align:right; padding-right:20px;}
	#nav .title:hover{text-decoration:underline; }
	#nav .sub li{height:36px; line-height:2em; background:rgba(233,233,233,0.65);}
	#nav .sub li a{display:block; font-size:15px; color:#222; text-align:right; padding-right:20px; }
	#nav .sub li a:hover{text-decoration:underline; }
	#nav .sub li a.on{text-decoration:underline; color:#5586EB; }
	#nav .sub{display:none;}
	#nav li:first-child a.title{border-top:none;}
	
	#container{width:960px; height:1300px; margin:0 auto; margin-left:320px; position:relative;}
	#container .main{width:900px; height:1200px; margin-left:30px; position:relative}
	#container .main #main_top{width:850px; height:130px; margin-top:20px; line-height:1.6;}
	#container .main #btn{width:70px; height:30px; margin-top:20px; margin-right:10px; background:#5586EB; position:relative; float:right;}
	#container .main #btn a{width:60px; height:30px; padding-left:10px;}
	#container .main #bar{clear:both; position:absolute; width:850px; height:1px; background:#CFCFCF; margin-top:65px; opacity:0.8; }
	#container .main #title_1{font-size:24px; left:0px; position:relative; margin-top:30px;}
	#container .main #title_2{font-size:24px; left:0px; position:relative; margin-top:90px;}
	#main_video{width:550px; height:420px; border:1px solid #333; float:left; margin-top:40px;}
	#main_text{width:250px; height:400px; font-size:14px; line-height:1.8em; padding:10px; overflow:auto; text-align:justify; 
				margin-top:40px; padding-left:40px;}
</style>

</head>
<body>

<div class="sidebar">
	<div id="sidebar_top">
		<br/><br/>
		<font color="#5586EB"><b>웹서비스</b></font>
	</div>
<ul id="nav">
	<li>
    	<a href="#" class="title"><b>발급안내</b></a>
        <ul class="sub">
        	<li><a href="#">의무기록사본</a></li>
            <li><a href="#">증명서</a></li>
            <li><a href="#">중간진료비결제</a></li>
            <li><a href="#">위변조문서확인</a></li>
        </ul>
    </li>
    <li>
    	<a href="#" class="title"><b>고객서비스</b></a>
        <ul class="sub">
        	<li><a href="#">자주하는질문</a></li>
            <li><a href="#" class="on">고객의소리</a></li>
            <li><a href="#">칭찬코너</a></li>
            <li><a href="#">홈페이지이용문의</a></li>
            <li><a href="#">콘텐츠제공안내</a></li>
        </ul>
    </li>
</ul>
<div id="bookinfo">
	<p>예약문의 <br/>
	<b>1688-7575</b></p>
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