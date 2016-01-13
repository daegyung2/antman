<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#menutop{width:100%; height:150px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:75px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:100px; margin-top:-17px; position:relative}
	#container .main #title{width:800px; margin-left:-23px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; text-align:center; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->





<div id="container">
	<div class="main"><br/><br/>
	<div class="title"><h2>사이트맵</h2></div>
		
	<table width="900" height="300" border="1">
	<tr>
	
	<td>
	<a href="/antman/loginForm.do">로그인</a><br/><br/> 
	<a href="/antman/loginCheck.do">회원가입</a><br/><br/>
	<a href="/antman/mainroad.do">오시는길</a><br/><br/>
	<a href="/antman/sitemap.do">사이트맵</a><br/><br/>
	</td>
	
	<td>
	<a href="/antman/treatmentsearch.do">의료진</a><br/><br/> 
	<a href="/antman/treatmentsearch.do">진료과</a><br/><br/>
	<a href="/antman/appointmentsimpleform.do">간편예약</a><br/><br/>
	<a href="/antman/appointmentmain.do">상세예약</a><br/><br/> 
	<a href="/antman/loginForm.do">진료조회</a><br/><br/>
	</td>
	
	<td>
	<a href="/antman/mainboard.do" style="text-decoration:none">공지사항</a><br/><br/> 
	<a href="/antman/newsboard.do" style="text-decoration:none">뉴스</a><br/><br/>
	<a href="/antman/lectureboard.do" style="text-decoration:none">강의정보</a><br/><br/>
	<a href="/antman/cultureboard.do" style="text-decoration:none">문화갤러리</a><br/><br/> 
	<a href="/antman/academylist.do" style="text-decoration:none">학술행사일정</a><br/><br/> 
	</td>
	
	<td>
	<a href="/antman/faqboard.do" style="text-decoration:none">자주하는질문</a><br/><br/> 
	<a href="/antman/praiseboard.do" style="text-decoration:none">칭찬코너</a><br/><br/>
	<a href="/antman/pageinquiry.do" style="text-decoration:none">홈페이지이용문의</a><br/><br/>
	<a href="/antman/offerinfo.do" style="text-decoration:none">콘텐츠 제공 문의</a><br/><br/>  
	</td>
	
	<td>
	<a href="/antman/guide.do" style="text-decoration:none">병원소개<br/><br/> 
	<a href="/antman/mission.do" style="text-decoration:none">미션과비전<br/><br/>
	<a href="/antman/present.do" style="text-decoration:none">현황<br/><br/>
	<a href="/antman/greet.do" style="text-decoration:none">병원장 인사말<br/><br/>
	</td>
	

	
	</tr>
	</table>

		</div>
		
		
	</div>
    
    
<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>