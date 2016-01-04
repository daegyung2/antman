<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1300px; margin:0 auto;  margin-left:200px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:100px; position:relative}
</style>

<div id="side">
	<jsp:include page="treatmentsidebar.jsp" flush="true | false"/>
</div>

<div id="container">
	<div class="main">
		<table width="1000" border="0">
			<tr>
				<tr>
			<c:forEach var="dto" items="${cholist}" varStatus="status">
			<td height="150" align="center" width="150">
			<center><img src="${dto.dpimg}" width="110" height="110"/><br/>${dto.dpname}</center>
			</td>
				<c:if test="${status.count%6==0}">
				<tr>
				</c:if>
			</c:forEach>
		</tr>
		</table>
	</div>
</div>

