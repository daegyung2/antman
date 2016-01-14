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
	#footer{width:100%; height:300px; margin-bottom:0px;}
	.container{width:1100px; height:1200px; margin:0 auto;  margin-left:200px; position:relative;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:0px; position:relative;}
	
	#container{width:1100px; height:1397px; margin:0 auto;  margin-left:200px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:0px; position:relative}
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
<c:forEach var="dto" items="${list }" begin="0" end="11">
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
<center>
<input type="button" value="등록하기" onClick="javascript:window.location='/antman/insertDoctor.do'" />
</center>
</td>
</tr>
</table>
<br/>

	</div>
</div>
</div>

<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div> 