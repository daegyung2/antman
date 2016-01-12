<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

전체예약자수
<table width="500" border="1">
<tr><td>전체예약수</td><td>1차진료수</td><td>2차진료수</td><td>3차진료수</td><td>4차진료수</td></tr>
<tr><td>${allcount }</td><td>${one }</td><td>${two }</td><td>${three }</td><td>${four }</td></tr>
</table>
<br/>
        <form action="/antman/appointinfo.do" method="post">
    <select name="dpname">
	<c:forEach var="dto" items="${dplist}" >
	<option value="${dto.dpname }">${dto.dpname}</option>
	</c:forEach>
	</select>&nbsp;&nbsp;<input type="submit" value="진료과별검색">   
 	</form>
 	
 	<br/>
 	

<table width="1000" border="1">
<tr>
<td>예약번호</td>
<td>이름</td>
<td>진료의사</td>
<td>예약날짜</td>
<td>진료과</td>
<td>차후진료</td>
</tr>

<tr>

<c:forEach var="adto" items="${alist}">
<td>${adto.aid }</td>
<td>${adto.name }</td>
<td>${adto.drname }</td>
<td>${adto.adate }</td>
<td>${adto.dpname }</td>
<td>${adto.nextadate }</td>
</tr>
</c:forEach>
</table>