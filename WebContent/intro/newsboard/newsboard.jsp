<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }

	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	#container{width:1100px; height:1300px; margin:0 auto;  margin-left:220px; margin-top:-20px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; top:5px; position:relative;}
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<div id="side">
	<jsp:include page="/intro/introsidebar.jsp" flush="true | false"/>
</div>

<div id="container">
	<div class="main">


<!DOCTYPE html>
<html lang="en">
<head>
  <title>DB Hospital</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>뉴스 게시판 입니다.</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<script type="text/javascript" src="http://codemoon.esy.es/code/bootstrap-table.js"></script>   

  <div class="container">
  <h2>news</h2>       
  <br/>
 뉴스게시판 입니다. <br/>
<br/>
             <br/>                     
  <br/>
  <form action="/antman/newsboardwrite.do" method="post">
  <button type="submit" class="btn btn-primary btn-md" onclick=>글 쓰기</button>
  </form>
  <table data-toggle="table" data-url="data2.json" data-show-columns="true" data-search="true" data-show-refresh="true" data-show-toggle="true" data-pagination="true">
    <thead>
      <tr>
       <th data-field="id" >번호</th>
<th data-field="name">내용</th>
      </tr>
    </thead>
   
                <c:forEach var="dto" items="${list}">
		<tr>
		     <td ><h3>${dto.NEid}</h3></td>
			 <td ><h3><a href="/antman/newsboardcontent.do?NEid=${dto.NEid}">${dto.subject}</a></h3>
				${dto.content} <br/>
				<FONT size="1">
			
				
				등록일 : ${dto.reg_date} |
				아이디 : ${sessionScope.LoginDataBean.id}
			</FONT>
		
		</tr>

</c:forEach>
   
   
	
  </table>

</div>

<
<script type="text/javascript">

</script>
</body>
</html>
</div>
</div>


<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>
    