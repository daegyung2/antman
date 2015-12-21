<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <form action="/antman/praiseupdatepro.do" method="post">
  
    <table width="600" border="1">
    <tr>
    <input type="text" name="pid" value="${dto.pid}"/></td></tr>
    <td>아이디</td><td><input name="id" value="${dto.id}"/></td></tr>
    <tr><td>글쓴이</td><td><input name="name" value="${dto.name}"/></td></tr>
    <tr><td>글제목</td><td><input type="text" name="subject" value="${dto.subject}"/></td></tr>
    <tr><td>칭찬할선생님</td><td><input type="text" name="drname" value="${dto.drname}"/></td></tr>
    <tr><td>글내용</td><td><textarea name="content" rows="2" ROWS="5" COLS="40"/>${dto.content}</textarea></td></tr>
    <tr><td colspan="2"><input type="submit" value="수정하기"/>
    <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseboard.do'">목록으로</button></td></tr>
    
   
    </table>