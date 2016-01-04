<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	.sidebar{width:200px; height:1350px; float:left; margin-left:35px; top:0px; position:absolute; border:1px solid #BDBDBD;}
	.sidebar #sidebar_top{width:200px; height:120px; font-size:22px; margin-top:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD; text-align:right;}
	.sidebar #sidebar_top b{padding-right:0px;}
	.sidebar #sidebar_top a{text-decoration:none; color:#5586EB;}
	#nav{width:200px; margin:30px auto; text-indent:10px; float:left; margin-top:25px; margin-bottom:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD;}
	#nav .title{display:block; height:50px; line-height:3em; font-size:17px; background:#FFFFFF; color:#000000; text-align:right; padding-right:10px; border-top:1px solid #BDBDBD;}
	#nav .title:hover{text-decoration:underline; }
	#nav li.on{background:#5586EB;}
	#nav li.on a{font-weight:bold; color:#FFFFFF;}
	#nav li:first-child a.title{border-top:none;}
	
</style>

<div class="sidebar">
	<div id="sidebar_top">
		<h3>${sessionScope.memname}</h3><font size="4">의사등록번호 </font><font color="#5586EB"><b>${sessionScope.memdrid}</b></font>
	</div>
<ul id="nav">
	<li><a href="#" class="title">진료서비스</a></li>
	<li><a href="/antman/scheduleform.do?drid=${sessionScope.memdrid }&drname=${sessionScope.memname}" class="title">나의진료스케쥴등록</a></li>
	<li><a href="/antman/schedulecheck.do?drid=${sessionScope.memdrid }&drname=${sessionScope.memname}" class="title">나의진료스케쥴확인</a></li>
	<li><a href="/antman/dscheduleform.do?drid=${sessionScope.memdrid }&drname=${sessionScope.memname}" class="title">환자진료결과등록하기</a></li>
	<li><a href="/antman/dpraiseboard.do?drid=${sessionScope.memdrid }&drname=${sessionScope.memname}" class="title">칭찬받은글보기</a></li>
	<li><a href="/antman/scheduleform.do?drid=${sessionScope.memdrid }&drname=${sessionScope.memname}" class="title">받은 문의</a></li>
	<li><a href="#" class="title">개인서비스</a></li>
	<li><a href="/antman/scheduleinfomodify.do?drid=${sessionScope.memdrid }&drname=${sessionScope.memname}" class="title">정보수정</a></li>
	<li><a href="#" class="title">회원탈퇴</a></li>
</ul>
</div>