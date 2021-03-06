<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	#container{width:1100px; height:1212px; margin:0 auto;  margin-left:180px; position:relative;}
	#container .main{width:1000px; height:1000px; margin-left:50px; margin-top:-20px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65); text-align:center; }
	#container .main td{padding:5px 5px 5px 5px; text-align:center; }
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>


<div id="side">
<jsp:include page="p_mypage_sidebar.jsp" flush="true | false"/>
</div>
</br></br>

<div id="container">
	<div class="main">
		<div id="title"><h2>나의예약현황</h2></div>
	



<form action = "MyReservation.do" method="post"><br/>
    
<table width="600" border="1" align="center">
       
        <c:if test="${empty list}">
        <h2>현재 예약한 사항이 없습니다.</h2>
        </c:if>
        
       
        <tr align="center"> 
		<th>아이디</th>
		<th>이름</th>
		<th>의료진</th>
		<th>날짜</th>
		<th>진료회차</th>
		<th>취소</th>

		</tr>
	
       
        <c:if test="${!empty list}" >
        <c:forEach var="dto" items="${list}">

		<tr>
		     <td>${dto.id}</td>
			 <td>${dto.name}</td>
			 <td>${dto.drname}</td>
			 <td>${dto.adate}</td>
			 <td>${dto.nextadate}</td>
			 <td><input type="button" value="취소" onclick="javascript:window.location='/antman/deleteappoint.do?aid=${dto.aid}&id=${dto.id }&adate=${dto.adate }&nextadate=${dto.nextadate}'"> </td>



</c:forEach>
</c:if>

   
</table>
</form>
</div></div>



<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>


