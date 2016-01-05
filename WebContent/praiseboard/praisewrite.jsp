<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


 
    <table width="600" border="1">
    
        <tr><td>칭찬할선생님</td><td>
        <form action="/antman/praisewrite.do" method="post">
    <select name="dpname">
	<c:forEach var="dto" items="${dplist}" >
	<option value="${dto.dpname }">${dto.dpname}</option>
	</c:forEach>
	</select><input type="submit" value="선생님보기">   
 	</form>

 
 <form action="/antman/praisewrite.do" method="post">  
 
    <select name="drname">
	<c:forEach var="dto" items="${drlist}" >
	<option value="${dto.drname }">${dto.drname}</option>
	</c:forEach>	
</select>
<input type="submit" value="선생님선택">

</form>

 </td>
	<form action="/antman/praisepro.do" method="post">	
    <tr>
    <input type="text" name="drid" value=""
    <td>아이디</td><td><input type="hidden" name="name" value="${sessionScope.memId }"/>${sessionScope.memId }</td></tr>
    
    <tr><td>글쓴이</td><td><input type="hidden" name="name" value="${sessionScope.memname }"/>${sessionScope.memname }</td></tr>
    <tr><td>글제목</td><td><input type="text" name="subject"/></td></tr>
    <tr><td>선생님</td><td><input type="text" name="drname" value="${drname}"/></td></tr>
    </td></tr>
    <tr><td>글내용</td><td><textarea name="content" rows="2" ROWS="5" COLS="40"/></textarea></td></tr>
    <tr><td colspan="2"><input type="submit" value="칭찬하기"/><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseboard.do'">목록으로</button></td></tr>
    
   
    </table>
 