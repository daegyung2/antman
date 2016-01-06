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
	<jsp:include page="/treatmentteam/treatmentteamtop.jsp" flush="true | false"/>
</div>
   <link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
   function goDel(depart_id,dpname) {
	   var yn = window.confirm(dpname+"를 삭제합니까?");
	   
	   if(yn) {
	      location.href="/antman/deleteDepart.do?depart_id="+depart_id; 
	   }
	}
 </script>

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
		<div id="title"><title>진료과 입력 창</title>
</head>
<body>
<table width="600" border="1" cellpadding="1" cellspacing="1">
<tr>
<td align="center">진료과 이름</td>
<td align="center">이니셜</td>
<td align="center">진료과 정보</td>
<td align="center">비고</td>
</tr>

<c:forEach var="dto" items="${list }" >
<tr>

<td width="150">${dto.dpname }<input type="hidden" id="depart_id" value="${dto.depart_id }" /></td>
<td width="50">${dto.init }</td>
<td width="100">${dto.d_info1}</td>
<td width="200">
<input type="button" value="수정하기" id="update" onClick="window.location='/antman/updateDepartPro.do?depart_id=${dto.depart_id}'"/>
<input type="button" value="내용보기" id="content" onClick="window.location='/antman/departmentContent.do?depart_id=${dto.depart_id}'" />
<input type="button" value="삭제하기" id="delete" onClick="goDel(${dto.depart_id},${dto.dpname });" /> <!--  onClick="window.location='/antman/deleteDepart.do?depart_id=${dto.depart_id}'"-->
</td>
</tr>
</c:forEach>
<tr>
<td colspan="4">
<input type="button" value="진료과 추가" onClick="window.location='/antman/insertDepartment.do'" />
</td>
</tr>
</table>

</body>
</html>

