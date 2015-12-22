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
<tr><td colspan="3">질병 카테고리  게시판</td></tr>
<tr><td width="150">질환 명</td><td width="100">상태</td><td width="100">비고</td></tr>
<c:forEach var="dto" items="${list }" >
<tr><td>${dto.de_catename }</td><td>${dto.status }</td>
<td>
<input type="button" value="수정" onClick="window.location='/antman/updateDe_cate.do?deid=${dto.deid }'" />
<input type="button" value="삭제" onClick="window.location='/antman/deleteDe_catePro.do?deid=${dto.deid}&de_catename=${dto.de_catename }'" />
</td></tr>
</c:forEach>
<tr><td colspan="3"><input type="button" value="등록" onClick="window.location='/antman/insertDe_cate.do'" /></td></tr>
</table>
</body>
</html>