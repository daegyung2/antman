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
<td align="center" colspan="2">
        <!--<c:if test="${count > 0 }">
    	<c:set var="pageCount" value="${count/pageSize+(count%pageSize == 0 ? 0 : 1) }"/>
    	<c:set var="pageBlock" value="${10}"/>
    	
    	<fmt:parseNumber var="result" value="${currPage / 10 }" integerOnly="true"/>
    	<c:set var="startPage" value="${result * 10 + 1}" />
    	<c:set var="endPage" value="${startPage + pageBlock-1}" />
    	
    	<c:if test="${endPage > pageCount }">
    		<c:set var="endPage" value="${pageCount}"/>
    		</c:if>
    		
    		<c:if test="${StartPage >10 }">
    			<a href="/antman/body_partList.do?pageNum=${startPage -10 }">[Prev]</a>
    		</c:if>
    		
    		<c:forEach var="i" begin="${startPage }" end="${endPage }">
    			<a href="/antman/body_partList.do?pageNum=${i}">[${i}]]</a>
    		</c:forEach>
    		
    		<c:if test="${endPage < pageCount }">
    			<a href="/antman/body_partList.do?pageNum=${startPage + 10 }">[Next]</a>
    		</c:if>
    		
    		</c:if>-->
    		${pagingHtml }
</td>
</tr>
<tr>
<td colspan="2"><input type="button" value="�Է��ϱ�" onClick="window.location='/antman/insertBody_part.do'" />
</td>
</tr>
</table>

</body>
</html>