<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="/antman/insertDepartPro.do" method="post" >
<table width="700" border="1" cellpadding="1" cellspacing="0">
<tr>
<td width="200">����� �̸�</td>
<td><input type="text" name="dpname" size="50" maxlength="30" /></td>
</tr>
<tr >
<td width="200">����� �̴ϼ�</td>
<td><input type="text" name="init" size="20" maxlength="20" /></td>
</tr>
<tr>
<td width="200">����� ����1</td>
<td><input type="text" name="d_info1" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����2</td>
<td><input type="text" name="d_info2" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����3</td>
<td><input type="text" name="d_info3" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����4</td>
<td><input type="text" name="d_info4" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����5</td>
<td><input type="text" name="d_info5" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����6</td>
<td><input type="text" name="d_info6" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����7</td>
<td><input type="text" name="d_info7" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����8</td>
<td><input type="text" name="d_info8" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����9</td>
<td><input type="text" name="d_info9" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����10</td>
<td><input type="text" name="d_info10" size="200" maxlength="200" /></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="���" />
<input type="reset" value="�ʱ�ȭ" />
<input type="button" value="����� �Խ���" onClick="window.location='/antman/departmentList.do'" />
</td>
</tr>
</table>
</form>
</body>
</html>