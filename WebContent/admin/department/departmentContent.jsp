<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>진료과 상세내용</title>
</head>
<body>
<table width="1000" border="1" cellpadding="1" cellspacing="0">
<tr>
<td width="200">진료과 이름</td>
<td>${dto.dpname }</td>
</tr>
<tr >
<td width="200">진료과 이니셜</td>
<td>${dto.init }</td>
</tr>
<tr>
<td width="200">진료과 정보1</td>
<td>${dto.d_info1 }</td>
</tr>
<tr>
<td width="200">진료과 정보2</td>
<td>${dto.d_info2 }</td>
</tr>
<tr>
<td width="200">진료과 정보3</td>
<td>${dto.d_info3 }</td>
</tr>
<tr>
<td width="200">진료과 정보4</td>
<td>${dto.d_info4 }</td>
</tr>
<tr>
<td width="200">진료과 정보5</td>
<td>${dto.d_info5 }</td>
</tr>
<tr>
<td width="200">진료과 정보6</td>
<td>${dto.d_info6 }</td>
</tr>
<tr>
<td width="200">진료과 정보7</td>
<td>${dto.d_info7 }</td>
</tr>
<tr>
<td width="200">진료과 정보8</td>
<td>${dto.d_info8 }</td>
</tr>
<tr>
<td width="200">진료과 정보9</td>
<td>${dto.d_info9}</td>
</tr>
<tr>
<td width="200">진료과 정보10</td>
<td>${dto.d_info10}</td>
</tr>
<tr>
<td colspan="2">
<input type="button" value="진료과 게시판" onClick="window.location='/antman/departmentList.do'" />
</td>
</tr>
</table>

</body>
</html>