<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <script language="JavaScript" type="text/javascript">
    <!--
    function openUpdate(name){
    	var value = document.getElementById('name').value;
    	if(value == 0){
    		alert("��� ��ȣ�� �����ϴ�.");
    		return;
    	}
        url = "updateBody_part.do?bid=" + value;
        
        open(url,"confirm","toolbar=no,location=no,status=no,width=300,height=200,menuber=no");
        }
    -->
    </script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ü���� ���</title>
</head>
<body>

<table border="1">
<tr><td>��ü ����</td><td>��Ÿ</td></tr>
<form name="update" action="/antman/updateBody_part.do" method="post">
<c:forEach var="dto" items="${list }" >
<tr><td>${dto.name }</td>
<td><input type="button" value="�����ϱ�" id="update" onClick="window.location='/antman/updateBody_part.do?bid=${dto.bid}'" />
<c:if test="${dto.name != '������' }" >
<input type="button" value="����" id="delete" onClick="window.location='/antman/deleteBody_part.do?bid=${dto.bid}'" />
</c:if>
</td></tr>
</c:forEach>
</form>
<tr>
<td colspan="2"><input type="button" value="�Է��ϱ�" onClick="window.location='/antman/insertBody_part.do'" />
</td>
</tr>
</table>

</body>
</html>