<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>





<table width="1400" border="0">
<tr>
<td width="200">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1200" align ="center">
<h2>진료스케쥴등록</h2>
<form action = "schedulepro.do" method="post"><br/>
<table width="600" border="1">
<tr><td>의사drid</td><td><input type="text" name="drid" value="${sessionScope.memdrid}"></td></tr>
<tr><td>의사이름</td><td><input type="text" name="drname" value="${sessionScope.memname}"></td></tr>
<tr><td>진료과이름</td><td><input type="text" name="dpname"></td></tr>
<tr><td>년도</td><td><input type="text" name="year"></td></tr>
<tr><td>월</td><td><input type="text" name="month"></td></tr>
<tr><td>일</td><td><input type="text" name="day"></td></tr>
<tr><td>시간</td><td> <input type="text" name="hour"></td></tr>
<tr><td>분</td><td><input type="text" name="minute"></td></tr>
</table>
<input type="submit" value="스케쥴 등록">
</form>

<table width="1050" border="1">
<tr><td width="100">진료번호</td>
<td width="100">진료선생님</td>
<td width="150">진료과</td>
<td width="200">진료스케쥴</td>
<td width="200">2차스케쥴</td>
<td width="200">3차스케쥴</td>
<td width="200">4차스케쥴</td>
<tr>
<c:forEach var="dto" items="${list}">
<td>${dto.sid}</td>
<td>${dto.drname}</td>
<td>${dto.dpname}</td>
<td>${dto.sdate}</td>
<td>${dto.sdate1}</td>
<td>${dto.sdate2}</td>
<td>${dto.sdate3}</td>
</tr>
</c:forEach>
</table>


</td>
</tr>
</table>


