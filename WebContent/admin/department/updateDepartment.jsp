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

<form action="/antman/updateDepartform.do" method="post" >
<table width="1000" border="1" cellpadding="1" cellspacing="0">
<tr>
<td>부모 부서</td>
<td>
<select name="p_depart_id" >
<c:forEach var="dto" items="${list }">
<option>${dto.p_depart_id }</option>
</c:forEach>
</select>
${pdto.p_dpname}
</td>
</tr>
<tr>
<td width="200">진료과 이름</td>
<td><input type="text" name="dpname" size="50" maxlength="30" value="${dto.dpname }" /></td>
</tr>
<tr >
<td width="200">진료과 이니셜</td>
<td><input type="text" name="init" size="20" maxlength="20" value="${dto.init }"/></td>
</tr>
<td width="200">진료과 사진</td>
<td><input type="file" size="50" name="upload" />
</td>
</tr>
<tr>
<td width="200">진료과 정보1</td>
<td><input type="text" name="d_info1" size="100" maxlength="100" value="${dto.d_info1 }"/></td>
</tr>
<tr>
<td width="200">진료과 정보2</td>
<td><input type="text" name="d_info2" size="100" maxlength="100" value="${dto.d_info2 }"/></td>
</tr>
<tr>
<td width="200">진료과 정보3</td>
<td><input type="text" name="d_info3" size="100" maxlength="100" value="${dto.d_info3 }"/></td>
</tr>
<tr>
<td width="200">진료과 정보4</td>
<td><input type="text" name="d_info4" size="100" maxlength="100" value="${dto.d_info4 }"/></td>
</tr>
<tr>
<td width="200">진료과 정보5</td>
<td><input type="text" name="d_info5" size="100" maxlength="100" value="${dto.d_info5 }"/></td>
</tr>
<tr>
<td width="200">진료과 정보6</td>
<td><input type="text" name="d_info6" size="100" maxlength="100" value="${dto.d_info6 }"/></td>
</tr>
<tr>
<td width="200">진료과 정보7</td>
<td><input type="text" name="d_info7" size="100" maxlength="100" value="${dto.d_info7 }"/></td>
</tr>
<tr>
<td width="200">진료과 정보8</td>
<td><input type="text" name="d_info8" size="100" maxlength="100" value="${dto.d_info8 }"/></td>
</tr>
<tr>
<td width="200">진료과 정보9</td>
<td><input type="text" name="d_info9" size="100" maxlength="100" value="${dto.d_info9 }"/></td>
</tr>
<tr>
<td width="200">진료과 정보10</td>
<td><input type="text" name="d_info10" size="100" maxlength="100" value="${dto.d_info10 }"/></td>
</tr>
<tr>
<td colspan="2">
<input type="hidden" value="${dto.depart_id }" name="depart_id" />
<input type="submit" value="수정완료" />
<input type="reset" value="초기화" />
<input type="button" value="진료과 게시판" onClick="window.location='/antman/departmentList.do'" />
</td>
</tr>
</table>
</form>
</body>
</html>