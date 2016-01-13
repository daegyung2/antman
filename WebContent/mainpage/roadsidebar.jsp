<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden; height:1200px;}
	a{text-decoration:none; }
	
	.sidebar{width:200px; height:1350px; float:left; margin-left:35px; top:95px; position:absolute; border:1px solid #BDBDBD; border-top:1px solid transparent;}
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
	
	
</style>
</head>
<div class="sidebar">
	<div id="sidebar_top">
		<br/><br/>
		<font color="#5586EB"><b>오시는길</b></font>
	</div>
<ul id="nav">
<li>
<a href="/antman/main.do" class="title"><b>HOME</b></a>
</li>
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
        	<li><a href="/antman/faqboard.do">자주하는질문</a></li>
            <li><a href="/antman/voc.do" class="on">고객의소리</a></li>
            <li><a href="/antman/praiseboard.do">칭찬코너</a></li>
            <li><a href="/antman/pageinquiry.do">홈페이지이용문의</a></li>
            <li><a href="/antman/offerinfo.do">콘텐츠제공안내</a></li>
        </ul>
    </li>
</ul>
<div id="bookinfo">
	<p>예약문의 <br/>
	<b>1688-7575</b></p>
</div>
</div>
</html>