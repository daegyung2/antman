<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <h2>���ὺ������ȸ</h2>

<form action="/antman/schedulecheck.do" method="post">
�������̸�<input type="text" name="drname"/>
<input type="submit" value="������ ��ȸ"/>
</form>

<table width="1300" border="0">

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
<td width="700">
<table width="650" border="1">
<tr><td width="100">�����ȣ</td>
<td width="100">���ἱ����</td>
<td width="150">�����</td>
<td width="200">���������¥</td>
<td width="100">�̸�</td>
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