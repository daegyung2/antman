<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table width="1400" border="0">
<tr>
<td width="200">
<jsp:include page="p_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1200" align ="center">
<h2>나의 예약현황</h2>
<form action = "MyReservation.do" method="post"><br/>
    

<table width="700" border="1" align="center">
       
        <c:if test="${list == null }" >
        <h2>현재 예약한 사항이 없습니다.</h2>
        </c:if>
       
        <c:if test="${list != null }" >
        <c:forEach var="dto" items="${list}">
		
		<tr>
		     <td><h2>${dto.id}</h2></td>
			 <td><h2>${dto.name}</h2></td>
			 <td><h2>${dto.drname}</h2></td>
			 <td><h2>${dto.adate}</h2></td>
		</tr>

</c:forEach>
</c:if>

   
</table>
</form>


