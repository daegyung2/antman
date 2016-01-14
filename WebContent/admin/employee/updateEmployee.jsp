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
		<div id="title"><title>직원정보수정</title>
</head>
<body>
<table border="1" cellpadding="0" cellspacing="0" width="700">

<form action="/antman/updateEmployeePro.do" method="post" enctype="multipart/form-data">
<tr>
<th colspan="2">
직원 정보 입력창입니다. *는 필수 입력 대상입니다.
</th>
</tr>
<tr>
<th>사번</th>
<td>${dto.eid }</td>
</tr>
<tr>
<th>
이름<font color="red">*</font>
</th>
<td>
<input type="text" name="name" size="10" maxlength="15" value="${dto.name}"/>
</td>
</tr>
<tr>
<th>
전공<font color="red">*</font>
</th>
<td>
<input type="text" name="major" size="10" maxlength="15" value="${dto.major }"/>
</td>
</tr>
<tr>
<th>
소속 진료과<font color="red">*</font>
</th>
<td>
<select name="dpname">
<c:forEach var="departDTO" items="${list }" >
<c:if test="${dto.dpname == departDTO.dpname }" >
<option selected value="${departDTO.dpname }">${departDTO.dpname }</option>
</c:if>
<c:if test="${dto.dpname != departDTO.dpname }">
<option>${departDTO.dpname }</option>
</c:if>
</c:forEach>
</select>
</td>
</tr>
<tr>
<th rowspan="5" align="center">사진 업로드</th>
<td><input type="file" name="emimg"  value="${dto.emimg1 }"/></td></tr>
<tr><td><input type="file" name="emimg" value="${dto.emimg2 }"/></td></tr>
<tr><td><input type="file" name="emimg" value="${dto.emimg3 }" /></td></tr>
<tr><td><input type="file" name="emimg" value="${dto.emimg4 }" /></td></tr>
<tr><td><input type="file" name="emimg" value="${dto.emimg5 }" /></td></tr>
<tr>
<th>직원 설명</th>
<td><textarea name="emdescription" rows="5" cols="30" >${dto.emdescription }</textarea></td>
</tr>
<tr>
<td colspan="2">
<input type="hidden" name="Eid" value="${dto.eid }" />
<input type="submit" value="수정완료" />
<input type="button" value="삭제하기" onClick="window.location='/antman/deleteEmployee.do?Eid=${dto.eid}'" />
<input type="button" value="직원게시판"  onClick="window.location='/antman/employeeList.do'" />
</td>
</tr>
</form>
</table>

</div></div></div>
<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div> 
</body>
</html>