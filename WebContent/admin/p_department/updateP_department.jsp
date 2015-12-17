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
<tr>
<td>부모 부서를 수정합니다.</td>
</tr>
<form action="/antman/updateP_departPro.do" method="post" >
<tr>
<td>부서 번호</td>
<td>${dto.p_depart_id }
<input type="hidden" name="p_depart_id" value="${dto.p_depart_id }" />
</td>
</tr>
<tr>
<td width="150">부모 부서 수정
</td>
<td width="200"><input type="text" name="p_dpname" value="${dto.p_dpname }"/></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="수정완료" />
<input type="button" value="게시판" onClick="window.location='/antman/p_departmentList.do'" />
</td>
</tr>
</form>
</table>
</body>
</html>