<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����� �Է� â</title>
</head>
<body>
<c:if  test="${list==null}">
<font size="3" color="black">������� ����� �ֽʽÿ�</font>
</c:if>

<c:if test="${list!=null }">
<table width="700" border="0" cellpadding="1" cellspacing="0">
<c:forEach var="dto" items="${list }" >
<tr>
<td width="100">${dto.depart_id}</td>
<td width="500">${dto.dpname }</td>
<td width="100">${dto.initial }</td>
</tr>
</c:forEach>
<tr>
<td colspan="3">
<input type="button" value="����� �߰�" onClick="window.location='/antman/insertDepartment.do'" />
</td>
</tr>
</table>
</c:if>
</body>
</html>