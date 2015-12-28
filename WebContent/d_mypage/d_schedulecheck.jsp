<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    


<table width="1800" border="0">
<tr>
<td width="200">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1600" align ="center">
<h2>진료스케쥴조회</h2>
<form action="/antman/schedulecheck.do" method="post">
선생님이름<input type="text" name="drname"/>
<input type="submit" value="스케쥴 조회"/>
</form>

<table width="800" border="0">

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
<td width="800">
<table width="700" border="1">
<tr>

<td width="200">진료받을날짜</td>
<td width="50">이름</td>
<td width="450">다음진료날짜</td>
</tr>
<tr>
<c:forEach var="dto" items="${aplist }">

<td>${dto.adate}</td>
<td>${dto.name}</td>
<td>
년<input type="text" name="year" value="" size="1">
월<input type="text" name="month" value=""size="1">
일<input type="text" name="day" value="" size="1">
시간<input type="text" name="hour" value="" size="1">
분<input type="text" name="minute" value="" size="1">
<input type="button" value=등록 onclick="javascript:window.location='/antman/nextschedule.do?dto.id=${dto.id}&year&month&day&hour&minute'"></td>
</tr>
</c:forEach>
</table>

</td>
</tr>
</table>

</td>
</tr>
</table>