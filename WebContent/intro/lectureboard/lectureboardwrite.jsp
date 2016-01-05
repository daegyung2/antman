<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	#side{width:200px; float:left; margin-left:0px; }
	#top{width:200px; float:top; margin-left:100px; }
	#container{width:1100px; height:1300px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:100px; position:relative}
</style>


<div id="side">
	<jsp:include page="/intro/introsidebar.jsp" flush="true | false"/>
</div>

<div id="container">
	<div class="main">
    
<form action="/antman/lectureBoardPro.do" method="post" enctype="multipart/form-data">
    <table width="600" border="1">
    <tr>
    <tr><td>글제목</td><td><input type="text" name="subject" /></td></tr>
    <tr><td>글내용</td><td><textarea name="content" rows="2" ROWS="5" COLS="40"/></textarea></td></tr>
    <tr><td><input type="file" size="50" name="upload" /></td></tr> 
    <tr><td colspan="2"><input type="submit" value="글 등록"/><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/spring/lectureboard.do'">목록으로</button></td></tr>
    
   
    </table>
    </form>
    </div>
    </div>