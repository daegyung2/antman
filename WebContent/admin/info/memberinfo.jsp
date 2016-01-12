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
		<div id="title"><title>가입자통계</title>
<center>
<table width="300" border="1" >
<tr align="center">

<th>가입자수</th><th>의사</th><th>직원</th><th>환자</th><th>남자/여자</th>
</tr>


<tr align="center">
<td>${member}</td><td>${doctor}</td><td>${employee}</td><td>${pain}</td><td>${man}/${woman}</td>
</tr>



</table>
<br/>
<table width="600" border="1" align="center"> 
<tr align="center">

<th>영유아</th>
<th>10대</th>
<th>20대</th>
<th>30대</th>
<th>40대</th>
<th>50대</th>
<th>60대</th>
<th>70대</th>
<th>80대</th>
<th>90대</th>
</tr>
<tr align="center">
<td>${one}</td>
<td>${two}</td>
<td>${three}</td>
<td>${four}</td>
<td>${five}</td>
<td>${six}</td>
<td>${seven}</td>
<td>${eight}</td>
<td>${nine}</td>
<td>${ten}</td>
</tr>



</table>


<br/>
<table width="700" border="1">
<tr align="center">
<th>아이디</th>
<th>이름</th>
<th>나이</th>
<th>성별</th>
<th width="100">번호</th>
<th width="100">이메일</th>
<th width="70">의사번호</th>
<th width="70">직원번호</th>
</tr>


<c:forEach var="dto" items="${memlist }">
<tr align="center">
<td>${dto.id}</td>
<td>${dto.name}</td>
<td>${dto.age}</td>
<td>${dto.gender}</td>
<td>${dto.phone}</td>
<td>${dto.e_mail}</td>
<td>${dto.drId}</td>
<td>${dto.eid}</td>
</tr>
</c:forEach>
</table>

</center>
</div>
</div>
</div>

