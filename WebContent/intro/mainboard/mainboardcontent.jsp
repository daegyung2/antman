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
  <h2>���� �Խ��� �Դϴ�.</h2>   
  <div class="container">


  <table data-toggle="table" data-url="data2.json" data-show-columns="true" data-search="true" data-show-refresh="true" data-show-toggle="true" data-pagination="true">
    <thead>
      <tr>
       <th data-field="id" align="center" >����</th>
      </tr>
    </thead>
   
                
		     
			 <tr><td colspan="2" align="center"><h3>${dto.subject}</h3></td></tr>
			 <tr><td width="50%">����� : ${dto.reg_date}</td></tr> 
			<tr><td colspan="2">${dto.content } </td></tr>
			<tr></tr>
			
  </table>

<table border="0" width="100%">
   
   

			
  </table>
</tr>
<br/>
<HR width=100% >
<br/>
<center><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/spring/mainboardupdate.do?MBid=${dto.MBid}'">�����ϱ�</button>
  <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/spring/mainboarddelete.do?MBid=${dto.MBid}'">�����ϱ�</button>
 <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/spring/mainboard.do'">�������</button></center>
  </center>
</body>
</html>


    