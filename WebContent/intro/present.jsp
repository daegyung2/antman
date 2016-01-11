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
	#container{width:1100px; height:1300px; margin:0 auto;  margin-left:220px; margin-top:-20px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; top:5px; position:relative;}
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<div id="side">
	<jsp:include page="/intro/introsidebar.jsp" flush="true | false"/>
</div>
<div id="container">
	<div class="main">
	

<table border="0" align="center">
<font size="6">현황</font> <br/><br/>
<font size="6"><b>DB hospital 2014년 현황</b></font> <br/><br/>
<tr>
<td width="230" align="center">
<img src="/antman/img/intro9.gif"/><br/><br/>
<font size="4">병원시설 현황</font><br/><br/>
<font size="3">2,175병상</font>
</td>

<td width="230" align="center">
<img src="/antman/img/intro10.gif"/><br/><br/>
<font size="4">외래환자수(일평균)</font><br/><br/>
<font size="3">11,380명</font>
</td>

<td width="230" align="center">
<img src="/spring/img/intro11.gif"/><br/><br/>
<font size="4">재원환자수</font><br/><br/>
<font size="3">912,259명</font>
</td>

<td width="230" align="center">
<img src="/antman/img/intro12.gif"/><br/><br/>
<font size="4">응급환자수</font><br/><br/>
<font size="3">113,261명</font>
</td>

<td width="230" align="center">
<img src="/antman/img/intro13.gif"/><br/><br/>
<font size="4">수술건수</font><br/><br/>
<font size="3">59,947회</font>
</td>

</tr>
</table>
<br/><br/><br/>

<table width="1300" border="0" cellspacing="30">
<font size="6"><b>DB hospital 2006년 ~ 2014년 현황 </b></font>
<tr>
<td>
&nbsp;&nbsp;&nbsp;<img src="/antman/img/int1.gif"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="/antman/img/int1_1.gif"/><br/>

</td>
</tr>

<tr>
<td>
&nbsp;&nbsp;&nbsp;<img src="/antman/img/int2.gif"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="/antman/img/int2_2.gif"/><br/><br/>
</td>
</tr>

<tr>
<td>
&nbsp;&nbsp;&nbsp;<img src="/antman/img/int3.gif"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="/antman/img/int3_3.gif"/><br/><br/>
</td>
</tr>

<tr>
<td>
&nbsp;&nbsp;&nbsp;<img src="/antman/img/int4.gif"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="/antman/img/int4_4.gif"/><br/><br/>
</td>
</tr>

<tr>
<td>
&nbsp;&nbsp;&nbsp;<img src="/antman/img/int5.gif"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="/antman/img/int5_5.gif"/><br/><br/>
</td>
</tr>



</table>
</div>
</div>
