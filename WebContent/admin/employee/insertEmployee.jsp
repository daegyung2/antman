<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ���� �Է�â</title>
</head>
<body>
<table border="1" cellpadding="0" cellspacing="0">
<tr>
<td colspan="2">
���� ���� �Է�â�Դϴ�. *�� �ʼ� �Է� ����Դϴ�.
</td>
</tr>
<form action="/antman/insertEmployeePro.do" method="post" enctype="multipart/form-data">
<tr>
<td>���</td>
<td>${emdto.eid }</td>
</tr>
<tr>
<td>
�̸�<font color="red">*</font>
</td>
<td>
<input type="text" name="name" size="10" maxlength="15" />
</td>
</tr>
<tr>
<td>
����<font color="red">*</font>
</td>
<td>
<input type="text" name="major" size="10" maxlength="15" />
</td>
</tr>
<tr>
<td>
�Ҽ� �����<font color="red">*</font>
</td>
<td>
<select multiple size="5" name="dpname">
<c:forEach var="dto" items="${list }" >
<option>${dto.dpname }</option>
</c:forEach>
</select>
</td>
</tr>
<tr>
<td rowspan="5" align="center">���� ���ε�</td>
<td><input type="file" name="emimg" /></td></tr>
<tr><td><input type="file" name="emimg" /></td></tr>
<tr><td><input type="file" name="emimg" /></td></tr>
<tr><td><input type="file" name="emimg" /></td></tr>
<tr><td><input type="file" name="emimg" /></td></tr>
<tr>
<td>���� ����</td>
<td><textarea name="emdescription" rows="5" cols="30" ></textarea></td>
</tr>
<tr>
<td colspan="2">
<input type="hidden" name="Eid" value="${emdto.eid }" />
<input type="submit" value="���� ���" />
<input type="reset" value="�ٽ��Է�" />
<input type="button" value="�����Խ���"  onClick="window.location='/antman/employeeList.do'" />
</td>
</tr>
</form>
</table>
</body>
</html>