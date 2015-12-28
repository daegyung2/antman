<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>진료예약</title>

<h2>진료예약</h2>

<center>
<table width="800" border="1">
<tr>
<td width="400"><center><h3>간편예약</h3><br/>
진료를 처음 보시는 경우<br/>
연락처를 남겨 주시면 상담 간호사가 전화를 드려<br/>
예약을 도와드립니다 <br/>
<input type="button" value="간편예약하기" onclick="location.href='appointmentsimpleform.do'"/><br/>
첫방문고객 예약번호 안내
심장병원 02-3010-0600
암병원 02-3010-1300
어린이병원 02-3010-1230</center>
</td>
<td width="300"><center><h3>상세예약</h3><br/>
회원이 본인 예약을 할 경우<br/>
로그인 후 본인의 진료예약 및 조회를<br/>
하실 수 있습니다.<br/>
${ sessionScope.memId}
<c:if test="${sessionScope.memId == null }"> 
<input type="button" value="본인 예약하기" onclick="location.href='loginform.do'"/>
</c:if>
<c:if test="${sessionScope.memId != null }"> 
<input type="button" value="본인 예약하기" onclick="location.href='appointmentform.do'"/>
</c:if>
<input type="button" value="본인 예약 조회하기"/>
</td></center>


<h2>전화문의 1688-7575</h2>&nbsp; 서울병원은 편안한 진료와 만족스러운 서비스 제공을 위해 항상 노력하겠습니다
<center>
<table width="800" border="1">
<tr>
<td width="200">나의차트</td><td width="200">의료진/진료과 보기</td><td width="200">둘러보기</td><td width="200">오시는길</td>
</center>
</table>

