<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
   <link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
   function goDel(depart_id,dpname) {
	   var yn = window.confirm(dpname+"를 삭제합니까?");
	   
	   if(yn) {
	      location.href="/antman/deleteDepart.do?depart_id="+depart_id; 
	   }
	}
 </script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>진료과 입력 창</title>
</head>
<body>
<table width="900" border="1" cellpadding="1" cellspacing="0">
<tr>
<td align="center">진료과 이름</td>
<td align="center">진료과 이니셜</td>
<td align="center">진료과 정보</td>
<td align="center">비고</td>
</tr>

<c:forEach var="dto" items="${list }" >
<tr>

<td width="100">${dto.dpname }<input type="hidden" id="depart_id" value="${dto.depart_id }" /></td>
<td width="200">${dto.init }</td>
<td width="300">${dto.d_info1}</td>
<td width="300">
<input type="button" value="수정하기" id="update" onClick="window.location='/antman/updateDepartPro.do?depart_id=${dto.depart_id}'"/>
<input type="button" value="내용보기" id="content" onClick="window.location='/antman/departmentContent.do?depart_id=${dto.depart_id}'" />
<input type="button" value="삭제하기" id="delete" onClick="goDel(${dto.depart_id},${dto.dpname });" /> <!--  onClick="window.location='/antman/deleteDepart.do?depart_id=${dto.depart_id}'"-->
</td>
</tr>
</c:forEach>
<tr>
<td colspan="4">
<input type="button" value="진료과 추가" onClick="window.location='/antman/insertDepartment.do'" />
</td>
</tr>
</table>

</body>
</html>

