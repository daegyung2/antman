<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>

<html lang="en">
<head>
  <title>Ī���սô�</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Ī���սô�</h2> 
  <p></p>            
  <table class="table">
    <thead>
      <tr>
        <th colspan="2"><h3><center>${dto.subject}</center></h3></th>

      </tr>
    </thead>
    <tbody>
      <tr>
 <tr><td width="50%">�ۼ��� : ${dto.id}</td><td width="50%">����� : ${dto.reg_date}</td></tr> 
      </tr>
      <tr>
<td colspan="2" height="200">${dto.content} </td>
      </tr>
  
    </tbody>
  </table>
</div>

</body>
</html>


<table border="0" width="100%">
   
   
<tr><td border="1" width="30%"><center>����</center></td><td width="90%"><h3>${dto.pname }</h3><br/>�����	���̽Ĺװ��㵵�ܰ�,����̽ļ���,�Ϻ���,������,���ϼ���,�㵵 �� ����ϼ���<br/>
�����о�	����,�㵵��,���̽�,�����氣������,�㼮,���̽ı����ڻ����˻� </td>
		     
			 
			
  </table>
</tr>
<br/>
<HR width=100% >
<br/>
  <center><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praisewrite.do'">Ī���ϱ�</button>
 <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseboard.do'">�������</button></center>
  </center>
</body>
</html>



<input type="hidden" name="pid" value="${pid}"/>
