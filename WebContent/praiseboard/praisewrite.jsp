<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


 
    <table width="600" border="1">
    
        <tr><td>Ī���Ҽ�����</td><td>
        <form action="/antman/praisewrite.do" method="post">
    <select name="dpname">
	<c:forEach var="dto" items="${dplist}" >
	<option value="${dto.dpname }">${dto.dpname}</option>
	</c:forEach>
	</select><input type="submit" value="�����Ժ���">   
 	</form>

 
 <form action="/antman/praisewrite.do" method="post">  
 
    <select name="drname">
	<c:forEach var="dto" items="${drlist}" >
	<option value="${dto.drname }">${dto.drname}</option>
	</c:forEach>	
</select>
<input type="submit" value="�����Լ���">

</form>

 </td>
	<form action="/antman/praisepro.do" method="post">	
    <tr>
    <input type="text" name="drid" value=""
    <td>���̵�</td><td><input type="hidden" name="name" value="${sessionScope.memId }"/>${sessionScope.memId }</td></tr>
    
    <tr><td>�۾���</td><td><input type="hidden" name="name" value="${sessionScope.memname }"/>${sessionScope.memname }</td></tr>
    <tr><td>������</td><td><input type="text" name="subject"/></td></tr>
    <tr><td>������</td><td><input type="text" name="drname" value="${drname}"/></td></tr>
    </td></tr>
    <tr><td>�۳���</td><td><textarea name="content" rows="2" ROWS="5" COLS="40"/></textarea></td></tr>
    <tr><td colspan="2"><input type="submit" value="Ī���ϱ�"/><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseboard.do'">�������</button></td></tr>
    
   
    </table>
 