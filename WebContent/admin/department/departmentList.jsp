<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����� �Է� â</title>
</head>
<body>

<table width="700" border="1" cellpadding="1" cellspacing="0">
<c:forEach var="dto" items="${list }" >
<tr>

<td width="100">${dto.dpname }</td>
<td width="100">${dto.init }</td>
<td width="200">${dto.d_info1}</td>
<td width="300">
<input type="button" value="�����ϱ�" onClick="window.location='/antman/updateDepartment.do?depart_id=${dto.depart_id}'"/>
<input type="button" value="���뺸��" onClick="window.location='/antman/departmentContent.do?depart_id=${dto.depart_id}'" />
</td>
</tr>
</c:forEach>
<tr>
<td colspan="4">
<input type="button" value="����� �߰�" onClick="window.location='/antman/insertDepartment.do'" />
</td>
</tr>
</table>

</body>
</html>