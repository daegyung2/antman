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
		<div id="title"><title>스케쥴통계</title>

전체스케쥴
<center>
<table width="500" border="1">
<tr><th>전체스케쥴수</th><th>1차진료수</th><th>2차진료수</th><th>3차진료수</th><th>4차진료수</th></tr>
<tr><td>${allcount }</td><td>${one }</td><td>${two }</td><td>${three }</td><td>${four }</td></tr>
</table>
<br/>
<br/>
        <form action="/antman/doctorinfo.do" method="post">
    <select name="dpname">
	<c:forEach var="dto" items="${dplist}" >
	<option value="${dto.dpname }">${dto.dpname}</option>
	</c:forEach>
	</select>&nbsp;&nbsp;<input type="submit" value="진료과별검색"> 
	</select>&nbsp;<input type="button" value="전체보기" onclick="javascript:window.location='/antman/doctorinfo.do'"> 
 	  
 	</form>
 	
 	<br/>


<c:if test="${!empty drlist}">
선생님검색
 <form action="/antman/doctorinfo.do" method="post">  
 
    <select name="drid">
	<c:forEach var="dto" items="${drlist}" >
	<option value="${dto.drid }">${dto.drname}</option>
	</c:forEach>	
</select>&nbsp;&nbsp;<input type="submit" value="선생님검색">

</form>
</c:if>


<table width="750" border ="1">
<tr align="center">
<th>스케쥴번호</th>
<th>환자아이디</th>
<th>환자이름</th>
<th>선생님이름</th>
<th>진료과</th>
<th>스케쥴시간</th>
<th>다음진료</th>
<tr/>


<c:forEach var="dto" items="${slist }">
<tr align="center">
<td>${dto.sid }</td>
<td>${dto.id }</td>
<td>${dto.name }</td>
<td>${dto.drname }</td>
<td>${dto.dpname }</td>
<td>${dto.sdate }</td>
<td>${dto.nextsdate }</td>
<tr/>
</c:forEach>
</table>

</center>
