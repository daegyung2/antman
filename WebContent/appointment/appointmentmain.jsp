<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>���Ό��</title>

<h2>���Ό��</h2>

<center>
<table width="800" border="1">
<tr>
<td width="400"><center><h3>������</h3><br/>
���Ḧ ó�� ���ô� ���<br/>
����ó�� ���� �ֽø� ��� ��ȣ�簡 ��ȭ�� ���<br/>
������ ���͵帳�ϴ� <br/>
<input type="button" value="�������ϱ�" onclick="location.href='appointmentsimpleform.do'"/><br/>
ù�湮�� �����ȣ �ȳ�
���庴�� 02-3010-0600
�Ϻ��� 02-3010-1300
��̺��� 02-3010-1230</center>
</td>
<td width="300"><center><h3>�󼼿���</h3><br/>
ȸ���� ���� ������ �� ���<br/>
�α��� �� ������ ���Ό�� �� ��ȸ��<br/>
�Ͻ� �� �ֽ��ϴ�.<br/>
${ sessionScope.memId}
<c:if test="${sessionScope.memId == null }"> 
<input type="button" value="���� �����ϱ�" onclick="location.href='loginform.do'"/>
</c:if>
<c:if test="${sessionScope.memId != null }"> 
<input type="button" value="���� �����ϱ�" onclick="location.href='appointmentform.do'"/>
</c:if>
<input type="button" value="���� ���� ��ȸ�ϱ�"/>
</td></center>


<h2>��ȭ���� 1688-7575</h2>&nbsp; ���ﺴ���� ����� ����� ���������� ���� ������ ���� �׻� ����ϰڽ��ϴ�
<center>
<table width="800" border="1">
<tr>
<td width="200">������Ʈ</td><td width="200">�Ƿ���/����� ����</td><td width="200">�ѷ�����</td><td width="200">���ô±�</td>
</center>
</table>

