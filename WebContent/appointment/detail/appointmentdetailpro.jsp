<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<center><h2>������ �Ϸ�Ǿ����ϴ�.</h2>


<table width="1800">
<tr>
<td width="300">�����ȣ</td>
<td width="300">����id</td>
<td width="300">���༺��</td>
<td width="300">���������</td>
<td width="300">���༱����</td>
<td width="300">����ð�</td>
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

