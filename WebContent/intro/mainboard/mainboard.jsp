<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
    <title>공지 게시판 입니다.</title>
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
  <h2>공지사항</h2>       
  <br/>
 공지게시판 입니다.<br/>
<br/>
             <br/>                     
  <br/>
  <form action="/spring/mainboardwrite.do" method="post">
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
		     <td ><h3>${dto.MBid}</h3></td>
			 <td ><h3><a href="/spring/mainboardcontent.do?MBid=${dto.MBid}">${dto.subject}</a></h3>
				${dto.content} <br/>
				<FONT size="1">
			
				
				등록일 : ${dto.reg_date} |
				
			</FONT>
		
		</tr>

</c:forEach>
   
   
	
  </table>

</div>
<script type="text/javascript">

</script>
</body>
</html>
    