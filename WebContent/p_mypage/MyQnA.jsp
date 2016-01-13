<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#menutop{width:100%; height:50px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:200px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:0px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65); text-align:center; }
	#container .main td{padding:5px 5px 5px 5px; }
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>


<div id="side">
<jsp:include page="p_mypage_sidebar.jsp" flush="true | false"/>
</div>
<br/><br/><br/>
<div id="container">
	<div class="main">
		<div id="title"><h2>나의문의내역</h2></div>

 
    <table width="600" border="1" align="center">
    
    <tr><th>선생님 선택</th><td>
    <form action="/antman/MyQnA.do" method="post">
    <select name="dpname">
	<c:forEach var="dto" items="${dplist}" >
	<option value="${dto.dpname }">${dto.dpname}</option>
	</c:forEach>
	</select><input type="submit" value="선생님보기">   
 	</form>

 
 <form action="/antman/MyQnA.do" method="post">  
 
    <select name="drname">
	<c:forEach var="dto" items="${drlist}" >
	<option value="${dto.drname }">${dto.drname}</option>
	</c:forEach>	
</select>
<input type="submit" value="선생님선택">

</form>

 </td>
	<form action="/antman/MyQnAPro.do" method="post">	
    <tr>
    <input type="hidden" name="drid" value="${ddto.drId }">
    <th>아이디</th><td><input type="text" name="id" value="${sessionScope.memId}"/> </td></tr>
    
    <tr><th>글쓴이</th><td><input type="text" name="name" value="${sessionScope.memname}"/></td></tr>
    <tr><th>글제목</th><td><input type="text" name="subject"/></td></tr>
    <tr><th>선생님</th><td><input type="text" name="drname" value="${drname}"/></td></tr>
    </td></tr>
    <tr><th>글내용</th><td><textarea name="content" rows="5" ROWS="10" COLS="50"/></textarea></td></tr>
    <tr><td colspan="2"><center><input type="submit" value="글쓰기"/><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/mypage.jsp'">목록으로</button></center></td></tr>
    
   
    </table>
    </form>
    <br/><br/>
    
<table width="900" border="1" align="center">
       
        <c:if test="${empty list}" >
        <h2>현재 받은 질문이 없습니다.</h2>
        </c:if>
        
        <tr align="center">
        <th>아이디</th>
        <th>이름</th>
        <th>내용</th>
        <th>의료진</th>
        <th>답변</th>
        </tr>
        <c:if test="${!empty list}" >
        <c:forEach var="dto" items="${list}">
		<tr align="cnenter">
		     <td>${dto.id}</td>
			 <td>${dto.name}</td>
			 <td>${dto.content}</td>
			 <td>${dto.drname}</td>
			<c:if test="${dto.answer != null}">
			<td>${dto.answer}</td>
			</c:if>
			<c:if test="${dto.answer ==null }">
			<td>답변대기중입니다.</td>
			</c:if>
		</tr>
		

</c:forEach>
</c:if>

   
</table>
</div>
</div>


<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>
   

    
    

   

    
  
 
 
 