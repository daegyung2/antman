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
	#side{width:200px; float:left; margin-left:0px;}
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
		<div id="title"><title>의사 정보 확인 페이지</title>
</head>
<body>
<table border="1" cellpadding="0" cellspacing="0" width="700">
<tr>
<td width="350" height="150" rowspan="3" align="center">
<img src="${dto.drimg1 }" width="150" height="150"/>
</td>
<td height="50">성명: ${dto.drname }</td>
</tr>
<tr>
<td height="50">전공: ${dto.major }</td>
</tr>
<tr>
<td height="50">소속 부서: ${dto.dpname }</td>
</tr>
<tr>
<th align="center">전문 분야</th>
<td> ${dto.exarea }</td>
</tr>
<tr><th rowspan="5" align="center">학위</th>
<td height="20">${dto.degree1 }</td></tr>
<tr><td height="20">${dto.degree2 }</td></tr>
<tr><td height="20">${dto.degree3 }</td></tr>
<tr><td height="20">${dto.degree4 }</td></tr>
<tr><td height="20">${dto.degree5 }</td></tr>
<tr><th rowspan="5" align="center">논문 내역</th>
<td height="20">${dto.report1 }</td></tr>
<tr><td height="20">${dto.report2 }</td></tr>
<tr><td height="20">${dto.report3 }</td></tr>
<tr><td height="20">${dto.report4 }</td></tr>
<tr><td height="20">${dto.report5 }</td></tr>
<tr><th rowspan="5" align="center">등록사진</th>
<td align="center"><img src="${dto.drimg1 }" width="150" height="150" /></td></tr>
<tr><td align="center"><img src="${dto.drimg2 }" width="150" height="150" /></td></tr>
<tr><td align="center"><img src="${dto.drimg3 }" width="150" height="150" /></td></tr>
<tr><td align="center"><img src="${dto.drimg4 }" width="150" height="150" /></td></tr>
<tr><td align="center"><img src="${dto.drimg5 }" width="150" height="150" /></td></tr>
<tr>
<td colspan="2" align="right">
<center>
<input type="button" value="게시판" onClick="window.location='/antman/doctorList.do'" />
<input type="button" value="수정하기" onClick="window.location='/antman/updateDoctor.do?drId=${dto.drId}'" />
<input type="button" value="삭제하기" onClick="window.location='/antman/deleteDoctor.do?drId=${dto.drId}'" />
</center>
</td></tr>
</table>

</div></div></div>
<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div> 
</body>
</html>