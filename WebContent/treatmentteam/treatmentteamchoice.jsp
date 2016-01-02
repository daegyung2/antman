<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2></h2>

<br/>
<br/>
<table width="1200" border="0">
<tr><td colspan ="2"><jsp:include page="/mainpage/maintop.jsp" flush="true | false"/></td></tr>
<tr>
<tr>
<td width="200">

<jsp:include page="treatmentsidebar.jsp" flush="true | false"/>
    



</td><td width="1000">
<table width="900" border="0">
<tr>
<c:forEach var="dto" items="${cholist}" varStatus="status">
<td height="150" align="center" width="150"><center><img src="${dto.dpimg}" width="110" height="110"/><br/>${dto.dpname}</center></td>
	<c:if test="${status.count%6==0}">
		<tr>
		
		
	</c:if>
</c:forEach>
</tr>

</table>
</td>
<center>










</table>
