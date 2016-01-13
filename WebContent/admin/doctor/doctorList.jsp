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
		<div id="title"><title>의사입력</title>
<html>

</head>
<body>
<table width="690" border="1">
<tr>
<th width="80">의사번호</th>
<th width="100">의사 이름</th>
<th width="110">의사 등록번호</th>
<th width="100">전공</th>
<th width="120">부서이름</th>
<th width="180">비고</th>
</tr>
<c:forEach var="dto" items="${list }" begin="1" end="10">
<tr>
<td width="50">${dto.drId}</td>
<td width="100">${dto.drname }</td>
<td width="100">${dto.dreg_num }</td>
<td width="100">${dto.major }</td>
<td width="100">${dto.dpname }</td>
<td width="180">
<input type="button" value="수정" onClick="javascript:window.location='/antman/updateDoctor.do?drId=${dto.drId}'" />
<input type="button" value="내용보기"  onClick="javascript:window.location='/antman/doctorContent.do?drId=${dto.drId}'" />
<input type="button" value="삭제" onClick="javascript:window.location='/antman/deleteDoctor.do?drId=${dto.drId}'" />
</tr>
</c:forEach>
<tr>
<td colspan="6" align="right">
<input type="button" value="등록하기" onClick="javascript:window.location='/antman/insertDoctor.do'" />
</td>
</tr>
</table>
<br/>

	</div>
</div>