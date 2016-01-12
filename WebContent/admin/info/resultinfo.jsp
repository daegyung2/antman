<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:100px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>

<div id="side">
<jsp:include page="/admin/adminsidebar.jsp" flush="true | false"/>
</div>

<div id="container">
	<div class="main">
		<div id="title"><title>진료기록통계</title>
<center>
<table width="100" border="1">
<tr>
<th align="center">진료기록통계</th>
</tr>
<tr>
<td align="center">${allcount }</td>
</tr>
</table>
<br/>

<table width="1000" border="1">
<tr>
<br/>
 <form action="/antman/resultinfo.do" method="post">
    <select name="dpname">
	<c:forEach var="dto" items="${dplist}" >
	<option value="${dto.dpname }">${dto.dpname}</option>
	</c:forEach>
	</select>&nbsp;&nbsp;<input type="submit" value="진료과별검색">   
 	</form>
 	
 	<br/>


<c:if test="${!empty drlist}">
선생님검색<br/>
 <form action="/antman/resultinfo.do" method="post">  
 
    <select name="drid">
	<c:forEach var="dto" items="${drlist}" >
	<option value="${dto.drid }">${dto.drname}</option>
	</c:forEach>	
</select>&nbsp;&nbsp;<input type="submit" value="선생님검색">

</form>
</c:if>
<br/>
<th>기록번호</th>
<th>진료과</th>
<th>선생님</th>
<th>환자아이디</th>
<th>환자이름</th>
<th>생년월일</th>
<th>나이</th>
<th>성별</th>
<th>증상1</th>
<th>증상2</th>
<th>증상3</th>
<th>증상4</th>
<th>입력날짜</th>
</tr>
<tr>
<c:forEach var="dto" items="${rlist }">
<td>${dto.mid}</td>
<td>${dto.dpname}</td>
<td>${dto.drname}</td>
<td>${dto.id}</td>
<td>${dto.name}</td>
<td>${dto.jumin1}</td>
<td>${dto.age}</td>
<td>${dto.gender}</td>
<td>${dto.symptom1}</td>
<td>${dto.symptom2}</td>
<td>${dto.symptom3}</td>
<td>${dto.symptom4}</td>
<td>${dto.treatdate}</td>
</tr>
</c:forEach>
</table>



</center>