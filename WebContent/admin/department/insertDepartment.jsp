<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="/antman/insertDepartPro.do" method="post" name="depart"  enctype="multipart/form-data">
<table width="700" border="1" cellpadding="1" cellspacing="0">
<tr>
<td width="200">�θ� �μ�</td>
<td width="500">
<select name="p_depart_id" >
<c:forEach var="dto" items="${list}" >
<option value="${dto.p_depart_id }">${dto.p_depart_id }</option>
</c:forEach>
<input type="button" value="����" />
<!-- <input type="text" size="10" maxlength="10" name="p_dpname" /> -->
</select>
</td>
</tr>
<tr>
<td width="200">����� �̸�</td>
<td width="500"><input type="text" name="dpname" /></td>
</tr>
<tr >
<td width="200">����� �̴ϼ�</td>
<td width="500"><input type="text" name="init" /></td>
</tr>
<tr>
<td width="200">����� ����</td>
<td><input type="file" size="50" name="upload" />
</td>
</tr>
<tr>
<td width="200">����� ����1</td>
<td width="500"><input type="text" name="d_info1"  /></td>
</tr>
<tr>
<td width="200">����� ����2</td>
<td width="500"><input type="text" name="d_info2"  /></td>
</tr>
<tr>
<td width="200">����� ����3</td>
<td width="500"><input type="text" name="d_info3" /></td>
</tr>
<tr>
<td width="200">����� ����4</td>
<td width="500"><input type="text" name="d_info4"  /></td>
</tr>
<tr>
<td width="200">����� ����5</td>
<td width="500"><input type="text" name="d_info5"  /></td>
</tr>
<tr>
<td width="200">����� ����6</td>
<td width="500"><input type="text" name="d_info6"  /></td>
</tr>
<tr>
<td width="200">����� ����7</td>
<td width="500"><input type="text" name="d_info7" /></td>
</tr>
<tr>
<td width="200">����� ����8</td>
<td width="500"><input type="text" name="d_info8" /></td>
</tr>
<tr>
<td width="200">����� ����9</td>
<td width="500"><input type="text" name="d_info9" /></td>
</tr>
<tr>
<td width="200">����� ����10</td>
<td width="500"><input type="text" name="d_info10" /></td>
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