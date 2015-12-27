<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2>Áø·á°ú</h2>

<br/>
<br/>
<center>



<table width="900" border="0">
<tr>
<c:forEach var="dto" items="${cholist}" varStatus="status">
<td height="150" align="center" width="150"><center><img src="${dto.dpimg}"/><br/>${dto.dpname}</center></td>
	<c:if test="${status.count%6==0}">
		<tr>
		
		
	</c:if>
</c:forEach>
</tr>






</table>
