<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

 <style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	.sidebar{width:200px; height:1350px; float:left; margin-left:35px; top:95px; position:absolute; border:1px solid #BDBDBD; border-top:1px solid transparent;}
	.sidebar #sidebar_top{ width:200px; height:120px; font-size:22px; margin-top:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD; text-align:center;}
	.sidebar #sidebar_top b{padding-right:0px;}
	.sidebar #sidebar_top a{text-decoration:none; color:#5586EB;}
	.sidebar #sidebar_top th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#nav{width:200px; margin:30px auto; text-indent:10px; float:left; margin-top:25px; margin-bottom:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD;}
	#nav .title{display:block; height:50px; line-height:3em; font-size:17px; background:#FFFFFF; color:#000000; text-align:center; padding-right:10px; border-top:1px solid #BDBDBD;}
	#nav .title:hover{text-decoration:underline; }
	#nav li.on{background:#5586EB;}
	#nav li.on a{font-weight:bold; color:#FFFFFF; }
	#nav li:first-child a.title{border-top:none;}
	
</style>

<div class="sidebar">
	<div id="sidebar_top" >
			<td><h3>${sessionScope.memname}</h3><font size="4"> </font><font color="#5586EB"><b>직원번호 : ${sessionScope.memeid}</b></font></td>
	</div>
<ul id="nav">
	<li><a href="/antman/e_simple.do?eid=${sessionScope.memeid}&name=${sessionScope.memname}" class="title">간편예약현황</a></li>
	<li><a href="/antman/e_mypage.do?eid=${sessionScope.memeid}&name=${sessionScope.memname}" class="title">의료진스케줄</a></li>
	<li><a href="/antman/praiseboard.do" class="title">나의칭찬</a></li>
	<li><a href="/antman/e_modifyForm.do?Eid=${sessionScope.memeid}&drname=${sessionScope.memname}" class="title">회원정보수정</a></li>
	<li><a href="#" class="title">회원탈퇴</a></li>
</ul>
</div> 

    