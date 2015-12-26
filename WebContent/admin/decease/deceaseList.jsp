<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
A{text-decoration: none;}
</style>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1" cellpadding="0" cellspacing="0">
<tr><td colspan="2" align="center">질병목록</td></tr>
<tr><td align="center">질병 아이디</td><td align="center">질병명</td></tr>
<c:forEach var="dto" items="${list }" >
<tr><td align="center">${dto.decid }</td><td align="center"><a href="/antman/deceaseContent.do?decid=${dto.decid }" ><strong>${dto.dename }</strong></a></td>
</tr>
</c:forEach>
<tr><td colspan="2"><input type="button" value="등록" onClick="window.location='/antman/insertDecease.do'" /></td></tr>
</table>
</body>
</html>