<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    


<table width="1200" border="0">
<tr>
<td width="200">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1000" align ="center">
<h2>���ὺ������ȸ</h2>


<table width="1260" border="1">
<tr>

<td width="150">���������¥</td>
<td width="150">2�����ᳯ¥</td>
<td width="150">3�����ᳯ¥</td>
<td width="150">4�����ᳯ¥</td>
<td width="70">�̸�</td>
<td width="70">�����̸�</td>
<td width="50">id</td>
<td width="50">drid</td>
<td width="420">�������ᳯ¥</td>
</tr>
<tr>
<form action = "/antman/nextscheduleupdate.do" method="post">
<c:forEach var="dto" items="${aplist }">

<td>${dto.adate}</td>
<td>${dto.adate1}</td>
<td>${dto.adate2}</td>
<td>${dto.adate3}</td>
<td>${dto.name}</td>
<td><input type="text" name="drname" value="${dto.drname}" size="1"></td>
<td><input type="text" name="id" value="${dto.id}" size="1"></td>
<td><input type="text" name="drid" value="${dto.drid}" size="1"></td></td>


<td>

��<input type="text" name="year" size="1">
��<input type="text" name="month" size="1">
��<input type="text" name="day"  size="1">
�ð�<input type="text" name="hour" size="1">
��<input type="text" name="minute" size="1">
<input type="submit" value=��� ></td>
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