<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<center><h2>예약이 완료되었습니다.</h2>


<table width="1800">
<tr>
<td width="300">예약번호</td>
<td width="300">예약id</td>
<td width="300">예약성함</td>
<td width="300">예약진료과</td>
<td width="300">예약선생님</td>
<td width="300">예약시간</td>
</tr>
<tr>
<c:forEach var="dto" items="${list}">
<td width="300">${dto.aid }</td>
<td width="300">${dto.id }</td>
<td width="300">${dto.name }</td>
<td width="300">${dto.dpname }</td>
<td width="300">${dto.drname }</td>
<td width="300">${dto.adate }</td></tr>
</c:forEach>

</table>


</center>

