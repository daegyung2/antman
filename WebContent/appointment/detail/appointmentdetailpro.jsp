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
	<jsp:include page="/appointment/appointmentsidebar.jsp" flush="true | false"/>
</div>

<div class="container">
<center><h2>������ �Ϸ�Ǿ����ϴ�.</h2>


<table width="1300" border="1">
<tr>
<td width="200">�����ȣ</td>
<td width="200">����id</td>
<td width="200">���༺��</td>
<td width="200">���������</td>
<td width="200">���༱����</td>
<td width="200">����ð�</td>
<td width="100">����ȸ��</td>
</tr>
<tr>
<c:forEach var="dto" items="${list}">
<td >${dto.aid }</td>
<td >${dto.id }</td>
<td >${dto.name }</td>
<td >${dto.dpname }</td>
<td >${dto.drname }</td>
<td >${dto.adate }</td>
<td >${dto.nextadate }</td></tr>
</c:forEach>

</table>
<input type="button" value="�������� ����" oncick="location.href='/antman/main.do'">
<input type="button" value="���������� ����" oncick="location.href='/antman/loginPro.do'">

</center>

</div>
</div>