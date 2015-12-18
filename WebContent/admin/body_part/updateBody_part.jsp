<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script lang="javascript" >
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="/antman/updateBodyPro.do" method="post" id="insertBody" >
<table width="350" border="1">
<tr>
<td colspan="2" align="center">신체부위 정보 수정</td>
</tr>
<tr>
<td width="150" align="center">신체부위 명</td>
<td width="200" align="center"><input type="text" id="body_part" name="name" size="20" maxlength="20" value="${dto.name }"/></td>
</tr>
<tr>
<td colspan="2">
<input type="hidden" name="bid" value="${dto.bid }" />
<input type="submit" value="수정" onClick="win_close()"/>
<input type="button" id="board" value="게시판" />
</td>
</tr>
</table>
</form>
</body>
</html>