<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�ǻ����� �Է¶�</title>
</head>
<body>
<table>
<tr>
<td colspan="2" align="center">
<font size="3" color="orange" >�ǻ� ������ �Է��ϴ� ���Դϴ�. �� ���� �Է� ��Ź �帳�ϴ�. </font>
</td>
</tr>
<form action="/antman/insertDoctorPro.do" method="post" enctype="multipart/form-data" >
<tr>
<td>�ǻ� ����</td>
<td><input type="text" size="10" maxlength="15" name="drname"/></td>
</tr>
<tr>
<td>�ǻ� ��Ϲ�ȣ</td>
<td><input type="text" size="20" maxlength="30" name="dreg_num" /></td>
</tr>
<tr>
<td>���� ����</td>
<td ><input type="text" size="20" maxlength="30" name="major" /></td>
</tr>
<tr>
<td>�μ� ���̵�(����)</td>
<td ><select>
<c:forEach var="dto" items="${list}" >
<option>${dto.depart_id }</option>
</c:forEach>
</select></td>
</tr>
<tr>
<td>���� ���</td>
<td height="300">
<input type="text" size="50" maxlength="50" name="degree1" /><br />
<input type="text" size="50" maxlength="50" name="degree2" /><br />
<input type="text" size="50" maxlength="50" name="degree3" /><br />
<input type="text" size="50" maxlength="50" name="degree4" /><br />
<input type="text" size="50" maxlength="50" name="degree5" /><br />
</td>
</tr>
<tr>
<td>�� ���</td>
<td>
<input type="text" size="50" maxlength="50" name="report1" /><br />
<input type="text" size="50" maxlength="50" name="report2" /><br />
<input type="text" size="50" maxlength="50" name="report3" /><br />
<input type="text" size="50" maxlength="50" name="report4" /><br />
<input type="text" size="50" maxlength="50" name="report5" /><br />
</td>
</tr>
<tr>
<td>���� ���ε�</td>
<td>
<input type="file" size="50" name="drimg1" /> <br />
<input type="file" size="50" name="drimg2" /> <br />
<input type="file" size="50" name="drimg3" /> <br />
<input type="file" size="50" name="drimg4" /> <br />
<input type="file" size="50" name="drimg5" /> <br />
</td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="���" />
<input type="reset" value="�ٽ��ۼ�" />
<input type="button" value="��� �Խ���" onclick="window.location='/antman/doctorList.do'" />
</td>
</tr>
</form>
</table>

</body>
</html>