<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	.sidebar{width:200px; height:1300px; float:left; margin-left:35px; top:95px; position:absolute; border:1px solid #BDBDBD; border-top:1px solid transparent; border-bottom:1px solid transparent;}
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
			<td><h3>${sessionScope.memname}</h3><font size="4"> </font><font color="#5586EB"><b>${sessionScope.memId}</b></font></td>
	</div>
<ul id="nav">
	<li><a href="/antman/p_reservation.do" class="title">진료예약</a></li>
	<li><a href="/antman/p_mypage.do" class="title">나의예약현황</a></li>
	<li><a href="/antman/p_myacademy.do" class="title">나의학술행사</a></li>
	<li><a href="/antman/p_praiseboard.do?id=${sessionScope.memId }&name=${sessionScope.memname}" class="title">칭찬하기</a></li>
	<li><a href="/antman/MyQnA.do" class="title">나의상담</a></li>
	<li><a href="/antman/modifyForm.do?id=${sessionScope.memId }&name=${sessionScope.memname}" class="title">회원정보수정</a></li>
	<li><a href="#" class="title">회원탈퇴</a></li>
</ul>
</div> 


 
