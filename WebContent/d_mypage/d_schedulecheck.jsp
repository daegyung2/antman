<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    


<table width="1800" border="0">
<tr>
<td width="200">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1600" align ="center">
<h2>���ὺ������ȸ</h2>
<form action="/antman/schedulecheck.do" method="post">
�������̸�<input type="text" name="drname"/>
<input type="submit" value="������ ��ȸ"/>
</form>

<table width="800" border="0">

<tr>
<td width = "600" >
<table width="550" border="1">
<tr><td width="100">�����ȣ</td>
<td width="100">���ἱ����</td>
<td width="150">�����</td>
<td width="200">���ὺ����</td>

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

<td width="200">���������¥</td>
<td width="50">�̸�</td>
<td width="450">�������ᳯ¥</td>
</tr>
<tr>
<c:forEach var="dto" items="${aplist }">

<td>${dto.adate}</td>
<td>${dto.name}</td>
<td>
��<input type="text" name="year" value="" size="1">
��<input type="text" name="month" value=""size="1">
��<input type="text" name="day" value="" size="1">
�ð�<input type="text" name="hour" value="" size="1">
��<input type="text" name="minute" value="" size="1">
<input type="button" value=��� onclick="javascript:window.location='/antman/nextschedule.do?dto.id=${dto.id}&year&month&day&hour&minute'"></td>
</tr>
</c:forEach>
</table>

</td>
</tr>
</table>

</td>
</tr>
</table>