<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:50px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65); }
	#container .main td{padding:5px 5px 5px 5px; }
</style>

<div id="side">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</div>

<div id="container">
	<div class="main">
		<div id="title"><h2>������</h2></div>
		<form action="d_resultpagepro.do" method="post">
<center>
<table width="600" border="1">
<tr>
<th width="200">�����Ϲ�ȣ</th><td width="400"><input type="text" value="mid"></td>
</tr>
<tr>
<th width="200">�ǻ��ȣ</th><td width="300"><input type="text" name="dreg_num" value=""></td>
</tr>
<tr>
<th width="200">ȯ��id</th><td width="300"><input type="text" name="id" value=""></td>
</tr>
<tr>
<th width="200">ȯ���̸�</th><td width="300"><input type="text" name="name" value=""></td>
</tr>
<tr>
<th width="200">�ֹι�ȣ</th><td width="300"><input type="text" name="jumin1" value="">-<input type="text" name="jumin2" value=""></td>
</tr>
<tr>
<th width="200">����</th><td width="300"><input type="text" name="age" value=""></td>
</tr>
<tr>
<th width="200">����</th><td width="300"><input type="text" name="gender" value=""></td>
</tr>
<tr>
<th width="200">����1</th><td width="300"><input type="text" name="syptom1" value=""></td>
</tr>
<tr>
<th width="200">����2</th><td width="300"><input type="text" name="syptom2" value=""></td>
</tr>
<tr>
<th width="200">����3</th><td width="300"><input type="text" name="syptom3" value=""></td>
</tr>
<tr>
<th width="200">����4</th><td width="300"><input type="text" name="syptom4" value=""></td>
</tr>
<tr>
<th width="200">��������</th><td width="300"><input type="text" name="treattype" value=""></td>
</tr>
<tr>
<th width="200">����Ϸ� ���� �ð�</th><td width="300"><input type="text" name="treatdate" value=""></td>
</tr>
<tr>
<th width="200">ó�����ø���</th><td width="300"><input type="file" name="prescription" value=""></td>
</tr>
<tr>
<th width="200">����Ȯ�μ��ø���</th><td width="300"><input type="file" name="treatConfirm" value=""></td>
</tr>

</table>
<br/>
<input type="submit" value="����ϱ�">
</form>
 </center>  
	</div>
</div>


   
   