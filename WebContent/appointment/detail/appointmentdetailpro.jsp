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
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:-17px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>


<!-- container 시작 -->
<div id="side">
	<jsp:include page="/appointment/appointmentsidebar.jsp" flush="true | false"/>
</div>

<div id="container">
	<div class="main">
		<div id="title">
<center><h2>예약이 완료되었습니다.</h2>


<table width="700" border="1">
<tr align="center">
<td width="100" align="center">예약번호</td>
<td width="50" align="center">예약id</td>
<td width="100" align="center">예약성함</td>
<td width="100" align="center">예약진료과</td>
<td width="100" align="center">예약선생님</td>
<td width="200" align="center">예약시간</td>
<td width="100" align="center">진료회차</td>
</tr>
<tr align="center">
<c:forEach var="dto" items="${list}">
<td align="center">${dto.aid }</td>
<td align="center">${dto.id }</td>
<td align="center">${dto.name }</td>
<td align="center">${dto.dpname }</td>
<td align="center">${dto.drname }</td>
<td align="center">${dto.adate }</td>
<td align="center">${dto.nextadate }</td></tr>
</c:forEach>

</table>
<input type="button" value="메인으로 가기" oncick="location.href='/antman/main.do'">
<input type="button" value="마이페이지 가기" oncick="location.href='/antman/d_mypage.do'">

</center>

</div>
</div>