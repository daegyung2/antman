<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:100px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65); text-align:left; }
	#container .main td{padding:5px 5px 5px 5px; }
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>


<div id="side">
<jsp:include page="p_mypage_sidebar.jsp" flush="true | false"/>
</div>
</br></br>

<div id="container">
	<div class="main">
		<div id="title"><h2>칭찬합시다!</h2></div>
	
 
  <div><table width="600" border="1" align="center">
    
        <tr><td>칭찬할선생님</td><td>
        <form action="/antman/p_praisewrite.do" method="post">
    <select name="dpname">
	<c:forEach var="dto" items="${dplist}" >
	<option value="${dto.dpname}">${dto.dpname}</option>
	</c:forEach>
	</select><input type="submit" value="선생님보기">   
 	</form>

 
 <form action="/antman/p_praisewrite.do" method="post">  
 
    <select name="drname">
	<c:forEach var="dto" items="${drlist}" >
	<option value="${dto.drname }">${dto.drname}</option>
	</c:forEach>	
</select>
<input type="submit" value="선생님선택">

</form>

 </td>
	<form action="/antman/p_praisepro.do" method="post">	
 
  
    <tr><td>아이디</td><td><input type="hidden" name="id" value="${sessionScope.memId}"/>${sessionScope.memId}</td></tr>
    <tr><td>글쓴이</td><td><input type="hidden" name="name" value="${sessionScope.memname}"/>${sessionScope.memname}</td></tr>
    <tr><td>글제목</td><td><input type="text" name="subject"/></td></tr>
    <tr><td>선생님</td><td><input type="text" name="drname" value="${drname}"/></td></tr>
    </td></tr>
    <tr><td>글내용</td><td><textarea name="content" rows="2" ROWS="5" COLS="40"/></textarea></td></tr>
    <tr><td colspan="2"><input type="submit" value="칭찬하기"/><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/p_praiseboard.do?id=${sessionScope.memId}&name=${sessionScope.memname}'">목록으로</button></td></tr>
    
   
    </table>
 </div>
 </div></div>
 