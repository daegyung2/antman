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
		<div id="title"><title>부서수정</title>
</head>
<body>

<form action="/antman/updateDepartPro.do" method="post" enctype="multipart/form-data">
<table width="700" border="1" cellpadding="1" cellspacing="0">
<tr>
<th>부모 부서</th>
<td>
<select name="p_depart_id" >
<c:forEach var="dto" items="${list }">
<option value="${dto.p_depart_id}">${dto.p_dpname }</option>
</c:forEach>
</select>
${pdto.p_dpname}
</td>
</tr>
<tr>
<th>진료과 이름</th>
<td><input type="text" name="dpname" size="50" maxlength="30" value="${dto.dpname }" /></td>
</tr>
<tr >
<th>진료과 이니셜</th>
<td><input type="text" name="init" size="20" maxlength="20" value="${dto.init }"/></td>
</tr>
<th>진료과 사진</th>
<td><input type="file" size="50" name="upload" />
</td>
</tr>
<tr>
<th>진료과 정보1</th>
<td><input type="text" name="d_info1" size="70" maxlength="100" value="${dto.d_info1 }"/></td>
</tr>
<tr>
<th>진료과 정보2</th>
<td><input type="text" name="d_info2" size="70" maxlength="100" value="${dto.d_info2 }"/></td>
</tr>
<tr>
<th>진료과 정보3</th>
<td><input type="text" name="d_info3" size="70" maxlength="100" value="${dto.d_info3 }"/></td>
</tr>
<tr>
<th>진료과 정보4</th>
<td><input type="text" name="d_info4" size="70" maxlength="100" value="${dto.d_info4 }"/></td>
</tr>
<tr>
<th>진료과 정보5</th>
<td><input type="text" name="d_info5" size="70" maxlength="100" value="${dto.d_info5 }"/></td>
</tr>
<tr>
<th>진료과 정보6</th>
<td><input type="text" name="d_info6" size="70" maxlength="100" value="${dto.d_info6 }"/></td>
</tr>
<tr>
<th>진료과 정보7</th>
<td><input type="text" name="d_info7" size="70" maxlength="100" value="${dto.d_info7 }"/></td>
</tr>
<tr>
<th>진료과 정보8</th>
<td><input type="text" name="d_info8" size="70" maxlength="100" value="${dto.d_info8 }"/></td>
</tr>
<tr>
<th>진료과 정보9</th>
<td><input type="text" name="d_info9" size="70" maxlength="100" value="${dto.d_info9 }"/></td>
</tr>
<tr>
<th>진료과 정보10</th>
<td><input type="text" name="d_info10" size="70" maxlength="100" value="${dto.d_info10 }"/></td>
</tr>
<tr>
<td colspan="2">
<input type="hidden" value="${dto.depart_id }" name="depart_id" />
<input type="submit" value="수정완료" />
<input type="reset" value="초기화" />
<input type="button" value="진료과 게시판" onClick="window.location='/antman/departmentList.do'" />
</td>
</tr>
</table>

</div></div></div>
<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div> 
</form>
</body>
</html>