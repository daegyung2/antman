<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<table width="1200" border="0">
<tr>
<td width="200">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1000" align="center">
<h2>������</h2>
<form action="d_resultpagepro.do" method="post">

<table width="600" border="1">
<tr>
<td width="200">�����Ϲ�ȣ</td><td width="400"><input type="text" value="mid"></td>
</tr>
<tr>
<td width="200">�ǻ��ȣ</td><td width="300"><input type="text" name="dreg_num" value=""></td>
</tr>
<tr>
<td width="200">ȯ��id</td><td width="300"><input type="text" name="id" value=""></td>
</tr>
<tr>
<td width="200">ȯ���̸�</td><td width="300"><input type="text" name="name" value=""></td>
</tr>
<tr>
<td width="200">�ֹι�ȣ</td><td width="300"><input type="text" name="jumin1" value="">-<input type="text" name="jumin2" value=""></td>
</tr>
<tr>
<td width="200">����</td><td width="300"><input type="text" name="age" value=""></td>
</tr>
<tr>
<td width="200">����</td><td width="300"><input type="text" name="gender" value=""></td>
</tr>
<tr>
<td width="200">����1</td><td width="300"><input type="text" name="syptom1" value=""></td>
</tr>
<tr>
<td width="200">����2</td><td width="300"><input type="text" name="syptom2" value=""></td>
</tr>
<tr>
<td width="200">����3</td><td width="300"><input type="text" name="syptom3" value=""></td>
</tr>
<tr>
<td width="200">����4</td><td width="300"><input type="text" name="syptom4" value=""></td>
</tr>
<tr>
<td width="200">��������</td><td width="300"><input type="text" name="treattype" value=""></td>
</tr>
<tr>
<td width="200">����Ϸ� ���� �ð�</td><td width="300"><input type="text" name="treatdate" value=""></td>
</tr>
<tr>
<td width="200">ó�����ø���</td><td width="300"><input type="file" name="prescription" value=""></td>
</tr>
<tr>
<td width="200">����Ȯ�μ��ø���</td><td width="300"><input type="file" name="treatConfirm" value=""></td>
</tr>

</table>
<input type="submit" value="����ϱ�">
</form>
   
   