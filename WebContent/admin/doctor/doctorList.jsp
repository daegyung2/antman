<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table>
<c:forEach var="dto" items="${list }">
<tr><td>${dto.did }</td></tr>
<tr><td>${dto.drname }</td></tr>
<tr><td>${dto.drname }</td></tr>
<tr><td>${dto.drname }</td></tr>
</c:forEach>
</table>
</body>
</html>