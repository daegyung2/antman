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

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<div id="side">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</div>

<div id="container">
	<div class="main">
		<div id="title"><h2>진료스케줄 등록/확인</h2></div>
		<form action = "schedulepro.do" method="post"><br/>
		<table width="300" border="1" align="center">

		<input type="hidden" name="drid" value="${tdto.drid}">
		<input type="hidden" name="drname" value="${tdto.drname}">
		<input type="hidden" name="dpname" value="${ tdto.dpname}">

		<tr align="center"><th>날짜선택</th><th>시간</th><th>분</th><th>스케쥴등록</th></tr>
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
		</td><td><select name="hour">
		<option value="9">9</option>
		<option>10</option>
		<option>11</option>
		<option>12</option>
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
		<option>40</option>
		
		</td>
		<td>
		<center><input type="submit" value="스케쥴 등록"></center></td></tr>
		</table>
		
		</form>
		
	
		<center>
		
		<h2>진료스케줄 월/일 확인</h2>
		<form action="/antman/scheduleform.do" method="post">
		<table table ="600" border="1">
					<input type="hidden" name="drid" value="${tdto.drid}">
		<input type="hidden" name="drname" value="${tdto.drname}">
		<input type="hidden" name="dpname" value="${ tdto.dpname}">

		<tr>
		 <th>년도선택 </th><th>월선택</th><th>일선택</th><th>스케쥴검색</th></tr>
		<tr><td><select name="year">
		<option >2016</option>
		<option >2017</option>
		<option>2018</option>
		<option>2019</option>
		<option>2020</option>
		</select>
		</td>
		
		<td><select name="month">
		<option value="01">1</option>
		<option value="02">2</option>
		<option value="03">3</option>
		<option value="04">4</option>
		<option value="05">5</option>
		<option value="06">6</option>
		<option value="07">7</option>
		<option value="08">8</option>
		<option value="09">9</option>
		<option>10</option>
		<option>11</option>
		<option>12</option>
		</select>
		</td>

		<td><select name="day">
		<option value="no">없음</option>
		<option value="01">1</option>
		<option value="02">2</option>
		<option value="03">3</option>
		<option value="04">4</option>
		<option value="05">5</option>
		<option value="06">6</option>
		<option value="07">7</option>
		<option value="08">8</option>
		<option value="09">9</option>
		<option>10</option>
		<option>11</option>
		<option>13</option>
		<option>14</option>
		<option>15</option>
		<option>16</option>
		<option>17</option>
		<option>18</option>
		<option>19</option>
		<option>20</option>
		<option>21</option>
		<option>22</option>
		<option>23</option>
		<option>24</option><option>25</option><option>26</option>
		<option>27</option><option>28</option><option>29</option>
		<option>30</option><option>31</option>
		</select>
		</td>

		
		<td><input type="submit" value="월/일검색"></td></tr>
		</table>
		</form>
		<br/>
			<c:if test="${joungbok ne null }">
		<center>중복된 날짜가 있습니다. 다른날짜를 선택하여 주십시오.</center>
		</c:if><br/>
		<table width="680" border="1">
		<tr>
		<th width="90">진료번호</th>
		<th width="110">진료선생님</th>
		<th width="110">진료과</th>
		<th width="80">진료환자</th>
		<th width="80">진료회차</th>
		<th width="160">진료스케쥴</th>
		<th width="50">취소</th>
		</tr>
		<tr>
		<c:forEach var="dto" items="${list}">
		<td>${dto.sid}</td>
		<td>${dto.drname}</td>
		<td>${dto.dpname}</td>
		<td>${dto.name}</td>
		<td>${dto.nextsdate}</td>
		<td>${dto.sdate}</td>
		<td><input type="button" value="취소" onclick="javascript:window.location='/antman/scheduledelete.do?sid=${dto.sid }&drid=${sessionScope.memdrid }&PageNum=${PageNum}'"></td>
		</tr>
		</c:forEach>
		</table>
		</center>
		<center>${pagingHtml}</center>
	
	</div>
</div>


