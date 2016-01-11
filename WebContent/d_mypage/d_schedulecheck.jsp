<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }

	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#top{width:200px; float:top; margin-left:100px; }
	.container{width:1100px; height:1300px; margin:0 auto;  margin-left:230px; position:relative;}
	.container .sub{width:800px; height:50px; margin-left:80px; top:0px; position:relative;}
	.container .sub b{font-size:22px; color:#000000;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:30px; position:relative;}
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:-17px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>

<div id="side">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</div>


<div id="container">
	<div class="main">
		<div id="title"><h2>진료스케줄조회</h2></div>
		<form action = "/antman/schedulecheck.do" method="post">
<input type="text" name ="drid" value="${sessionScope.memdrid}">
<input type="hidden" name ="drname" value="${sessionScope.memname}">
<center>
<table width="450" border="1">
<tr align="center"><th>일별보기</th><th>검색</th><th>환자이름</th><th>검색</th><th>아이디</th><th>검색</th></tr>
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
SimpleDateFormat sdms = new SimpleDateFormat("yyyy-MM-dd");
Calendar cal = Calendar.getInstance();
String today = sdms.format(cal.getTime());
%>
<p>
<input type="text" id="sa_tourgodate" name="ymd" value="<%=today%>" size="6"/><%--value="" 안에 오늘 날짜가 표시되도록 코딩해야 함 : tourbackdate 계산 알고리즘을 응용할까?--%>
</p>
</body>
</html>
</td>
<td>
<input type="submit" value="보기"></td>
</form>

<td>
<form action = "/antman/schedulecheck.do" method="post">
<input type="text" name ="drid" value="${sessionScope.memdrid}">
<input type="hidden" name ="drname" value="${sessionScope.memname}">

<select name="name" >
<c:forEach var="dtos" items="${slist }">
<option value="${dtos.name}">${dtos.name}</option>

</c:forEach>
</select>

</td>
<td>
<input type="submit" value="보기"></td>
</form>

<td>
<form action = "/antman/schedulecheck.do" method="post">
<input type="text" name ="drid" value="${sessionScope.memdrid}">
<input type="hidden" name ="drname" value="${sessionScope.memname}">
<select name="id" >
<c:forEach var="dtoid" items="${slist }">
<option value="${dtoid.id}">${dtoid.id}</option>

</c:forEach>
</select>

</td>

<td>
<input type="submit" value="보기"></td></tr>

</form>
</table>
</center>
<br/>
<center>
<c:if test="${see == 1}">
의사시간이 중복됩니다. 다른시간을 선택해주십시오.
</c:if>
<c:if test="${see == 2}">
환자시간이 중복됩니다. 다른시간을 선택해주십시오.
</c:if>
</center>

<c:if test="${view eq yes}">
<center>
<table width="760" border="1">

<tr>

<th width="200">진료받을날짜</th>
<th width="100">회차</th>
<th width="70">아이디</th>
<th width="90">이름</th>
<th width="70">회차선택</th>
<th width="80">다음진료</th>
<th width="50">시간</th>
<th width="50">분</th>
<th width="50">등록</th>
</tr>
<tr>


<c:forEach var="dto" items="${aplist }" varStatus="status" >

<td>${dto.adate}</td>
<td>${dto.nextadate}</td>
<td>${dto.id}</td>
<td>${dto.name}

</td>
<td>
<script language="javascript">

function popup()
{
	var yn = window.confirm("회차진료를 등록하시겠습니까?");
	
	if(yn) {
		document.ggform.submit();
	}
	
  
  }
</script>
<form name="ggform" action = "/antman/nextscheduleupdate.do?" method="post">
<input type="hidden" name="aid" value="${dto.aid}">
<input type="hidden" name="id" value="${dto.id}">
<input type="hidden" name="nextadate" value="${dto.nextadate}">
<input type="hidden" name="name" value="${dto.name}">
<input type="hidden" name="drname" value="${dto.drname}">
<input type="hidden" name="dpname" value="${dto.dpname}">
<input type="hidden" name="jumin1" value="${dto.jumin1}">
<input type="hidden" name="jumin2" value="${dto.jumin2}">

<select name="nextdate" >
<option value="2차진료">2차진료</option>
<option>3차진료</option>
<option>4차진료</option>
</select>
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
   $("#sa_tourgodate${status.count}").datepicker({
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
String todays = sdm1.format(cal1.getTime());
%>
<p>
<input type="text" id="sa_tourgodate${status.count}" name="ymds" value="<%=todays%>" size="6"/><%--value="" 안에 오늘 날짜가 표시되도록 코딩해야 함 : tourbackdate 계산 알고리즘을 응용할까?--%>
</p>
</body>
</html>
</td>
<td><select name="hour" >
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
<select name="minute" >
<option value="00">00</option>
<option>10</option>
<option>20</option>
<option>30</option>
<option>40</option>
<option>50</option>
</td>
<td><input type="button" value="등록" onclick="javascript:popup();"></td>
</tr>

</c:forEach>
</table>
</center>
</form>
</td>
</tr>
</table>

</td>
</tr>


</table>
</c:if>

	</div>
</div>
