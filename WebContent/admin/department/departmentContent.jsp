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
		<div id="title"><title>진료과 상세내용</title>
</head>
<body>
<table width="500" border="1" cellpadding="1" cellspacing="0">
<tr>
<td width="200">부모 부서</td>
<td>${dto.p_depart_id }.${pdto.p_dpname}</td>
</tr>
<tr>
<td width="200">진료과 이름</td>
<td>${dto.dpname }</td>
</tr>
<tr >
<td width="200">진료과 이니셜</td>
<td>${dto.init }</td>
</tr>
<tr >
<td width="200">진료과 사진</td>
<td align="center"><img src="${dto.dpimg}" width="110" height="110"/></td>
</tr>
<tr>
<td width="200">진료과 정보1</td>
<td>${dto.d_info1 }</td>
</tr>
<tr>
<td width="200">진료과 정보2</td>
<td>${dto.d_info2 }</td>
</tr>
<tr>
<td width="200">진료과 정보3</td>
<td>${dto.d_info3 }</td>
</tr>
<tr>
<td width="200">진료과 정보4</td>
<td>${dto.d_info4 }</td>
</tr>
<tr>
<td width="200">진료과 정보5</td>
<td>${dto.d_info5 }</td>
</tr>
<tr>
<td width="200">진료과 정보6</td>
<td>${dto.d_info6 }</td>
</tr>
<tr>
<td width="200">진료과 정보7</td>
<td>${dto.d_info7 }</td>
</tr>
<tr>
<td width="200">진료과 정보8</td>
<td>${dto.d_info8 }</td>
</tr>
<tr>
<td width="200">진료과 정보9</td>
<td>${dto.d_info9}</td>
</tr>
<tr>
<td width="200">진료과 정보10</td>
<td>${dto.d_info10}</td>
</tr>
<tr>
<td colspan="2">
<input type="button" value="진료과 게시판" onClick="window.location='/antman/departmentList.do'" />
<input type="button" value="수정하기" onClick="window.location='/antman/updateDepartment.do?depart_id=${dto.depart_id}'" />
<input type="button" value="삭제하기" onClick="window.location='/antman/deleteDepartment.do?depart_id=${dto.depart_id}'" />

</td>
</tr>
</table>

</body>
</html>