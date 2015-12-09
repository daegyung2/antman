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
    <title>DB Hospital</title>
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
  <h2>칭찬합시다</h2>   
  <div class="container">


  <table data-toggle="table" data-url="data2.json" data-show-columns="true" data-search="true" data-show-refresh="true" data-show-toggle="true" data-pagination="true">
    <thead>
      <tr>
       <th data-field="id" align="center" >제목</th>
      </tr>
    </thead>
   
                
		     
			 <tr><td colspan="2" align="center"><h3>${dto.subject}</h3></td></tr>
			 <tr><td width="50%">작성자 : ${dto.id}</td><td width="50%">등록일 : ${dto.reg_date}</td></tr> 
			<tr><td colspan="2">${dto.content } </td></tr>
			<tr></tr>
			
  </table>

<table border="0" width="100%">
   
   
<tr><td border="1" width="30%"><center>사진</center></td><td width="90%"><h3>${dto.pname }</h3><br/>진료과	간이식및간담도외과,장기이식센터,암병원,간센터,간암센터,담도 및 췌장암센터<br/>
전문분야	간암,담도암,간이식,복강경간절제술,담석,간이식기증자사전검사 </td>
		     
			 
			
  </table>
</tr>
<br/>
<HR width=100% >
<br/>
  <center><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praisewrite.do'">칭찬하기</button>
 <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseboard.do'">목록으로</button></center>
  </center>
</body>
</html>


