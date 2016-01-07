<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }

	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#top{width:200px; float:top; margin-left:100px; }
	.container{width:1100px; height:1300px; margin:0 auto;  margin-left:230px; position:relative;}
	.container .sub{width:800px; height:50px; margin-left:80px; top:0px; position:relative;}
	.container .sub b{font-size:22px; color:#000000;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:30px; position:relative;}
</style>

<div id="menutop">
	<jsp:include page="/webservice/webtop.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:-17px; position:relative}
	#container .main #title{width:800px; margin-left:-23px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>

<div id="side">
	<jsp:include page="appointmentsidebar.jsp" flush="true | false"/>
</div>

<div id="container">
	<div class="main">
		<div id="title">
<title>진료예약</title>
<h2>진료예약</h2>


<table width="800" border="1">
<tr>

<td width="400"><center><h3>간편예약</h3>
진료를 처음 보시는 경우<br/>
연락처를 남겨 주시면 상담 간호사가 전화를 드려<br/>
예약을 도와드립니다 <br/><br/>

<input type="button" value="간편예약하기" onclick="location.href='appointmentsimpleform.do'"/><br/>

<!-- 첫방문고객 예약번호 안내
심장병원 02-3010-0600
암병원 02-3010-1300
어린이병원 02-3010-1230 --></center>
<br/>
</td>
<td width="400"><center><h3>상세예약</h3>
회원이 본인 예약을 할 경우<br/>
로그인 후 본인의 진료예약 및 조회를<br/>
하실 수 있습니다.<br/><br/>

<c:if test="${sessionScope.memId eq null}"> 
<input type="button" value="본인 예약하기" onclick="location.href='loginForm.do'"/>
</c:if>

<c:if test="${sessionScope.memauth ne 'D' && sessionScope.memId ne null}"> 
<input type="button" value="본인 예약하기" onclick="location.href='appointmentform.do'"/>
</c:if>

<c:if test="${sessionScope.memId ne null }"> 
<input type="button" value="본인 예약 조회하기"onclick="location.href='p_mypage.do'"/>
</c:if>
<br/>
<br/>
</td>

</center>



<center>
<table width="800" border="1">
<tr>
<h2>전화문의 1688-7575</h2>&nbsp; 서울병원은 편안한 진료와 만족스러운 서비스 제공을 위해 항상 노력하겠습니다 <br/>
<td width="200">나의차트</td><td width="200">의료진/진료과 보기</td><td width="200">둘러보기</td><td width="200">오시는길</td>
</center>
</table>


</div>
</div> --%>
