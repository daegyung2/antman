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
<form action="/antman/updateDe_catePro.do" method="post" >
<table border="1" cellpadding="0" cellspacing="0">
<tr>
<td>���� ī�װ� ��ȣ
</td>
<td>${dto.deid }<input type="hidden" name="deid" value="${ dto.deid}" />
</td>
</tr>
<tr>
<td>���� ī�װ�	
</td>
<td>
<input type="text" name="de_catename" value="${dto.de_catename }"/>
</td>
</tr>
<tr>
<td>����</td>
<td><c:if test="${dto.status == null }" >${dto.status }</c:if>
<c:if test="${dto.status != null }" >
<input type="text" name="status" value="${dto.status }"/>
</c:if>
</td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="����" />
<input type="button" value="�Խ���" onclick="window.location='/antman/de_cateList.do'" />
</td>
</tr>
</table>
</form>
</body>
</html>