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
	<jsp:include page="/webservice/webtop.jsp" flush="true | false"/>
</div>

<!-- container ���� -->

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:-17px; position:relative}
	#container .main #title{width:800px; margin-left:-23px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>

<div id="side">
	<jsp:include page="appointmentsidebar.jsp" flush="true | false"/>
</div>

<div id="container">
	<div class="main">
		<div id="title">
<title>���Ό��</title>
<h2>���Ό��</h2>


<table width="800" border="1">
<tr>

<td width="400"><center><h3>������</h3>
���Ḧ ó�� ���ô� ���<br/>
����ó�� ���� �ֽø� ��� ��ȣ�簡 ��ȭ�� ���<br/>
������ ���͵帳�ϴ� <br/><br/>

<input type="button" value="�������ϱ�" onclick="location.href='appointmentsimpleform.do'"/><br/>

<!-- ù�湮�� �����ȣ �ȳ�
���庴�� 02-3010-0600
�Ϻ��� 02-3010-1300
��̺��� 02-3010-1230 --></center>
<br/>
</td>
<td width="400"><center><h3>�󼼿���</h3>
ȸ���� ���� ������ �� ���<br/>
�α��� �� ������ ���Ό�� �� ��ȸ��<br/>
�Ͻ� �� �ֽ��ϴ�.<br/><br/>

<c:if test="${sessionScope.memId eq null}"> 
<input type="button" value="���� �����ϱ�" onclick="location.href='loginForm.do'"/>
</c:if>

<c:if test="${sessionScope.memauth ne 'D' && sessionScope.memId ne null}"> 
<input type="button" value="���� �����ϱ�" onclick="location.href='appointmentform.do'"/>
</c:if>

<c:if test="${sessionScope.memId ne null }"> 
<input type="button" value="���� ���� ��ȸ�ϱ�"onclick="location.href='p_mypage.do'"/>
</c:if>
<br/>
<br/>
</td>

</center>



<center>
<table width="800" border="1">
<tr>
<h2>��ȭ���� 1688-7575</h2>&nbsp; ���ﺴ���� ����� ����� ���������� ���� ������ ���� �׻� ����ϰڽ��ϴ� <br/>
<td width="200">������Ʈ</td><td width="200">�Ƿ���/����� ����</td><td width="200">�ѷ�����</td><td width="200">���ô±�</td>
</center>
</table>


</div>
</div> --%>
