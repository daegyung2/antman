<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>





<table width="1400" border="0">
<tr>
<td width="200">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1200" align ="center">
<h2>���ὺ������</h2>
<form action = "schedulepro.do" method="post"><br/>
<table width="600" border="1">
<input type="hidden" name="drid" value="${tdto.drid}">
<input type="hidden" name="drname" value="${tdto.drname}">
<tr><td>������̸�</td><td><input type="text" name="dpname" value="${ tdto.dpname}"></td></tr>
<tr><td>�⵵</td><td><input type="text" name="year"></td></tr>
<tr><td>��</td><td><input type="text" name="month"></td></tr>
<tr><td>��</td><td><input type="text" name="day"></td></tr>
<tr><td>�ð�</td><td> <input type="text" name="hour"></td></tr>
<tr><td>��</td><td><input type="text" name="minute"></td></tr>
</table>
<input type="submit" value="������ ���">
</form>

<table width="700" border="1">
<tr><td width="100">�����ȣ</td>
<td width="100">���ἱ����</td>
<td width="100">�����</td>
<td width="100">����ȯ��</td>
<td width="100">����ȸ��</td>
<td width="200">���ὺ����</td>


<tr>
<c:forEach var="dto" items="${list}">
<td>${dto.sid}</td>
<td>${dto.drname}</td>
<td>${dto.dpname}</td>
<td>${dto.name}</td>
<td>${dto.nextsdate}</td>
<td>${dto.sdate}</td>
<td><input type="button" value="���" onclick="javascript:window.location='/antman/scheduledelete.do?sid=${dto.sid }&drid=${sessionScope.memdrid }'"></td>
</tr>
</c:forEach>

</table>


</td>
</tr>
</table>


