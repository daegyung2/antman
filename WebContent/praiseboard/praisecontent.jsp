<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>

<html lang="en">
<head>
  <title>칭찬합시다</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>칭찬합시다</h2> 
  <p></p>            
  <table class="table">
    <thead>
      <tr>
        <th colspan="2"><h3><center>${dto.subject}</center></h3></th>

      </tr>
    </thead>
    <tbody>
      <tr>
 <tr><td width="50%">작성자 : ${dto.name}</td><td width="50%">등록일 : ${dto.reg_date}</td></tr> 
      </tr>
      <tr>
<td colspan="2" height="200">${dto.content} </td>
      </tr>
  
    </tbody>
  </table>
</div>

</body>
</html>


<div class="container">
<p></p>            
  <table class="table">

    <tbody>
      <tr>
 <tr><td width="50%"><img src="${dto.drimg1 }" weight="190" height="240"></td><td><h3>${dto.drname}</h3><br/> <h4> ${dto.dpname}</h4>${dto.exarea }</td></tr> 
      </tr>
  
    </tbody>
  </table>
</div>

</body>
</html>


</tr>
<br/>
<HR width=100% >
<br/>
<center><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseupdate.do?pid=${dto.pid}'">수정하기</button>
<button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praisewrite.do'">칭찬하기</button> 
<button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praisedelete.do?pid=${dto.pid}'">삭제하기</button> 
 <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseboard.do'">목록으로</button></center>
  </center>
</body>
</html>



<input type="hidden" name="pid" value="${pid}"/>
