<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<body>
<c:choose>
	<c:when test="${check==1 }">
		<center><b><font color="red">�̹� ������� ���̵� �Դϴ�.</font></b></center>
	</c:when>
	<c:when test="${param.id eq null || param.id == ''}">
		<center><b>���̵� �Է��ϼ���.</b></center>
	</c:when>
	<c:otherwise>
		<center>
		<b><font color="green">����Ͻ� �� �ִ� ���̵� �Դϴ�.</font></b>
		</center>
	</c:otherwise>
</c:choose>
</body>
</html>