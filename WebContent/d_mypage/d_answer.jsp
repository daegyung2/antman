<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<table width="700" border="1" align="center">

       
        <c:if test="${list eq null }" >
        <h2>���� ������ ������ �����ϴ�.</h2>
        </c:if>
       
        <c:if test="${list ne null }" >
        <tr align="center">
		<td>�۹�ȣ</td>	
		<td>���̵�</td>
		<td>�̸�</td>
		<td>����</td>
		<td>�Ƿ���</td>
		<td>��۾���</td>
		
		</tr>

        <c:forEach var="dto" items="${list}">
		<tr align="center">
		<td><h2>${dto.qid }<input type="hidden"  name="qid" value="${dto.qid}"></h2>
		     <td><h2>${dto.id}</h2></td>
			 <td><h2>${dto.name}</h2></td>
			 <td><h2>${dto.content}</h2></td>
			 <td><h2>${dto.drname}</h2></td>
		       <input type="hidden"  name="drid" value="" >
      
			 <td><input type="button" value="���" onclick="javascript:window.location='/antman/MyQnA_Answer.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memdrname}&qid=${dto.qid}&id=${dto.id}&name=${dto.name}&content=${dto.content}&drname=${dto.drname}'"></td>
		</tr>
	
</c:forEach>
</c:if> 

<!--  <tr>
	<td colspan ="5">

		 <h2>�亯���</h2>


		<form action="/antman/MyQnA_Answer.do">
		<textarea size="50" rows="5" cols="50" name="answer"></textarea>
		&nbsp;<input type="submit" value="���">
		</form>
	</td>
	</tr>



   -->
   
</table>

