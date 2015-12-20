<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <form action="/antman/praisepro.do" method="post">
  
    <table width="600" border="1">
    <tr>
    <td>아이디</td><td><input type="text" name="id"/></td></tr>
    
    <tr><td>글쓴이</td><td><input type="text" name="name"/></td></tr>
    <tr><td>글제목</td><td><input type="text" name="subject"/></td></tr>
    
    <tr><td>칭찬할선생님</td><td>
    <select name="dpname">
<c:forEach var="dto" items="${dplist}" >
<option value="${dto.dpname}">${dto.dpname}</option>
</c:forEach>
</select>    
    

    
    </td></tr>
    <tr><td>글내용</td><td><textarea name="content" rows="2" ROWS="5" COLS="40"/></textarea></td></tr>
    <tr><td colspan="2"><input type="submit" value="칭찬하기"/><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseboard.do'">목록으로</button></td></tr>
    
   
    </table>
<c:forEach var="sdto" items="${dplist }">
	${sdto.dpname }
</c:forEach>
