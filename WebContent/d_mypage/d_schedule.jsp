<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<h2>���ὺ������</h2>

<form action = "schedulepro.do" method="post"><br/>
<table width="600" border="1">
<tr><td>�ǻ�drid</td><td><input type="text" name="drid"></td></tr>
<tr><td>�ǻ��̸�</td><td><input type="text" name="drname"></td></tr>
<tr><td>������̸�</td><td><input type="text" name="dpname"></td></tr>
<tr><td>�⵵</td><td><input type="text" name="year"></td></tr>
<tr><td>��</td><td><input type="text" name="month"></td></tr>
<tr><td>��</td><td><input type="text" name="day"></td></tr>
<tr><td>�ð�</td><td> <input type="text" name="hour"></td></tr>
<tr><td>��</td><td><input type="text" name="minute"></td></tr>
</table>
<input type="submit" value="������ ���">
</form>