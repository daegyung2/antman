<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

        <form action="/antman/praisepro.do" method="post">
  
    <table width="600" border="1">
    <tr>
    <td>���̵�</td><td><input type="text" name="id"/></td></tr>
    <tr><td>Ī������</td><td><input type="text" name="pname"/></td></tr>
    <tr><td>������</td><td><input type="text" name="subject"/></td></tr>
    
    <tr><td>�۳���</td><td><textarea name="content" rows="2" ROWS="5" COLS="40"/></textarea></td></tr>
    <tr><td colspan="2"><input type="submit" value="�����ϱ�"/><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseboard.do'">�������</button></td></tr>
    
   
    </table>
    </form>