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
<table border="1" cellpadding="0" cellspacing="0">
<tr><td>질병 카테고리  게시판</td></tr>
<tr><td>질환 명</td></tr>
<c:forEach var="dto" items="${list }" >
<tr><td>${dto.de_catename }</td></tr>
</c:forEach>
<tr><td><input type="button" value="등록" onClick="window.location='/antman/insertDe_cate.do'" /></td></tr>
</table>
</body>
</html>