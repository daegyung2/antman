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
<form action="/antman/insertDe_catePro.do" method="post" >
<table border="1" cellpadding="0" cellspacing="0">
<tr>
<td>질병 카테고리 번호
</td>
<td>${deid }<input type="hidden" name="deid" value="${ deid}" />
</td>
</tr>
<tr>
<td>질병 카테고리	
</td>
<td>
<input type="text" name="de_catename" />
</td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="작성" />
</td>
</tr>
</table>
</form>
</body>
</html>