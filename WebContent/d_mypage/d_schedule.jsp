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
<tr><td>�ǻ�drid</td><td><input type="text" name="drid" value="${sessionScope.memdrid}"></td></tr>
<tr><td>�ǻ��̸�</td><td><input type="text" name="drname" value="${sessionScope.memname}"></td></tr>
<tr><td>������̸�</td><td><input type="text" name="dpname"></td></tr>
<tr><td>�⵵</td><td><input type="text" name="year"></td></tr>
<tr><td>��</td><td><input type="text" name="month"></td></tr>
<tr><td>��</td><td><input type="text" name="day"></td></tr>
<tr><td>�ð�</td><td> <input type="text" name="hour"></td></tr>
<tr><td>��</td><td><input type="text" name="minute"></td></tr>
</table>
<input type="submit" value="������ ���">
</form>

<table width="1050" border="1">
<tr><td width="100">�����ȣ</td>
<td width="100">���ἱ����</td>
<td width="150">�����</td>
<td width="200">���ὺ����</td>
<td width="200">2��������</td>
<td width="200">3��������</td>
<td width="200">4��������</td>
<tr>
<c:forEach var="dto" items="${list}">
<td>${dto.sid}</td>
<td>${dto.drname}</td>
<td>${dto.dpname}</td>
<td>${dto.sdate}</td>
<td>${dto.sdate1}</td>
<td>${dto.sdate2}</td>
<td>${dto.sdate3}</td>
</tr>
</c:forEach>
</table>


</td>
</tr>
</table>


