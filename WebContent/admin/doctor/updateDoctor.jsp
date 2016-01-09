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
		<div id="title"><title>의사수정하기</title>
</head>
<body>
<table border="1" cellspacing="0" cellpadding="0" >
<tr>
<td colspan="2" align="center">
<font size="3" color="orange" >의사 정보를 수정합니다. </font>
</td>
</tr>
<form action="/antman/updateDoctorPro.do" method="post" enctype="multipart/form-data" >
<tr>
<td>의사 성명</td>
<td><input type="text" size="10" maxlength="15" name="drname" value="${dto.drname }"/></td>
</tr>
<tr>
<td>의사 등록번호</td>
<td><input type="text" size="20" maxlength="30" name="dreg_num" value="${dto.dreg_num }"/></td>
</tr>
<tr>
<td>전공 진료</td>
<td ><input type="text" size="20" maxlength="30" name="major" value="${dto.major }"/></td>
</tr>
<tr>
<td>전문 분야(,쉼표로 구분)</td>
<td>
<textarea rows="5" cols="50" name="exarea" value="${dto.exarea }" >
</textarea>
</td>
</tr>
<tr>
<td>소속 부서(선택)</td>
<td ><select name="dpname">
<c:forEach var="dto" items="${list}" >
<option value="${dto.dpname }">${dto.dpname}</option>
</c:forEach>
</select>

</td>
</tr>
<tr>
<td>학위 등록</td>
<td height="300">
<input type="text" size="50" maxlength="50" name="degree1" value="${dto.degree1 }" /><br />
<input type="text" size="50" maxlength="50" name="degree2" value="${dto.degree2 }" /><br />
<input type="text" size="50" maxlength="50" name="degree3" value="${dto.degree3 }" /><br />
<input type="text" size="50" maxlength="50" name="degree4" value="${dto.degree4 }" /><br />
<input type="text" size="50" maxlength="50" name="degree5" value="${dto.degree5 }" /><br />
</td>
</tr>
<tr>
<td>논문 등록</td>
<td>
<input type="text" size="50" maxlength="50" name="report1" value="${dto.report1 }" /><br />
<input type="text" size="50" maxlength="50" name="report2" value="${dto.report2 }" /><br />
<input type="text" size="50" maxlength="50" name="report3" value="${dto.report3 }" /><br />
<input type="text" size="50" maxlength="50" name="report4" value="${dto.report4 }" /><br />
<input type="text" size="50" maxlength="50" name="report5" value="${dto.report5 }" /><br />
</td>
</tr>
<tr>
<td>사진 업로드</td>
<td>
<input type="file" size="50" name="drimg" /> <br />
<input type="file" size="50" name="drimg" /> <br />
<input type="file" size="50" name="drimg" /> <br />
<input type="file" size="50" name="drimg" /> <br />
<input type="file" size="50" name="drimg" /> <br />
</td>
</tr>
<tr>
<td colspan="2">
<input type="hidden" name="drId" value="${dto.drId}" />
<input type="submit" value="수정" />
<input type="reset" value="다시작성" />
<input type="button" value="등록 게시판" onclick="window.location='/antman/doctorList.do'" />
</td>
</tr>
</form>
</table>
</body>
</html>