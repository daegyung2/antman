<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }
	table{border:1px solid #BDBDBD; ce}

	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	.container{width:1100px; height:1130px; margin:0 auto;  margin-left:190px; position:relative;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:0px; position:relative;}
	.container .main .dprofile{margin-left:100px; width:900px; border:1px solid #BDBDBD; border-top:2px solid #5586EB; border-collapse:collapse;}
	.container .main .dprofile th{text-align:center; padding:5px 0; color:#5586EB; background:rgba(233,233,233,0.65);}
	.container .main .dprofile td{padding:5px 0 5px 10px;}
	
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container ���� -->
<div id="side">
	<jsp:include page="treatmentsidebar.jsp" flush="true | false"/>
</div>

<div class="container">
	<div class="main">
		<center><h2>${dpfdto.drname}  | ${dpfdto.dpname}</h2></center>
		<br/>

		<center>
		<table width="800" border="1" class="dprofile">
			<tr>
			<td width="300" height="300" rowspan="2"><img src="${dpfdto.drimg1}" width="300" height="400"></td><td width="200"><img src="${dpfdto.drimg2}" width="200" height="250"></td><td width="200"><img src="${dpfdto.drimg3}" width="200" height="250"></td></tr>
			<tr>
			<td width="250" height="200"><center><h2>${dpfdto.drname} </h2></center></td><td width="250"><img src="${dpfdto.drimg4}" width="200" height="250"></td></tr>
			<tr>
			<td width="450"><h3>�����</h3>${dpfdto.dpname}</td><td colspan="2">�����о�<br/>
			${dpfdto.exarea}</td></tr>
		</table>

		<br/>
		<br/>
		<br/>
		<table width="800" border="1" class="dprofile">
			<tr>
			<th width="200"><h2>�з�/���</h2></th><td width="600">[���] ${dpfdto.degree1} <br/>
			[���] ${dpfdto.degree2}<br/>
			[�з�] ${dpfdto.degree3}<br/>
			[�з�] ${dpfdto.degree4}<br/>
			[�з�] ${dpfdto.degree5}
			</td></tr>

			<th width="200"><h2>Ī���ڳ�</h2></th><td width="600">Ī���ڳ� ��1�� Ī���Խ��Ǳ� ��������<br/>
			</td></tr>
			<tr>
			<th width="200"><h2>�м�Ȱ��</h2></th><td width="600">
			[��] ${dpfdto.report1}<br/>
			[��] ${dpfdto.report2}<br/>
			[��] ${dpfdto.report3}<br/>
			[��] ${dpfdto.report4}<br/>
			[��] ${dpfdto.report5}<br/>
			</td></tr>
		</table>
	</div>
</div>

<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>

