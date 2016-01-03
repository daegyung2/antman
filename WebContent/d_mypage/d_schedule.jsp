<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>





<table width="1400" border="0">
<tr>
<td width="200">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1200" align ="center">
<h2>진료스케쥴등록</h2>
<form action = "schedulepro.do" method="post"><br/>
<table width="200" border="1" align="center">

<input type="hidden" name="drid" value="${tdto.drid}">
<input type="hidden" name="drname" value="${tdto.drname}">
<input type="hidden" name="dpname" value="${ tdto.dpname}">

<tr align="center"><td>날짜선택</td><td>시간</td><td>분</td></tr>
<tr align="center"><td >
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
      monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
      dayNamesMin: ['일','월','화','수','목','금','토'],
      changeMonth: true,         //월 변경 가능
      changeYear: true,         //년 변경 가능
      showMonthAfterYear: true,   //년 뒤에 월 표시

   });
});
</script>
</head>
<body>
<%
SimpleDateFormat sdm = new SimpleDateFormat("yyyy-MM-dd");
Calendar cal = Calendar.getInstance();
String today = sdm.format(cal.getTime());
%>
<p>
<input type="text" id="sa_tourgodate" name="ymd" value="<%=today%>" size="6"/><%--value="" 안에 오늘 날짜가 표시되도록 코딩해야 함 : tourbackdate 계산 알고리즘을 응용할까?--%>
</p>
</body>
</html>
</td><td><select name="hour" >
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
</td></tr>
</table>
<input type="submit" value="스케쥴 등록">
</form>

<table width="610" border="1">
<tr><td width="80">진료번호</td>
<td width="100">진료선생님</td>
<td width="100">진료과</td>
<td width="70">진료환자</td>
<td width="70">진료회차</td>
<td width="150">진료스케쥴</td>
<td width="40">취소</td>

<tr>
<c:forEach var="dto" items="${list}">
<td>${dto.sid}</td>
<td>${dto.drname}</td>
<td>${dto.dpname}</td>
<td>${dto.name}</td>
<td>${dto.nextsdate}</td>
<td>${dto.sdate}</td>
<td><input type="button" value="취소" onclick="javascript:window.location='/antman/scheduledelete.do?sid=${dto.sid }&drid=${sessionScope.memdrid }'"></td>
</tr>
</c:forEach>

</table>


</td>
</tr>
</table>


