<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����� �󼼳���</title>
</head>
<body>
<table width="1000" border="1" cellpadding="1" cellspacing="0">
<tr>
<td width="200">�θ� �μ�</td>
<td>${dto.p_depart_id }.${pdto.p_dpname}</td>
</tr>
<tr>
<td width="200">����� �̸�</td>
<td>${dto.dpname }</td>
</tr>
<tr >
<td width="200">����� �̴ϼ�</td>
<td>${dto.init }</td>
</tr>
<tr>
<td width="200">����� ����1</td>
<td>${dto.d_info1 }</td>
</tr>
<tr>
<td width="200">����� ����2</td>
<td>${dto.d_info2 }</td>
</tr>
<tr>
<td width="200">����� ����3</td>
<td>${dto.d_info3 }</td>
</tr>
<tr>
<td width="200">����� ����4</td>
<td>${dto.d_info4 }</td>
</tr>
<tr>
<td width="200">����� ����5</td>
<td>${dto.d_info5 }</td>
</tr>
<tr>
<td width="200">����� ����6</td>
<td>${dto.d_info6 }</td>
</tr>
<tr>
<td width="200">����� ����7</td>
<td>${dto.d_info7 }</td>
</tr>
<tr>
<td width="200">����� ����8</td>
<td>${dto.d_info8 }</td>
</tr>
<tr>
<td width="200">����� ����9</td>
<td>${dto.d_info9}</td>
</tr>
<tr>
<td width="200">����� ����10</td>
<td>${dto.d_info10}</td>
</tr>
<tr>
<td colspan="2">
<input type="button" value="����� �Խ���" onClick="window.location='/antman/departmentList.do'" />
<input type="button" value="�����ϱ�" onClick="window.location='/antman/updateDepartment.do?depart_id=${dto.depart_id}'" />
<input type="button" value="�����ϱ�" onClick="window.location='/antman/deleteDepartment.do?depart_id=${dto.depart_id}'" />

</td>
</tr>
</table>

</body>
</html>