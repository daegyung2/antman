<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
   <link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
   function goDel(depart_id,dpname) {
	   var yn = window.confirm(dpname+"�� �����մϱ�?");
	   
	   if(yn) {
	      location.href="/antman/deleteDepart.do?depart_id="+depart_id; 
	   }
	}
 </script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����� �Է� â</title>
</head>
<body>
<table width="900" border="1" cellpadding="1" cellspacing="0">
<tr>
<td align="center">����� �̸�</td>
<td align="center">����� �̴ϼ�</td>
<td align="center">����� ����</td>
<td align="center">���</td>
</tr>

<c:forEach var="dto" items="${list }" >
<tr>

<td width="100">${dto.dpname }<input type="hidden" id="depart_id" value="${dto.depart_id }" /></td>
<td width="200">${dto.init }</td>
<td width="300">${dto.d_info1}</td>
<td width="300">
<input type="button" value="�����ϱ�" id="update" onClick="window.location='/antman/updateDepartPro.do?depart_id=${dto.depart_id}'"/>
<input type="button" value="���뺸��" id="content" onClick="window.location='/antman/departmentContent.do?depart_id=${dto.depart_id}'" />
<input type="button" value="�����ϱ�" id="delete" onClick="goDel(${dto.depart_id},${dto.dpname });" /> <!--  onClick="window.location='/antman/deleteDepart.do?depart_id=${dto.depart_id}'"-->
</td>
</tr>
</c:forEach>
<tr>
<td colspan="4">
<input type="button" value="����� �߰�" onClick="window.location='/antman/insertDepartment.do'" />
</td>
</tr>
</table>

</body>
</html>

