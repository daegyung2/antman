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
	.container{width:1100px; height:1300px; margin:0 auto;  margin-left:230px; position:relative;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:30px; position:relative;}
	
	#container{width:1100px; height:1697px; margin:0 auto;  margin-left:200px; position:relative;}
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

<!-- <script language="JavaScript">
   function goDel(depart_id,dpname) {
	   var yn = window.confirm(dpname+"를 삭제합니까?");
	   
	   if(yn) {
	      location.href="/antman/deleteDepart.do?depart_id="+depart_id; 
	   }
	}
 </script> -->

<div id="side">
<jsp:include page="/admin/adminsidebar2.jsp" flush="true | false"/>
</div>

<div id="container">
	<div class="main">
		<div id="title"><title>진료과 입력 창</title>
</head>
<body>

<table width="700" border="1" cellpadding="1" cellspacing="1">
<tr>

<c:if test="${!empty check }">
<tr>
<td align="center" colspan="4">
<center><font color="red">같은 과 선생님을 전부 삭제하여야 가능합니다.</font></center>
</td></c:if></tr>
<th align="center">진료과 이름</th>
<th align="center">이니셜</th>
<th align="center">진료과 정보</th>
<th align="center">비고</th>
</tr>

<c:forEach var="dto" items="${list }" >
<tr>

<td width="175">${dto.dpname }<input type="hidden" id="depart_id" value="${dto.depart_id }" /></td>
<td width="75">${dto.init }</td>
<td width="125">${dto.d_info1}</td>
<td width="225">
<input type="button" value="수정하기" id="update" onClick="javascript:window.location='/antman/updateDepartment.do?depart_id=${dto.depart_id}'"/>
<input type="button" value="내용보기" id="content" onClick="javascript:window.location='/antman/departmentContent.do?depart_id=${dto.depart_id}'" />
<input type="button" value="삭제하기" onClick="javascript:window.location='/antman/deleteDepart.do?depart_id=${dto.depart_id}&dpname=${dto.dpname }'" /> <!--  onClick="window.location='/antman/deleteDepart.do?depart_id=${dto.depart_id}'"-->
</td>											<%-- goDel(${dto.depart_id},${dto.dpname }); --%>
</tr>
</c:forEach>
<tr>
<td colspan="4">
<input type="button" value="진료과 추가" onClick="javascript:window.location='/antman/insertDepartment.do'" />
</td>
</tr> 
</table>

</div></div></div>
<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>
</body>
</html>

