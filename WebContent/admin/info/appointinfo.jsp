<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

��ü�����ڼ�
<table width="500" border="1">
<tr><td>��ü�����</td><td>1�������</td><td>2�������</td><td>3�������</td><td>4�������</td></tr>
<tr><td>${allcount }</td><td>${one }</td><td>${two }</td><td>${three }</td><td>${four }</td></tr>
</table>
<br/>
        <form action="/antman/appointinfo.do" method="post">
    <select name="dpname">
	<c:forEach var="dto" items="${dplist}" >
	<option value="${dto.dpname }">${dto.dpname}</option>
	</c:forEach>
	</select>&nbsp;&nbsp;<input type="submit" value="��������˻�">   
 	</form>
 	
 	<br/>
 	

<table width="1000" border="1">
<tr>
<td>�����ȣ</td>
<td>�̸�</td>
<td>�����ǻ�</td>
<td>���೯¥</td>
<td>�����</td>
<td>��������</td>
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