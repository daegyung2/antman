<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table>
<tr><td colspan="2" align="center">질병목록</td></tr>
<tr><td>질병 아이디</td><td>질병명</td></tr>
<c:forEach var="dto" items="${list }" >
<tr><td>${dto.decid }</td><td>${dto.dename }</td>
</tr>
</c:forEach>
<tr><td><input type="button" value="등록" onClick="window.location='/antman/insertDecease.do'" /></td></tr>
</table>
</body>
</html>