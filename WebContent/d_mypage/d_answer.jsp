<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<table width="1400" border="0">
<tr>
<td width="200">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1200" align ="center">


<table width="700" border="1" align="center">
       
        <c:if test="${list == null }">
        <h2>���� ������ ������ �����ϴ�.</h2>
        </c:if>
        
       
        <tr align="center"> 
		<td>���̵�</td>
		<td>�̸�</td>
		<td>����</td>
		<td>�Ƿ���</td>
		<td>��۾���</td>
		
		</tr>

        <c:if test="${list == null }" >
        <h2>���� ������ ������ �����ϴ�.</h2>
        </c:if>
        
        <c:if test="${list != null }" >
        <c:forEach var="dto" items="${list}">
		<tr align="center">
		     <td><h2>${dto.id}</h2></td>
			 <td><h2>${dto.name}</h2></td>
			 <td><h2>${dto.content}</h2></td>
			 <td><h2>${dto.drname}</h2></td>
			 <td><input type="button" name="answer" value="���" onclick="javascript:window.location='/antman/p_mypage/MyQnA_Answer.jsp'"></td>
		</tr>

</c:forEach>
</c:if>
   
</table>

