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

       <center>
    <h2>글이 수정 되었습니다.</h2>
    <form action="/antman/lectureboard.do" method="post">
    <input type="submit" value="메인으로"/>
   </form>
   </center>
   </div>
   </div>