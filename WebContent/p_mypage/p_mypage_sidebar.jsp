<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <table width="300" border="1">
<tr>
<td><center><h3>${sessionScope.memname}���� ����������</h3></center></td>
</tr>

<tr>
<tr>
<td><a href="/antman/p_mypage.do?id=${sessionScope.memId}"><center>���ǿ�����Ȳ</center></a></td>
</tr>
<tr>
<td><center>�������</center></a></td>
</tr>

<td><a href="/antman/dscheduleform.do"><center><center>ȯ������������ϱ�</center></a></td>
</tr>
<tr>
<td><a href="/antman/praiseboard.do"><center><center>Ī���ϱ�</center></a></td>
</tr>
<tr>
<td><a href="/antman/MyQnA.do?id=${sessionScope.memId}"><center><center>���ǻ��</center></a></td>
</tr>
<tr>
<td><a href="/antman/modifyForm.do"><center>ȸ����������</center></a></td>
</tr>
<tr>
<td><center>ȸ��Ż��</center></td>
</tr>

</table></html>