<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<title>����|�Ƿ���</title>


<h2>�Ƿ��� | ${dto.dpname}</h2>
<br/>
<br/>
<center><table width="900" border="1">
<td width="300"><center>${dto.drname} �Ƿ��� �Ұ�</center></td>
<td width="300"><center>���� ����� �Ƿ��� ��ü ����</center></td>
<td width="300"><center>��ü �Ƿ��� �˻�</center></td>
</table>
<br/>

<table width="900" border="1">
<tr>
<td width="400" height="400" rowspan="2"><img src="${dto.drimg1}" width="400" height="500"></td><td width="250"><img src="${dto.drimg2}" width="200" height="250"></td><td width="250"><img src="${dto.drimg3}" width="200" height="250"></td></tr>
<tr>
<td width="250" height="200"><center><h2>${dto.drname} </h2></center></td><td width="250"><img src="${dto.drimg4}" width="200" height="250"></td></tr>
<tr>
<td width="450"><h3>�����</h3>${dto.dpname}</td><td colspan="2">�����о�<br/>
${dto.exarea}</td></tr>
</table>

<br/>
<table width="900" border="1">
<td>�Ұ� | ���� | �з�/��� | ��к��� | �м�Ȱ�� | Ī���ڳ�</td>
</table>
<br/>
<h2>��������</h2>
<br/>
<table width="900" border="1">
<tr>
<td width="200" rowspan="2">�����</td><td width="300" rowspan="2">���᳻��</td><td width="200" rowspan="2">������</td><td width="200" colspan="2">����ð�</td></tr>
<tr>
<td width="100">����</td><td width="100">����</td>
</tr>
</table>
�ȳ�������ǰ�����Ŭ���� ȸ�� ���� ���� (�� 02)3010-3817)
<br/>
<br/>
<table width="900" border="1">
<tr>
<td width="300"><h2>�з�/���</h2></td><td width="600">[���] ${dto.degree1 } <br/>
[���] ${dto.degree2 }<br/>
[�з�] ${dto.degree3 }<br/>
[�з�] ${dto.degree4 }<br/>
[�з�] ${dto.degree5}
</td></tr>
<tr>
<td width="300"><h2>��к���</h2></td><td width="600">[�Ѱܷ�] ���� �� �κδ� ���塤���� ���赵�� ���<br/>
[MBC] �κδ� �Ͻɵ�ü? ��Ȱ������ �ƴ϶� "���� ��´�<br/>
</td></tr>
<tr>
<td width="300"><h2>Ī���ڳ�</h2></td><td width="600">Ī���ڳ� ��1�� Ī���Խ��Ǳ� ��������<br/>
</td></tr>
<tr>
<td width="300"><h2>�м�Ȱ��</h2></td><td width="600">
[��] ${dto.report1}<br/>
[��] ${dto.report2}<br/>
[��] ${dto.report3}<br/>
[��] ${dto.report4}<br/>
[��] ${dto.report5}<br/>
</td></tr>

</center>

