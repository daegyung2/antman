<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>진료과 입력 창</title>
</head>
<body>

<table width="700" border="0" cellpadding="1" cellspacing="0">
<c:forEach var="dto" items="${list }" >
<tr>
<td width="100">${list.depart_id}</td>
<td width="500">${list.dpname }</td>
<td width="100">${list.initial }</td>
</tr>
</c:forEach>
</table>
</body>
</html>