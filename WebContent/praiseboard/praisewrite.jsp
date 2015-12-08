<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <form action="/antman/praisepro.do" method="post">
    <table width="600" border="1">
    <tr>
    <td>아이디</td><td><input type="text" name="id"/></td></tr>
    <tr><td>칭찬직원</td><td><input type="text" name="pname"/></td></tr>
    <tr><td>글제목</td><td><input type="text" name="subject"/></td></tr>
    <tr><td>글내용</td><td><textarea name="content" rows="2" ROWS="5" COLS="40"/></textarea></td></tr>
    <tr><td colspan="2"><input type="submit" value="칭찬하기"/></td></tr>
    </table>
    </form>