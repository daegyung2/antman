<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    


<table width="1200" border="0">
<tr>
<td width="200">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1000" align ="center">
<h2>���ὺ������ȸ</h2><br/>
<form action = "/antman/schedulecheck.do" method="post">
<input type="hidden" name ="drid" value="${sessionScope.memdrid}">
<input type="hidden" name ="drname" value="${sessionScope.memname}">
<table width="300" border="1">
<tr align="center"><td>�Ϻ�����</td><td>�˻�</td><td>ȯ���̸�</td><td>���̵�</td><td>�˻�</td></tr>
<tr align="center"><td><%@ page import="java.util.Date"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Locale"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.sql.Timestamp"%>    

<html>
<head>

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script type="text/javascript">
$(function() {
   $("#sa_tourgodate").datepicker({
      dateFormat: 'yy-mm-dd',
      monthNamesShort: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'],
      dayNamesMin: ['��','��','ȭ','��','��','��','��'],
      changeMonth: true,         //�� ���� ����
      changeYear: true,         //�� ���� ����
      showMonthAfterYear: true,   //�� �ڿ� �� ǥ��

   });
});
</script>
</head>
<body>
<%
SimpleDateFormat sdms = new SimpleDateFormat("yyyy-MM-dd");
Calendar cal = Calendar.getInstance();
String today = sdms.format(cal.getTime());
%>
<p>
<input type="text" id="sa_tourgodate" name="ymd" value="<%=today%>" size="6"/><%--value="" �ȿ� ���� ��¥�� ǥ�õǵ��� �ڵ��ؾ� �� : tourbackdate ��� �˰����� �����ұ�?--%>
</p>
</body>
</html>
</td>
<td>
<input type="submit" value="����"></td><td>
</form>
<form action = "/antman/schedulecheck.do" method="post">
<input type="hidden" name ="drid" value="${sessionScope.memdrid}">
<input type="hidden" name ="drname" value="${sessionScope.memname}">
<select name="name" >
<c:forEach var="dtos" items="${slist }">
<option value="${dtos.name}">${dtos.name}</option>

</c:forEach>
</select>

</td>
<td>
<select name="id" >
<c:forEach var="dtoid" items="${slist }">
<option value="${dtoid.id}">${dtoid.id}</option>

</c:forEach>
</select>

</td>

<td>
<input type="submit" value="����"></td></tr>

</form>
</table>
<br/>
<c:if test="${view eq yes}">
<table width="690" border="1">

<tr>

<td width="150">���������¥</td>
<td width="70">ȸ��</td>
<td width="70">���̵�</td>
<td width="70">�̸�</td>
<td width="70">ȸ������</td>
<td width="100">�������ᳯ¥</td>
<td width="50">�ð�</td>
<td width="50">��</td>
<td width="30">���</td>
</tr>
<tr>
<form action = "/antman/schedulecheck" method="post">
<c:forEach var="dto" items="${aplist }">

<td>${dto.adate}</td>
<td>${dto.nextadate}</td>
<td>${dto.id}</td>
<td>${dto.name}
<input type="hidden" name="name" value="${dto.name}">
<input type="hidden" name="drname" value="${dto.drname}">
<input type="hidden" name="dpname" value="${dto.dpname}">
<input type="hidden" name="id" value="${dto.id}">
<input type="hidden" name="drid" value="${dto.drid}">
<input type="hidden" name="jumin1" value="${dto.jumin1}">
<input type="hidden" name="jumin2" value="${dto.jumin2}">
</td>

<td><select name="nextdate" >
<option value="2������">2������</option>
<option>3������</option>
<option>4������</option>
<option>5������</option>
<option>6������</option>
<option>7������</option>
<option>8������</option>
<option>9������</option>
<option>10������</option>
</td>

<td>

<%@ page import="java.util.Date"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Locale"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.sql.Timestamp"%>    

<html>
<head>

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script type="text/javascript">
$(function() {
   $("#sa_tourgodate").datepicker({
      dateFormat: 'yy-mm-dd',
      monthNamesShort: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'],
      dayNamesMin: ['��','��','ȭ','��','��','��','��'],
      changeMonth: true,         //�� ���� ����
      changeYear: true,         //�� ���� ����
      showMonthAfterYear: true,   //�� �ڿ� �� ǥ��

   });
});
</script>
</head>
<body>
<%
SimpleDateFormat sdm = new SimpleDateFormat("yyyy-MM-dd");
Calendar cals = Calendar.getInstance();
String todays = sdm.format(cals.getTime());
%>
<p>
<input type="text" id="sa_tourgodate" name="ymd" value="<%=todays%>" size="6"/><%--value="" �ȿ� ���� ��¥�� ǥ�õǵ��� �ڵ��ؾ� �� : tourbackdate ��� �˰����� �����ұ�?--%>
</p>
</body>
</html>

</td>
<td><select name="hour" >
<option value="1">9</option>
<option>10</option>
<option>11</option>
<option>12</option>
<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
<option>6</option>
<option>7</option>
<option>8</option></td>
<td>
<select name="minute" >
<option value="1">00</option>
<option>10</option>
<option>20</option>
<option>30</option>
<option>40</option>
<option>50</option>
</td>
<td><input type="submit" value=��� ></td>
</tr>
</c:forEach>
</table>
</form>
</td>
</tr>
</table>

</td>
</tr>


</table>
</c:if>

<c:if test="${view == null}">
�˻� ����� �����ϴ�.

</c:if>