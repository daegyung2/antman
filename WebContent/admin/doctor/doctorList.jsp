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
<table width="1000" border="1" cellspacing="0" cellpadding="0">
<tr>
<td width="100">�ǻ� ���̵�</td>
<td width="100">�ǻ� �̸�</td>
<td width="200">�ǻ� ��Ϲ�ȣ</td>
<td width="150">����</td>
<td width="150">�μ� ���̵�</td>
<td width="300">���</td>
</tr>
<c:forEach var="dto" items="${list }">
<tr>
<td width="100">${dto.drId}</td>
<td width="100">${dto.drname }</td>
<td width="200">${dto.dreg_num }</td>
<td width="150">${dto.major }</td>
<td width="150">${dto.depart_id }&nbsp;${depart.dpname}</td>
<td width="300">
<input type="button" value="����" onClick="javascript:window.location='/antman/updateDoctor.do?drId=${dto.drId}'" />
<input type="button" value="���뺸��"  onClick="javascript:window.location='/antman/doctorContent.do?drId=${dto.drId}'" />
<input type="button" value="����" onClick="javascript:window.location='/antman/deleteDoctor.do?drId=${dto.drId}'" />
</tr>
</c:forEach>
<tr>
<td colspan="6" align="right">
<input type="button" value="����ϱ�" onClick="javascript:window.location='/antman/insertDoctor.do'" />
</td>
</tr>
</table>
</body>
</html>