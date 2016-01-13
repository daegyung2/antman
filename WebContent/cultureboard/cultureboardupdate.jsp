<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>병원소개 | DB병원</title>

<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }

	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	.container{width:1100px; height:1300px; margin:0 auto;  margin-left:220px; position:relative;}
	.container .main{width:1000px; height:1200px; margin-left:80px; top:30px; position:relative;}
	.container .main .intro{margin-left:0px;}
	.container .main table{border:1px solid #BDBDBD; }
</style>


<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->
<div id="side">
	<jsp:include page="/intro/introsidebar.jsp" flush="true | false"/>
</div>

<div class="container">
	<div class="main">

 
 <form action="/antman/cultureboardupdatepro.do" method="post" enctype="multipart/form-data">
  <input type="hidden" name="cuid" value="${dto.cuid}">
  
    <table width="600" border="1">
   
    <tr>
    <tr><td>글제목</td><td><input type="text" name="subject" value="${dto.subject}"/></td></tr>
    <tr><td>글내용</td><td><textarea name="content" value="${dto.content}" rows="2" ROWS="5" COLS="40"/></textarea></td></tr>
    <tr><td><input type="file" size="50" name="upload" /></td></tr> 
    <tr><td colspan="2"><input type="submit" value="글 수정"/><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/spring/cultureboard.do'">목록으로</button></td></tr>
    
   
    </table>
    </form>
    </div>
    </div>