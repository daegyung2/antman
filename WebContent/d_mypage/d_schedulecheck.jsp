<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    


<table width="1200" border="0">
<tr>
<td width="200">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1000" align ="center">
<h2>진료스케쥴조회</h2>


<table width="890" border="1">
<tr>

<td width="150">진료받을날짜</td>
<td width="150">진료회차</td>
<td width="70">이름</td>
<td width="100">회차선택</td>
<td width="420">다음진료날짜</td>
</tr>
<tr>
<form action = "/antman/nextscheduleupdate.do" method="post">
<c:forEach var="dto" items="${aplist }">

<td>${dto.adate}</td>
<td>${dto.nextadate}</td>
<td>${dto.name}
<input type="hidden" name="name" value="${dto.name}">
<input type="text" name="drname" value="${dto.drname}">
<input type="text" name="dpname" value="${dto.dpname}">
<input type="text" name="id" value="${dto.id}">
<input type="text" name="drid" value="${dto.drid}">
<input type="text" name="jumin1" value="${dto.jumin1}">
<input type="text" name="jumin2" value="${dto.jumin2}">
</td>

<td><select name="nextdate" >
<option value="2차진료">2차진료</option>
<option>3차진료</option>
<option>4차진료</option>
<option>5차진료</option>
<option>6차진료</option>
<option>7차진료</option>
<option>8차진료</option>
<option>9차진료</option>
<option>10차진료</option>
</td>

<td>

년<input type="text" name="year" size="1">
월<input type="text" name="month" size="1">
일<input type="text" name="day"  size="1">
시간<input type="text" name="hour" size="1">
분<input type="text" name="minute" size="1">
<input type="submit" value=등록 ></td>
</tr>
</c:forEach>
</table>
</form>
</td>
</tr>
</table>

</td>
</tr>
</table>