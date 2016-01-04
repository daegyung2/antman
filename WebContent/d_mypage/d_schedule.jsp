<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:100px; position:relative}
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
		<div id="title"><h2>���ὺ���ٵ��</h2></div>
		<form action = "schedulepro.do" method="post"><br/>
		<table width="300" border="1" align="center">

		<input type="hidden" name="drid" value="${tdto.drid}">
		<input type="hidden" name="drname" value="${tdto.drname}">
		<input type="hidden" name="dpname" value="${ tdto.dpname}">

		<tr align="center"><th>��¥����</th><th>�ð�</th><th>��</th></tr>
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
		Calendar cal = Calendar.getInstance();
		String today = sdm.format(cal.getTime());
		%>
		<p>
		<input type="text" id="sa_tourgodate" name="ymd" value="<%=today%>" size="6"/><%--value="" �ȿ� ���� ��¥�� ǥ�õǵ��� �ڵ��ؾ� �� : tourbackdate ��� �˰����� �����ұ�?--%>
		</p>
		</body>
		</html>
		</td><td><select name="hour">
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
		<select name="minute">
		<option value="1">00</option>
		<option>10</option>
		<option>20</option>
		<option>30</option>
		<option>40</option>
		<option>50</option>
		</td></tr>
		</table>
		<center><input type="submit" value="������ ���"></center>
		</form>
		<center>
		<table width="680" border="1">
		<tr>
		<th width="90">�����ȣ</th>
		<th width="110">���ἱ����</th>
		<th width="110">�����</th>
		<th width="80">����ȯ��</th>
		<th width="80">����ȸ��</th>
		<th width="160">���ὺ����</th>
		<th width="50">���</th>
		</tr>
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
		</center>
	</div>
</div>


