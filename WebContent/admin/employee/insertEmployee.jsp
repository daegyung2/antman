<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>직원 정보 입력창</title>
</head>
<body>
<table>
<tr>
<td colspan="2">
직원 정보 입력창입니다. *는 필수 입력 대상입니다.
</td>
</tr>
<form action="/antman/insertEmployeePro.do" method="post" >
<tr>
<td>
이름<font color="red">*</font>
</td>
<td>
<input type="text" name="name" size="10" maxlength="15" />
</td>
</tr>
<tr>
<td>
전공<font color="red">*</font>
</td>
<td>
<input type="text" name="major" size="10" maxlength="15" />
</td>
</tr>
<tr>
<td>
소속 진료과<font color="red">*</font>
</td>
<td>
<select multiple size="5" name="dpname">
<c:forEach var="dto" items="${list }" >
<option>${dto.dpname }</option>
</c:forEach>
</select>
</td>
</tr>
<tr>
<td colspan="2">
<input type="hidden" name="Eid" value="${Eid }" />
<input type="submit" value="직원 등록" />
<input type="reset" value="다시입력" />
</td>
</tr>
</form>
</table>
</body>
</html>