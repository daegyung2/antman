<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<center><h2>������ �Ϸ�Ǿ����ϴ�.</h2>


<table width="1300" border="1">
<tr>
<td width="200">�����ȣ</td>
<td width="200">����id</td>
<td width="200">���༺��</td>
<td width="200">���������</td>
<td width="200">���༱����</td>
<td width="200">����ð�</td>
<td width="100">����ȸ��</td>
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
<input type="button" value="�������� ����" oncick="location.href='/antman/main.do'">
<input type="button" value="���������� ����" oncick="location.href='/antman/loginPro.do'">

</center>

