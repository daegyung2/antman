<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>FAQ</title>
	<link rel="stylesheet" type="text/css" href="tabset.css" />
	<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
	<script type="text/javascript" src="tabset.js"></script>
</head>
<body>
<script type="text/javascript"></script>   
  <div class="container">
  <center><h2>자주하는질문</h2></center>
  <center><b>총 <font color="#368D9C">${count}건</font>입니다.</b></center>                     
  <br/>
  <center>
<div id="container">
	<div class="tabset">
    	<ul class="tabs">
        <li><a href="#panel01" class="on">전체</a></li>
        <li><a href="#panel02">원무정보</a></li>
        <li><a href="#panel03">진료관련</a></li>
        <li><a href="#panel04">병원이용</a></li>
        <li><a href="#panel05">홈페이지 이용</a></li>
        </ul>   
     <div class="panels">
    	<div id="panel01">test1
        </div>
        <div id="panel02">test2
        </div>
        <div id="panel03">test3
        </div>
        <div id="panel04">test4
        </div>
        <div id="panel05">test5
        </div>
    </div>
    </div>
</div>
	<div class="sub">
		<div id="category"><b>분류</b></div>
		<div id="title"><b>제목</b></div>
	</div>
  <table>
   
<c:forEach var="dto" items="${list}">
		<tr>
			<td ><h3>${dto.category}</h3></td>
			<td ><h3><a href="/antman/faqcontent.do?pid=${dto.category}">${dto.subject}</a></h3><br/>
		</tr>
</c:forEach>
</table>
</center>
</div>
<script type="text/javascript">

</script>
</body>
</html>