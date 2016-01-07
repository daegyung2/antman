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

 <h2>ù�湮 �� ���� ���Ό�� ����</h2>
       
    <h4>�Ʒ� ������ �Է����ֽø�, ��� ��ȣ�簡 Ȯ�� �� ��� �ð����� ��ȭ�� ��� ������ ���͵帮�ڽ��ϴ�.</h4>
    <br/>
    
    <h5>���ð� : ���� 08:30 ~ 17:30 / ����� 08:30 ~ 12:30(������ ����)<br/>
�� ��� ��ȭ ���� 3ȸ �̻� ���� �� ������������ �ڵ����� ��� �ǿ���, ���� �����Ͽ� �ֽñ� �ٶ��ϴ�.</h5>
<br/>
<br/>
<center>
<form action="/antman/appointmentsimplepro.do" method="post">
<input type="hidden" name="jumin1" value="${jumin1 }"/>
<input type="hidden" name="jumin2" value="${jumin2 }"/>
<input type="hidden" name="name" value="${name}"/>
<table width="900" border="1">

<tr>
<td width="500">����</td><td width="400">${sessionScope.memname}</td></tr>
<tr>
<td width="500">�޴���ȭ</td><td width="400">
<input type="text" name="phone1">-<input type="text" name="phone2">-<input type="text" name="phone3">
</td>
</tr>
<tr>
<td width="500">�ֿ�����</td><td width="400">
<TEXTAREA name="symptom" rows="5" cols="100" placeholder="������ �Է����ּ���"></TEXTAREA><BR/>
* 0 byte / �ִ� 200 byte(�ѱ� 100��, ���� 200��)
</td>
</tr>
<tr>
<td width="500">����� ������</td><td width="400">
<TEXTAREA name="talk" rows="5" cols="100" placeholder="������������ �Է����ּ���" ></TEXTAREA><BR/>
* 0 byte / �ִ� 200 byte(�ѱ� 100��, ���� 200��)
</td>
</tr>

</table>
<br/>

<input type="submit" value="Ȯ��"/><input type="button" value="���"/></center>


</form>
</div>
