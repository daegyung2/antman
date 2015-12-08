<%@ page contentType="text/html; charset=utf-8" %>
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
  <br/>
  칭찬은 하는 사람과 받는 사람, 모두를 즐겁게 합니다.<br/>
하나의 칭찬이 또 다른 칭찬을 만들어 갈 수 있도록<br/>
친절함이 돋보인 직원을 칭찬해 주세요.              <br/>                     
  <br/>
  <form action="/antman/praisewrite.do" method="post">
  <button type="submit" class="btn btn-primary btn-md" onclick=>칭찬하기</button>
 
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
		     <td ><h3>${dto.pid}</h3></td>
			 <td ><h3>${dto.subject}</h3>
				${dto.content } <br/>
				<FONT size="1">
				칭찬받은 직원 : ${dto.pname } |
				작성자 : ${dto.id } |
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


