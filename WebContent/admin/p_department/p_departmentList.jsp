<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>부모 부서</title>
</head>
<body>
<table width="350" border="1" cellpadding="0" cellspacing="0" >
<table width="350" border="0">
<tr>
<td width="150">부모 진료과 이름</td>
<td width="200" align="center">비고</td>
</tr>
<c:forEach var="dto" items="${list }" >
<tr>
<td>${dto.p_dpname }</td>
<td>
<input type="button" value="수정하기" onclick="window.location='/antman/updateP_department.do?p_depart_id=${dto.p_depart_id}'" />
<input type="button" value="삭제하기" onclick="window.location='/antman/deleteP_department.do?p_depart_id=${dto.p_depart_id}'" />
</td>
</tr>
</c:forEach>
<tr><td colspan="2"><input type="button" value="등록하기" onClick="window.location='/antman/insertP_department.do'" /></td></tr>
</table>
</table>
</body>
</html>