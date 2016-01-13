<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" >
<head>
<title>FAQ | 질문수정</title>
<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; }
	a{text-decoration:none; }
	
	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	
	#sub{width:1000px; height:60px; margin:0 auto; position:relative; margin-top:15px;}
	#sub #sub_con{width:800px; height:50px; margin-left:100px; margin-top:5px;}
	#sub #sub_con b{font-size:20px; text-align:center; margin-left:300px;}
	
	.main{height:1300px; margin-left:100px;}
	#container{width:1000px; height:60px; margin:0 auto; position:relative;}
	#container #container_con{width:800px; height:50px; margin-left:100px; margin-top:5px; }
	#container #container_con table{width:700px; border:1px solid #BDBDBD; border-collapse:collapse; }
	#container #container_con th{width:100px; text-align:center; padding:5px 0;}
	#container #container_con td{padding:5px 0 5px 10px;}
</style>
</head>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->
<div id="side">
	<jsp:include page="/webservice/websidebar.jsp" flush="true | false"/>
</div>

<div class="main">

    <form action="/antman/faqupdatepro.do" method="post">
    <input type="hidden" name="fid" value="${Fid }"/>
    <div id="sub">
    	<div id="sub_con">
		<b><font color="#5586EB">질문수정</font></b>
    	</div>
    </div>
    
    <div id="container">
    	<div id="container_con">
    	<table border="1">
    	<tr><th>분류</th>
    	<td><select name="category">
    		<option value="${dto.category}">${dto.category}</option>
			<option value="원무정보">원무정보</option>
			<option value="진료관련">진료관련</option>
			<option value="병원이용">병원이용</option>
			<option value="홈페이지 이용">홈페이지 이용</option>
		</select>    
    	</td></tr>
    
    	<tr><th>제목</th><td><input type="text" name="subject" value="${dto.subject}"/></td></tr>
    	<tr><th>내용</th><td><textarea name="content" ROWS="15" COLS="75" />${dto.content}</textarea></td></tr>
    	<tr><th colspan="2"><input type="submit" value="수정하기"/>
    	<button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/faqboard.do'">목록으로</button></th></tr>
    	</table>
    	</div>
	</div>
</div>

<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>	
	
	</form>
	
</html>