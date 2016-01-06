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
	<jsp:include page="treatmentteamtop.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->
<div id="side">
	<jsp:include page="treatmentsidebar.jsp" flush="true | false"/>
</div>

<div class="container">
<title>설현|의료진</title>


<center><h2>의료진 | ${dpfdto.dpname}</h2></center>
<br/>
<br/>
<center><table width="750" border="1">
<td width="250"><center>${dpfdto.drname} 의료진 소개</center></td>
<td width="250"><center>같은 진료과 의료진 전체 보기</center></td>
<td width="250"><center>전체 의료진 검색</center></td>
</table>
<br/>

<table width="750" border="1">
<tr>
<td width="300" height="300" rowspan="2"><img src="${dpfdto.drimg1}" width="300" height="400"></td><td width="200"><img src="${dpfdto.drimg2}" width="200" height="250"></td><td width="200"><img src="${dpfdto.drimg3}" width="200" height="250"></td></tr>
<tr>
<td width="250" height="200"><center><h2>${dpfdto.drname} </h2></center></td><td width="250"><img src="${dpfdto.drimg4}" width="200" height="250"></td></tr>
<tr>
<td width="450"><h3>진료과</h3>${dpfdto.dpname}</td><td colspan="2">전문분야<br/>
${dpfdto.exarea}</td></tr>
</table>

<br/>
<table width="900" border="1">
<td>소개 | 진료 | 학력/경력 | 언론보도 | 학술활동 | 칭찬코너</td>
</table>
<br/>
<h2>진료일정</h2>
<br/>
<table width="900" border="1">
<tr>
<td width="200" rowspan="2">진료과</td><td width="300" rowspan="2">진료내용</td><td width="200" rowspan="2">예약방법</td><td width="200" colspan="2">진료시간</td></tr>
<tr>
<td width="100">오전</td><td width="100">오후</td>
</tr>
</table>
안내·평생건강관리클리닉 회원 관련 문의 (☎ 02)3010-3817)
<br/>
<br/>
<table width="900" border="1">
<tr>
<td width="300"><h2>학력/경력</h2></td><td width="600">[경력] ${dpfdto.degree1} <br/>
[경력] ${dpfdto.degree2}<br/>
[학력] ${dpfdto.degree3}<br/>
[학력] ${dpfdto.degree4}<br/>
[학력] ${dpfdto.degree5}
</td></tr>
<tr>
<td width="300"><h2>언론보도</h2></td><td width="600">[한겨례] 오래 산 부부는 심장·혈관 위험도도 닮아<br/>
[MBC] 부부는 일심동체? 생활습관뿐 아니라 "병도 닮는다<br/>
</td></tr>
<tr>
<td width="300"><h2>칭찬코너</h2></td><td width="600">칭찬코너 총1건 칭찬게시판글 가져오기<br/>
</td></tr>
<tr>
<td width="300"><h2>학술활동</h2></td><td width="600">
[논문] ${dpfdto.report1}<br/>
[논문] ${dpfdto.report2}<br/>
[논문] ${dpfdto.report3}<br/>
[논문] ${dpfdto.report4}<br/>
[논문] ${dpfdto.report5}<br/>
</td></tr>

</center>

