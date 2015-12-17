<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="350">
<form action="/antman/insertP_departPro.do" method="post">
<tr>
<td width="150">부모 부서 등록
</td>
<td width="200"><input type="text" name="p_dpname" /></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="등록하기" />
<input type="button" value="게시판" onClick="window.location='/antman/p_departmentList.do'" />
</td>
</tr>
</form>
</table>
</body>
</html>