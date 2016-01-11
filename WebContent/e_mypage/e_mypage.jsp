<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65); text-align:center; }
	#container .main td{padding:5px 5px 5px 5px; }
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>


<div id="side">
<jsp:include page="e_mypage_sidebar.jsp" flush="true | false"/>
</div>
</br></br>



<div id="container">
	<div class="main">
		<div id="title"><center><h2>의료진 스케줄 현황</h2></center></div><br/>




 
<table width="700" border="1" align="center">

<form action="/antman/e_mypage.do" method="post">  
<center>
  <input type="hidden" name="eid" value="${sessionScope.memeid }">
    <select name="drid">
	<c:forEach var="dto" items="${dlist}" >
	<option value="${dto.drId}">${dto.drname}</option>
	</c:forEach>	
</select>
<input type="submit" value="선생님선택">
</center>
</form><br/><br/>
		
        <c:if test="${empty slist}">
        <center><h2>현재 의료진 스케줄이 없습니다.</h2></center>
        </c:if>
          
        <c:if test="${!empty slist}" >
       
        <tr align="center">
		<th width="90">진료번호</th>
		<th width="110">진료선생님</th>
		<th width="110">진료과</th>
		<th width="80">진료환자</th>
		<th width="80">진료회차</th>
		<th width="160">진료스케쥴</th>
		</tr>
        
          
	
<c:forEach var="dto" items="${slist}">
		<tr align="center">
		<td>${dto.sid}</td>
		<td>${dto.drname}</td>
		<td>${dto.dpname}</td>
		<td>${dto.name}</td>
		<td>${dto.nextsdate}</td>
		<td>${dto.sdate}</td>
		</tr>
		</c:forEach>
</c:if>

   
</table>

</div></div>




