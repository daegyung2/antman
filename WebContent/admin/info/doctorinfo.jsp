<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


��ü������
<table width="500" border="1">
<tr><td>��ü�������</td><td>1�������</td><td>2�������</td><td>3�������</td><td>4�������</td></tr>
<tr><td>${allcount }</td><td>${one }</td><td>${two }</td><td>${three }</td><td>${four }</td></tr>
</table>
<br/>
<br/>
        <form action="/antman/appointinfo.do" method="post">
    <select name="dpname">
	<c:forEach var="dto" items="${dplist}" >
	<option value="${dto.dpname }">${dto.dpname}</option>
	</c:forEach>
	</select>&nbsp;&nbsp;<input type="submit" value="��������˻�">   
 	</form>
 	
 	<br/>


<c:if test="${!empty drlist}">
Ī���Ҽ�����
 <form action="/antman/praisewrite.do" method="post">  
 
    <select name="drId">
	<c:forEach var="dto" items="${drlist}" >
	<option value="${dto.drid }">${dto.drname}</option>
	</c:forEach>	
</select>&nbsp;&nbsp;<input type="submit" value="�����Լ���">

</form>
</c:if>


<table width="1000" border ="1">
<tr>
<td>�������ȣ</td>
<td>ȯ�ھ��̵�</td>
<td>ȯ���̸�</td>
<td>�������̸�</td>
<td>�����</td>
<td>������ð�</td>
<td>��������</td>
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


