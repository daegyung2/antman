<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	.sidebar{width:200px; height:1350px; float:left; margin-left:25px; top:0px; position:absolute; border:1px solid #BDBDBD;}
	.sidebar #sidebar_top{width:200px; height:120px; font-size:22px; margin-top:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD; text-align:right;}
	.sidebar #sidebar_top b{padding-right:0px;}
	.sidebar #sidebar_top a{text-decoration:none; color:#5586EB;}
	.sidebar #bookinfo{width:160px; height:100px; margin-left:20px; margin-top:500px; border:1px solid #BDBDBD; text-align:center; font-size:16px; }
	.sidebar #bookinfo b{font-size:20px;}
	#nav{width:200px; margin:30px auto; text-indent:10px; float:left; margin-top:25px; margin-bottom:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD;}
	#nav .title{display:block; height:50px; line-height:3em; font-size:17px; background:#FFFFFF; color:#000000; text-align:right; padding-right:20px; border-top:1px solid #BDBDBD;}
	#nav .title:hover{text-decoration:underline; }
	#nav .title.on{text-decoration:underline; background:#5586EB; color:#FFFFFF;}
	#nav li:first-child a.title{border-top:none;}
	
</style>

<div class="sidebar">
	<div id="sidebar_top">
		<br/><br/>
		<font color="#5586EB"><b><a href="/antman/treatmentsearch.do">의료진/진료과</a></b></font>
	</div>
<ul id="nav">
	<li><a href="/antman/treatmentsearch.do" class="title">의료진</a></li>
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