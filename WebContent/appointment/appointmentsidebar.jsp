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
	
	.sidebar{width:200px; height:1350px; float:left; margin-left:35px; top:95px; position:absolute; border:1px solid #BDBDBD; border-top:1px solid transparent; border-bottom:1px solid transparent;}
	.sidebar #sidebar_top{width:200px; height:120px; font-size:22px; margin-top:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD; text-align:center;}
	.sidebar #sidebar_top b{padding-right:0px;}
	.sidebar #bookinfo{width:160px; height:100px; margin-left:20px; margin-top:380px; border:1px solid #BDBDBD; text-align:center; font-size:16px; }
	.sidebar #bookinfo b{font-size:20px;}
	#nav{width:200px; margin:30px auto; text-indent:10px; float:left; margin-top:25px; margin-bottom:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD;}
	#nav .title{display:block; height:50px; line-height:3em; font-size:17px; background:#5586EB; color:#FFFFFF; text-align:center; padding-right:20px;}
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
		<font color="#5586EB"><b>이용안내</b></font>
	</div>
<ul id="nav">
	<li>
    	<a href="#" class="title"><b>병원안내</b></a>
        <ul class="sub">
        	<li><a href="#">오시는길</a></li>
            <li><a href="#">주차안내</a></li>
            <li><a href="#">둘러보기</a></li>
            <li><a href="#">편의시설</a></li>
            <li><a href="#">전화번호안내</a></li>
        </ul>
    </li>
    <li>
    	<a href="#" class="title"><b>외래진료안내</b></a>
        <ul class="sub">
        	<li><a href="#">진료예약</a></li>
            <li><a href="#" class="on">진료절차</a></li>
            <li><a href="#">진료안내</a></li>
            <li><a href="#">선택진료</a></li>
        </ul>
    </li>
    <li>
    	<a href="#" class="title"><b>응급진료안내</b></a>
        <ul class="sub">
        	<li><a href="#">진료안내</a></li>
            <li><a href="#" class="on">응급증상</a></li>
        </ul>
    </li>
       <li>
    	<a href="#" class="title"><b>입원진료안내</b></a>
  
    </li>
       <li>
    	<a href="#" class="title"><b>가정간호안내</b></a>
        <ul class="sub">
        	<li><a href="#">가정간호란</a></li>
            <li><a href="#" class="on">신청방법</a></li>
        </ul>
    </li>
       <li>
    	<a href="#" class="title"><b>검사실안내</b></a>

        </ul>
    </li>
</ul>
</ul>
<div id="bookinfo">
	<p>예약문의 <br/>
	<b>1688-7575</b></p>
</div>
</div>
