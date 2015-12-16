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
<table border="1" cellpadding="0" cellspacing="0">
<tr>
<td colspan="2">
직원 정보 입력창입니다. *는 필수 입력 대상입니다.
</td>
</tr>
<form action="/antman/updateEmployeePro.do" method="post" enctype="multipart/form-data">
<tr>
<td>사번</td>
<td>${dto.eid }</td>
</tr>
<tr>
<td>
이름<font color="red">*</font>
</td>
<td>
<input type="text" name="name" size="10" maxlength="15" value="${dto.name}"/>
</td>
</tr>
<tr>
<td>
전공<font color="red">*</font>
</td>
<td>
<input type="text" name="major" size="10" maxlength="15" value="${dto.major }"/>
</td>
</tr>
<tr>
<td>
소속 진료과<font color="red">*</font>
</td>
<td>
<select name="dpname">
<c:forEach var="departDTO" items="${list }" >
<c:if test="${dto.dpname == departDTO.dpname }" >
<option selected value="${departDTO.dpname }">${departDTO.dpname }</option>
</c:if>
<c:if test="${dto.dpname != departDTO.dpname }">
<option>${departDTO.dpname }</option>
</c:if>
</c:forEach>
</select>
</td>
</tr>
<tr>
<td rowspan="5" align="center">사진 업로드</td>
<td><input type="file" name="emimg"  value="${dto.emimg1 }"/></td></tr>
<tr><td><input type="file" name="emimg" value="${dto.emimg2 }"/></td></tr>
<tr><td><input type="file" name="emimg" value="${dto.emimg3 }" /></td></tr>
<tr><td><input type="file" name="emimg" value="${dto.emimg4 }" /></td></tr>
<tr><td><input type="file" name="emimg" value="${dto.emimg5 }" /></td></tr>
<tr>
<td>직원 설명</td>
<td><textarea name="emdescription" rows="5" cols="30" >${dto.emdescription }</textarea></td>
</tr>
<tr>
<td colspan="2">
<input type="hidden" name="Eid" value="${dto.eid }" />
<input type="submit" value="수정완료" />
<input type="button" value="삭제하기" onClick="window.location='/antman/deleteEmployee.do?Eid=${dto.eid}'" />
<input type="button" value="직원게시판"  onClick="window.location='/antman/employeeList.do'" />
</td>
</tr>
</form>
</table>
</body>
</html>