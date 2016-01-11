<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="/antman/academyinsert.do" method="post"  enctype="multipart/form-data">
<table width="400" border="1">
<tr>
<td>학술행사제목</td><td colspan="3"><input type="text" name="assubject"></tr>

<tr>
<td colspan="4">모시는글</td></tr>
<tr><td colspan="4"><textarea name="ascontent" rows="5" cols="60" placeholder="내용을 입력하세요"></textarea></tr>

<tr>
<td>선생님</td><td colspan="3"><input type="text" name="drname" value="${sessionScope.memname}"><input type="text" name="drid" value="${sessionScope.memdrid}"></tr>
<tr>

<tr>
<td>학술행사시간</td><td><%@ page import="java.util.Date"%>
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
		</td><td><select name="hour">
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>
		<option value="13">1</option>
		<option value="14">2</option>
		<option value="15">3</option>
		<option value="16">4</option>
		<option value="17">5</option>
		<option value="18">6</option>
		<option value="19">7</option>
		<option value="20">8</option></td>
		<td>
		<select name="minute">
		<option value="00">00</option>
		<option>20</option>
		<option>40</option></td></tr>
		
		<tr>
<td>학술행사종료시간</td><td colspan="2"><select name="houre">
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>
		<option value="13">1</option>
		<option value="14">2</option>
		<option value="15">3</option>
		<option value="16">4</option>
		<option value="17">5</option>
		<option value="18">6</option>
		<option value="19">7</option>
		<option value="20">8</option></td>
		
		<td>
		<select name="minutee">
		<option value="00">00</option>
		<option>20</option>
		<option>40</option></td></tr>
		
		
		<tr>
		<td>안내이미지</td><td colspan="3"><input type="file" size="50" name="upload">
		</tr>
		
		<tr>
		<td>최대신청인원</td><td colspan="3"><select name="asmax">
		<option value="10">10</option>
		<option>20</option>
		<option>30</option>
		<option>40</option>
		<option>50</option>
</select></td></tr>
		
		<tr>
		<td >일정신청시작기간</td><td colspan="3"><%@ page import="java.util.Date"%>
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
   		$("#sa_tourgodate1").datepicker({
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
		SimpleDateFormat sdm1 = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal1 = Calendar.getInstance();
		String today1 = sdm1.format(cal1.getTime());
		%>
		<p>
		<input type="text" id="sa_tourgodate1" name="asstart" value="<%=today1%>" size="6"/><%--value="" 안에 오늘 날짜가 표시되도록 코딩해야 함 : tourbackdate 계산 알고리즘을 응용할까?--%>
		</p>
		</body>
		</html>
		</td></tr>
		
		<tr>
		<td >일정신청종료기간</td><td colspan="3"><%@ page import="java.util.Date"%>
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
   		$("#sa_tourgodate2").datepicker({
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
		SimpleDateFormat sdm2 = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal2 = Calendar.getInstance();
		String today2 = sdm2.format(cal2.getTime());
		%>
		<p>
		<input type="text" id="sa_tourgodate2" name="asend" value="<%=today2%>" size="6"/><%--value="" 안에 오늘 날짜가 표시되도록 코딩해야 함 : tourbackdate 계산 알고리즘을 응용할까?--%>
		</p>
		</body>
		</html>
		</td></tr>
		<tr>
		<td>장소</td><td colspan="3"><input type="text" name="place"></tr>
		<tr>
		<td>주최</td><td colspan="3"><input type="text" name="host"></tr>
		<tr>
		<td>강의신청대상</td><td colspan="3"><select name="auth">
		<option value="D">의사</option>
		<option value="E">직원</option>
		<option value="P">환자</option>
		<option value="ALL">상관없음</option></td></tr></tr>
		<tr>
		<td>등록방법</td><td colspan="3"><input type="text" name="register"></tr>
		<tr>

		<td>이메일</td><td colspan="3"><input type="text" name="asemail"></tr>
		
				<td>문의전화</td><td colspan="3"><input type="text" name="asphone"></tr>
				<tr>
	
</table>
<input type="submit" value="등록하기">
</form>