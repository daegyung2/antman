<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <script lang="javascript">
    function openUpdate(){      
        url = "updateBody_part.do?bid=" + body.bid.value;
        
        open(url,"confirm","toolbar=no,location=no,status=no,width=300,height=200,menuber=no");
        }
    
    </script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ü���� ���</title>
</head>
<body>
<form id="body" >
<table border="1">
<tr><td>��ü ����</td><td>��Ÿ</td></tr>
<c:forEach var="dto" items="${list }" >
<tr><td>${dto.name }<input type="hidden" id="bid" name="bid" value="${dto.bid }" /></td>
<td><input type="button" value="�����ϱ�" id="update" onClick="openUpdate()" /></td></tr>
</c:forEach>
<tr>
<td colspan="2"><input type="button" value="�Է��ϱ�" onClick="window.location='/antman/insertBody_part.do'" />
</td>
</tr>
</table>
</form>
</body>
</html>