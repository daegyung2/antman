<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <h2>진료스케쥴조회</h2>


<table width="1000" border="1">
<tr><td width="100">진료선생님</td>
<td width="200">진료과</td>
<td width="200">진료스케쥴</td>
<td width="200">진료신청환자</td></tr>
<tr>
<c:forEach var="dto" items="${list }">
<td width="100">${dto.drname}</td>
<td width="100">${dto.dpname}</td>
<td width="100">${dto.adate}</td>
<td width="100">${dto.name}</td>
</tr>
</c:forEach>
</table>

