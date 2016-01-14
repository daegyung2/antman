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
	#container{width:1100px; height:1397px; margin:0 auto;  margin-left:170px; position:relative;}
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
		<div id="title01" align="center">
			<table width="690" border="1">
			<tr>
			<th width="80">의사번호</th>
			<th width="100">의사 이름</th>
			<th width="110">의사 등록번호</th>
			<th width="100">전공</th>
			<th width="120">부서이름</th>
			</tr>
		<c:forEach var="dto" items="${list }" begin="1" end="3" > 
			<tr>
			<td width="50">${dto.drId}</td>
			<td width="100">${dto.drname }</td>
			<td width="100">${dto.dreg_num }</td>
			<td width="100">${dto.major }</td>
			<td width="120">${dto.dpname }</td>
			</tr>
		</c:forEach>
			<tr>
			<td colspan="6" align="right">
			<center>
			<input type="button" value="등록하러가기" onClick="javascript:window.location='/antman/doctorList.do'" />
			</center>
			</td>
			</tr>
			</table>
		</div>
		
		<br/>
<!-- 직원등록썸네일 -->
		<div class="title02" align="center">
			<table width="450" border="1" cellpadding="0" cellspacing="0">
			<tr>
			<th width="70">사번</th>
			<th width="100">이름</th>
			<th width="100">전공</th>
			<th width="150">부서명</th>
			</tr>
		<c:forEach var="dto" items="${elist }" begin="1" end="3">
			<tr>
			<td>${dto.eid }</td>
			<td>${dto.name }</td>
			<td>${dto.major }</td>
			<td>${dto.dpname }</td>
			</tr>
		</c:forEach>
			<tr>
			<td colspan="5">
			<center>
			<input type="button" value="등록하기" onClick="window.location='/antman/insertEmployee.do'" />
			</center>
			</td>
			</tr>
		</table>
		</div>
		
		<br/>
<!-- 진료과등록 -->
		<div class="title03" align="center">
			<table width="400" border="1" cellpadding="1" cellspacing="1">
			<tr>
			<th align="center">진료과 이름</th>
			<th align="center">이니셜</th>
			<th align="center">진료과 정보</th>
			</tr>
		<c:forEach var="dto" items="${dlist }" begin="1" end="3" >
			<tr>
			<td width="150">${dto.dpname }<input type="hidden" id="depart_id" value="${dto.depart_id }" /></td>
			<td width="50">${dto.init }</td>
			<td width="100">${dto.d_info1}</td>
			</tr>
		</c:forEach>
			<tr>
			<td colspan="4">
			<center>
			<input type="button" value="진료과 추가" onClick="window.location='/antman/insertDepartment.do'" />
			</center>
			</td>
			</tr>
		</table>
		</div>

	</div>
</div>

<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div> 
