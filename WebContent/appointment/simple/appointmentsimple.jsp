<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


 <h2>ù�湮 �� ���� ���Ό�� ����</h2>
       
    <h4>�Ʒ� ������ �Է����ֽø�, ��� ��ȣ�簡 Ȯ�� �� ��� �ð����� ��ȭ�� ��� ������ ���͵帮�ڽ��ϴ�.</h4>
    <br/>
    
    <h5>���ð� : ���� 08:30 ~ 17:30 / ����� 08:30 ~ 12:30(������ ����)<br/>
�� ��� ��ȭ ���� 3ȸ �̻� ���� �� ������������ �ڵ����� ��� �ǿ���, ���� �����Ͽ� �ֽñ� �ٶ��ϴ�.</h5>
<br/>
<br/>
<center>
<form action="/antman/appointmentsimplepro.do" method="post">
<input type="text" name="jumin1" value="${jumin1 }"/>
<input type="text" name="jumin2" value="${jumin2 }"/>
<input type="text" name="name" value="${name}"/>
<table width="900" border="1">

<tr>
<td width="500">����</td><td width="400">"${name}"</td></tr>
<tr>
<td width="500">�޴���ȭ</td><td width="400">
<input type="text" name="phone1">-<input type="text" name="phone2">-<input type="text" name="phone3">
</td>
</tr>
<tr>
<td width="500">�ֿ�����</td><td width="400">
<TEXTAREA name="symptom" rows="5" cols="100">����</TEXTAREA><BR/>
* 0 byte / �ִ� 200 byte(�ѱ� 100��, ���� 200��)
</td>
</tr>
<tr>
<td width="500">����� ������</td><td width="400">
<TEXTAREA name="talk" rows="5" cols="100">����</TEXTAREA><BR/>
* 0 byte / �ִ� 200 byte(�ѱ� 100��, ���� 200��)
</td>
</tr>

</table>
<br/>

<input type="submit" value="Ȯ��"/><input type="button" value="���"/></center>


</form>