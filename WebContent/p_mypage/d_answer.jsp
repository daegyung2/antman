<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


    

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
			 <td><input type="button" name="answer" value="답변" onClick="javascript.location='"></td>
		</tr>

</c:forEach>
</c:if>

   
</table>