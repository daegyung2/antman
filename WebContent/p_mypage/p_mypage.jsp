<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="p_mypage_sidebar.jsp" flush="true | false"/>

<table width="1400" border="0">
<tr>
<td width="200">

</td>


<td width="1200" align ="center">
<h2>���� ������Ȳ</h2>
<form action = "MyReservation.do" method="post"><br/>
    

<table width="700" border="1" align="center">
       
        <c:if test="${list == null }">
        <h2>���� ������ ������ �����ϴ�.</h2>
        </c:if>
        
       
        <tr align="center"> 
		<td>���̵�</td>
		<td>�̸�</td>
		<td>�Ƿ���</td>
		<td>��¥</td>
		</tr>
	
       
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


