<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <h2>진료스케쥴조회</h2>

<form action="/antman/schedulecheck.do" method="post">
선생님이름<input type="text" name="drname"/>
<input type="submit" value="스케쥴 조회"/>
</form>

<table width="1300" border="0">

<tr>
<td width = "600" >
<table width="550" border="1">
<tr><td width="100">진료번호</td>
<td width="100">진료선생님</td>
<td width="150">진료과</td>
<td width="200">진료스케쥴</td>

<tr>
<c:forEach var="dto" items="${list }">
<td>${dto.sid}</td>
<td>${dto.drname}</td>
<td>${dto.dpname}</td>
<td>${dto.sdate}</td>

</tr>
</c:forEach>
</table>
</td>
<td width="700">
<table width="650" border="1">
<tr><td width="100">예약번호</td>
<td width="100">진료선생님</td>
<td width="150">진료과</td>
<td width="200">진료받을날짜</td>
<td width="100">이름</td>
</tr>
<tr>
<c:forEach var="dto" items="${aplist }">
<td>${dto.aid}</td>
<td>${dto.drname}</td>
<td>${dto.dpname}</td>
<td>${dto.adate}</td>
<td>${dto.name}</td>
</tr>
</c:forEach>
</table>

</td>
</tr>
</table>