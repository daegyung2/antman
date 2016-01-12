<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


전체스케쥴
<table width="500" border="1">
<tr><td>전체스케쥴수</td><td>1차진료수</td><td>2차진료수</td><td>3차진료수</td><td>4차진료수</td></tr>
<tr><td>${allcount }</td><td>${one }</td><td>${two }</td><td>${three }</td><td>${four }</td></tr>
</table>
<br/>
<br/>
        <form action="/antman/appointinfo.do" method="post">
    <select name="dpname">
	<c:forEach var="dto" items="${dplist}" >
	<option value="${dto.dpname }">${dto.dpname}</option>
	</c:forEach>
	</select>&nbsp;&nbsp;<input type="submit" value="진료과별검색">   
 	</form>
 	
 	<br/>


<c:if test="${!empty drlist}">
칭찬할선생님
 <form action="/antman/praisewrite.do" method="post">  
 
    <select name="drId">
	<c:forEach var="dto" items="${drlist}" >
	<option value="${dto.drid }">${dto.drname}</option>
	</c:forEach>	
</select>&nbsp;&nbsp;<input type="submit" value="선생님선택">

</form>
</c:if>


<table width="1000" border ="1">
<tr>
<td>스케쥴번호</td>
<td>환자아이디</td>
<td>환자이름</td>
<td>선생님이름</td>
<td>진료과</td>
<td>스케쥴시간</td>
<td>다음진료</td>
<tr/>

<tr>
<c:forEach var="dto" items="${slist }">
<td>${dto.sid }</td>
<td>${dto.id }</td>
<td>${dto.name }</td>
<td>${dto.drname }</td>
<td>${dto.dpname }</td>
<td>${dto.sdate }</td>
<td>${dto.nextsdate }</td>
<tr/>
</c:forEach>
</table>


