<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }

	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#top{width:200px; float:top; margin-left:100px; }
	.container{width:1100px; height:1300px; margin:0 auto;  margin-left:230px; position:relative;}
	.container .sub{width:800px; height:50px; margin-left:80px; top:0px; position:relative;}
	.container .sub b{font-size:22px; color:#000000;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:30px; position:relative;}
</style>

<div id="menutop">
	<jsp:include page="treatmentteamtop.jsp" flush="true | false"/>
</div>

<!-- container ���� -->
<div id="side">
	<jsp:include page="treatmentsidebar.jsp" flush="true | false"/>
</div>

<div class="container">
<title>����|�Ƿ���</title>


<center><h2>�Ƿ��� | ${dpfdto.dpname}</h2></center>
<br/>
<br/>
<center><table width="750" border="1">
<td width="250"><center>${dpfdto.drname} �Ƿ��� �Ұ�</center></td>
<td width="250"><center>���� ����� �Ƿ��� ��ü ����</center></td>
<td width="250"><center>��ü �Ƿ��� �˻�</center></td>
</table>
<br/>

<table width="750" border="1">
<tr>
<td width="300" height="300" rowspan="2"><img src="${dpfdto.drimg1}" width="300" height="400"></td><td width="200"><img src="${dpfdto.drimg2}" width="200" height="250"></td><td width="200"><img src="${dpfdto.drimg3}" width="200" height="250"></td></tr>
<tr>
<td width="250" height="200"><center><h2>${dpfdto.drname} </h2></center></td><td width="250"><img src="${dpfdto.drimg4}" width="200" height="250"></td></tr>
<tr>
<td width="450"><h3>�����</h3>${dpfdto.dpname}</td><td colspan="2">�����о�<br/>
${dpfdto.exarea}</td></tr>
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
<td width="300"><h2>�з�/���</h2></td><td width="600">[���] ${dpfdto.degree1} <br/>
[���] ${dpfdto.degree2}<br/>
[�з�] ${dpfdto.degree3}<br/>
[�з�] ${dpfdto.degree4}<br/>
[�з�] ${dpfdto.degree5}
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
[��] ${dpfdto.report1}<br/>
[��] ${dpfdto.report2}<br/>
[��] ${dpfdto.report3}<br/>
[��] ${dpfdto.report4}<br/>
[��] ${dpfdto.report5}<br/>
</td></tr>

</center>

