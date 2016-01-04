<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
		<div id="title"><title>부모 부서</title>
</head>
<body>

<table width="350" border="1">
<tr>
<td width="150">부모 진료과 이름</td>
<td width="200" align="center">비고</td>
</tr>
<c:forEach var="dto" items="${list }" >
<tr>
<td>${dto.p_dpname }</td>
<td>
<input type="button" value="수정하기" onclick="window.location='/antman/updateP_department.do?p_depart_id=${dto.p_depart_id}'" />
<input type="button" value="삭제하기" onclick="window.location='/antman/deleteP_department.do?p_depart_id=${dto.p_depart_id}'" />
</td>
</tr>
</c:forEach>
<tr><td colspan="2"><input type="button" value="등록하기" onClick="window.location='/antman/insertP_department.do'" /></td></tr>
</table>
</table>
</body>
</html>