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
<table width="900" border="1" cellpadding="0" cellspacing="0">
<tr>
<td width="150">���</td>
<td width="150">�̸�</td>
<td width="150">����</td>
<td width="150">�μ���</td>
<td width="200">���</td>
</tr>
<c:forEach var="dto" items="${list }">
<tr>
<td>${dto.eid }</td>
<td>${dto.name }</td>
<td>${dto.major }</td>
<td>${dto.dpname }</td>
<td>
<input type="button" value="�����ϱ�" onClick="window.location='/antman/updateEmployee.do?Eid=${dto.eid }'" />
<input type="button" value="����" onClick="window.location='/antman/deleteEmployee.do?Eid=${dto.eid}'" />
</td>
</tr>
</c:forEach>
<tr>
<td colspan="5">
<input type="button" value="����ϱ�" onClick="window.location='/antman/insertEmployee.do'" />
</td>
</tr>
</table>
</body>
</html>