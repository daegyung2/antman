<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<center><h2>예약이 완료되었습니다.</h2>


<table width="1300" border="1">
<tr>
<td width="200">예약번호</td>
<td width="200">예약id</td>
<td width="200">예약성함</td>
<td width="200">예약진료과</td>
<td width="200">예약선생님</td>
<td width="200">예약시간</td>
<td width="100">진료회차</td>
</tr>
<tr>
<c:forEach var="dto" items="${list}">
<td >${dto.aid }</td>
<td >${dto.id }</td>
<td >${dto.name }</td>
<td >${dto.dpname }</td>
<td >${dto.drname }</td>
<td >${dto.adate }</td>
<td >${dto.nextadate }</td></tr>
</c:forEach>

</table>
<input type="button" value="메인으로 가기" oncick="location.href='/antman/main.do'">
<input type="button" value="마이페이지 가기" oncick="location.href='/antman/loginPro.do'">

</center>

