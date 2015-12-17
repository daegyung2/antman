<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


 <h2>첫방문 고객 간편 진료예약 서비스</h2>
       
    <h4>아래 사항을 입력해주시면, 상담 간호사가 확인 후 상담 시간내에 전화를 드려 예약을 도와드리겠습니다.</h4>
    <br/>
    
    <h5>상담시간 : 평일 08:30 ~ 17:30 / 토요일 08:30 ~ 12:30(공휴일 제외)<br/>
※ 상담 전화 연결 3회 이상 실패 시 간편예약접수가 자동으로 취소 되오니, 이점 양해하여 주시기 바랍니다.</h5>
<br/>
<br/>
<center>
<form action="/antman/appointmentsimplepro.do" method="post">
<input type="text" name="jumin1" value="${jumin1 }"/>
<input type="text" name="jumin2" value="${jumin2 }"/>
<input type="text" name="name" value="${name}"/>
<table width="900" border="1">

<tr>
<td width="500">성명</td><td width="400">"${name}"</td></tr>
<tr>
<td width="500">휴대전화</td><td width="400">
<input type="text" name="phone1">-<input type="text" name="phone2">-<input type="text" name="phone3">
</td>
</tr>
<tr>
<td width="500">주요증상</td><td width="400">
<TEXTAREA name="symptom" rows="5" cols="100">쓰셈</TEXTAREA><BR/>
* 0 byte / 최대 200 byte(한글 100자, 영문 200자)
</td>
</tr>
<tr>
<td width="500">남기고 싶은말</td><td width="400">
<TEXTAREA name="talk" rows="5" cols="100">쓰셈</TEXTAREA><BR/>
* 0 byte / 최대 200 byte(한글 100자, 영문 200자)
</td>
</tr>

</table>
<br/>

<input type="submit" value="확인"/><input type="button" value="취소"/></center>


</form>