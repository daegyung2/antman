<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<body>
<c:choose>
	<c:when test="${check==1 }">
		<center><b><font color="red">이미 사용중인 아이디 입니다.</font></b></center>
	</c:when>
	<c:when test="${param.id eq null || param.id == ''}">
		<center><b>아이디를 입력하세요.</b></center>
	</c:when>
	<c:otherwise>
		<center>
		<b><font color="green">사용하실 수 있는 아이디 입니다.</font></b>
		</center>
	</c:otherwise>
</c:choose>
</body>
</html>