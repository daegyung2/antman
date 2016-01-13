<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	#container{width:1100px; height:1241px; margin:0 auto;  margin-left:170px; margin-top:-50px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:0px; position:relative}
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
		<div id="title"><center><h2>간편예약현황</h2></center></div>


<table width="700" border="1" align="center">
		
        <c:if test="${list == null }">
        <h2>현재 간편예약이 없습니다.</h2>
        </c:if>
          
        <c:if test="${list != null }" >
        <tr>
        <th>글번호</th>
        <th>아이디</th>
        <th>이름</th>
        <th>날짜</th>
        <th>증상</th>
        <th>휴대폰</th>
        
        </tr>
    
	
<c:forEach var="dto" items="${list}">
		<td>${dto.aid}</td>
		<td>${dto.id}</td>
		<td>${dto.name}</td>
		<td>${dto.adate}</td>
		<td>${dto.symptom}</td>
		<td>${dto.phone1} - ${dto.phone2} - ${dto.phone3}</td>
		</tr>
		</c:forEach>
</c:if>

   
</table>
</div>
</div>

<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>



