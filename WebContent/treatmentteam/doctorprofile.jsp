<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<title>설현|의료진</title>


<h2>의료진 | ${dto.dpname}</h2>
<br/>
<br/>
<center><table width="900" border="1">
<td width="300"><center>${dto.drname} 의료진 소개</center></td>
<td width="300"><center>같은 진료과 의료진 전체 보기</center></td>
<td width="300"><center>전체 의료진 검색</center></td>
</table>
<br/>

<table width="900" border="1">
<tr>
<td width="400" height="400" rowspan="2"><img src="${dto.drimg1}" width="400" height="500"></td><td width="250"><img src="${dto.drimg2}" width="200" height="250"></td><td width="250"><img src="${dto.drimg3}" width="200" height="250"></td></tr>
<tr>
<td width="250" height="200"><center><h2>${dto.drname} </h2></center></td><td width="250"><img src="${dto.drimg4}" width="200" height="250"></td></tr>
<tr>
<td width="450"><h3>진료과</h3>${dto.dpname}</td><td colspan="2">전문분야<br/>
${dto.exarea}</td></tr>
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
<td width="300"><h2>학력/경력</h2></td><td width="600">[경력] ${dto.degree1 } <br/>
[경력] ${dto.degree2 }<br/>
[학력] ${dto.degree3 }<br/>
[학력] ${dto.degree4 }<br/>
[학력] ${dto.degree5}
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
[논문] ${dto.report1}<br/>
[논문] ${dto.report2}<br/>
[논문] ${dto.report3}<br/>
[논문] ${dto.report4}<br/>
[논문] ${dto.report5}<br/>
</td></tr>

</center>

