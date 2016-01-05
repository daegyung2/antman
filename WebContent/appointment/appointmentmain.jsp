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
	<jsp:include page="/treatmentteam/treatmentteamtop.jsp" flush="true | false"/>
</div>

<!-- container ���� -->
<div id="side">
	<jsp:include page="appointmentsidebar.jsp" flush="true | false"/>
</div>

<div class="container">
<center><title>���Ό��</title></center>
<center><h2>���Ό��</h2></center>

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
<c:if test="${sessionScope.memauth eq 'P'}"> 
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


</div>
</div>
