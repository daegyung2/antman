<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="310" border="1" cellpadding="0" cellspacing="0" >
<table width="300" border="0">
<tr><td>부모 진료과 이름</td></tr>
<c:forEach var="dto" items="${list }" >
<tr><td>${dto.p_dpname }</td></tr>
</c:forEach>
</table>
</table>
</body>
</html>