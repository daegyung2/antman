<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <h2>���ὺ������ȸ</h2>


<table width="1000" border="1">
<tr><td width="100">���ἱ����</td>
<td width="200">�����</td>
<td width="200">���ὺ����</td>
<td width="200">�����ûȯ��</td></tr>
<tr>
<c:forEach var="dto" items="${list }">
<td width="100">${dto.drname}</td>
<td width="100">${dto.dpname}</td>
<td width="100">${dto.adate}</td>
<td width="100">${dto.name}</td>
</tr>
</c:forEach>
</table>

