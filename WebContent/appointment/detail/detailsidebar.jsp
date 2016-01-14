<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="/antman/js/jquery-1.11.2.min.js"></script>

<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden; height:1200px;}
	a{text-decoration:none; }
	
	.sidebar{width:200px; height:1254px; float:left; margin-left:35px; top:95px; position:absolute; border:1px solid #BDBDBD; border-top:1px solid transparent; border-bottom:1px solid transparent; z-index:200;}
	.sidebar #sidebar_top{width:200px; height:120px; font-size:22px; margin-top:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD; text-align:center;}
	.sidebar #sidebar_top b{padding-right:0px;}
	.sidebar #sidebar_top a{text-decoration:none; color:#5586EB;}
	.sidebar #bookinfo{width:160px; height:100px; margin-left:20px; margin-top:500px; border:1px solid #BDBDBD; text-align:center; font-size:16px; }
	.sidebar #bookinfo b{font-size:20px;}
	#nav{width:200px; margin:30px auto; text-indent:10px; float:left; margin-top:25px; margin-bottom:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD;}
	#nav .title{display:block; height:50px; line-height:3em; font-size:17px; background:#FFFFFF; color:#000000; text-align:center; padding-right:20px; border-top:1px solid #BDBDBD;}
	#nav .title:hover{text-decoration:underline; }
	#nav li a:focus{font-weight:bold; color:#000000;}
	#nav li.on{background:#5586EB;}
	#nav li.on a{font-weight:bold; color:#FFFFFF;}
	#nav li:first-child a.title{border-top:none;}
	
	
</style>
</head>
<div class="sidebar">
	<div id="sidebar_top">
		<br/><br/>
		<font color="#5586EB"><b><a href="/antman/appointmentmain.do">이용안내</a></b></font>
	</div>
<ul id="nav">
	<li><a href="/antman/appointmentmain.do" class="title">진료예약</a></li>
	<li><a href="/antman/notready.do" class="title">외래진료안내</a></li>
	<li><a href="/antman/notready.do" class="title">응급진료안내</a></li>
	<li><a href="/antman/notready.do" class="title">입원진료안내</a></li>
	<li><a href="/antman/notready.do" class="title">가정간호안내</a></li>
	<li><a href="/antman/notready.do" class="title">검사실안내</a></li>
</ul>
<div id="bookinfo">
	<p>예약문의 <br/>
	<b>1688-7575</b></p>
</div>
</div>

<script type="text/javascript">
$('.sidebar #nav li').click(function() {
 $('.sidebar #nav li').removeClass('on');
 $(this).addClass('on');
});
</script>