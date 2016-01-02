<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 

      <form action="/antman/mainboardupdatepro.do" method="post">
  <input type="hidden" name="MBid" value="${dto.MBid}">
  
    <table width="600" border="1">
   
    <tr>
    <tr><td>글제목</td><td><input type="text" name="subject" value="${dto.subject}"/></td></tr>
    <tr><td>글내용</td><td><textarea name="content" value="${dto.content}" rows="2" ROWS="5" COLS="40"/></textarea></td></tr>
    <tr><td colspan="2"><input type="submit" value="글 수정"/><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/spring/mainboard.do'">목록으로</button></td></tr>
    
   
    </table>
    </form>
    