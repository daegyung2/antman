<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="700">
<tr><td width="100">�ǻ� ���̵�</td>
<td width="100">�ǻ� �̸�</td>
<td width="200">�ǻ� ��Ϲ�ȣ</td>
<td width="150">����</td>
<td width="150">�μ� ���̵�</td></tr>
<c:forEach var="dto" items="${list }">
<tr>
<td width="100">${dto.did }</td>
<td width="100">${dto.drname }</td>
<td width="200">${dto.dreg_num }</td>
<td width="150">${dto.major }</td>
<td width="150">${dto.depart_id }</td>
</tr>
</c:forEach>
<tr>
<td colspan="5">
<input type="button" value="����ϱ�" onClick="javascript:window.location='/antman/insertDoctor.do'" />
</td>
</tr>
</table>
</body>
</html>