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
		<div id="title"><title>직원등록</title>
</head>
<body>
<table width="750" border="1" cellpadding="0" cellspacing="0">
<tr>
<th width="110">사번</th>
<th width="140">이름</th>
<th width="140">전공</th>
<th width="190">부서명</th>
<th width="170">비고</th>
</tr>
<c:forEach var="dto" items="${list }">
<tr>
<td>${dto.eid }</td>
<td>${dto.name }</td>
<td>${dto.major }</td>
<td>${dto.dpname }</td>
<td>
<input type="button" value="수정하기" onClick="window.location='/antman/updateEmployee.do?Eid=${dto.eid }'" />
<input type="button" value="삭제" onClick="window.location='/antman/deleteEmployee.do?Eid=${dto.eid}'" />
</td>
</tr>
</c:forEach>
<tr>
<td colspan="5">
<input type="button" value="등록하기" onClick="window.location='/antman/insertEmployee.do'" />
</td>
</tr>
</table>

</div></div></div>
<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div> 
</body>
</html>