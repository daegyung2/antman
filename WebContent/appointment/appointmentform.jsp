<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<h2>���ο����ϱ�</h2>
<h3>������� ȯ�� ID�� �����ϼž� ���Ḧ ������ �� �ֽ��ϴ�.</h3>
<br/>

<form action="/antman/appointmentaction.do" method="post">
<table width="1000" border="1" />
<tr>
<td>���̵�</td><td><input type="text" name="id"/></td>
</tr>
<tr>
<td>�̸�</td><td><input type="text" name="name"/>&nbsp&nbsp|&nbsp ȯ�ڸ�:��¼��</td>
</tr>
<tr><td>�����ȣ</td><td>�����ڹ�ȣ</td></tr>
<tr><td>�޴���ȭ</td><td><input type="text" name="phone"/></td></tr>
<tr><td>�̸���</td><td><input type="text" name="email"/>@<input type="text" name="email">
</td>
</tr>
</table>
<br/>
<INPUT type=checkbox name="agree" value="yes">�������� ���� �� ���Ό�� �Ϸ� �� ������ ������ �����˴ϴ�.<input type="button" value="����" onclick="javascript:window.location='/antman/appointmentselect'"/>

<br/>
<br/>

<table width="1000" border="1">
<tr><td heght="50"><center>�������а�</center></td></tr>

</table>
<br/>
