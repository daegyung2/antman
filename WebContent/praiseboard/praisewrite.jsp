<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


 
    <style type="text/css">
	body{margin:0px; padding:0px;}
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px;}
	li{ margin:0px; padding:0px; }
	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->
<div id="side">
	<jsp:include page="/webservice/websidebar.jsp" flush="true | false"/>
</div><center>
  <div><table width="600" border="1">
    
        <tr><td>칭찬선택</td><td>
        <form action="/antman/praisewrite.do" method="post">
    <select name="dpname">
	<c:forEach var="dto" items="${dplist}" >
	<option value="${dto.dpname }">${dto.dpname}</option>
	</c:forEach>
	</select>&nbsp;&nbsp;<input type="submit" value="선생님보기">   
 	</form>
</td></tr>

<c:if test="${!empty drlist}">
<tr><td>칭찬할선생님</td><td>
 <form action="/antman/praisewrite.do" method="post">  
 
    <select name="drId">
	<c:forEach var="dto" items="${drlist}" >
	<option value="${dto.drid }">${dto.drname}</option>
	</c:forEach>	
</select>&nbsp;&nbsp;<input type="submit" value="선생님선택">

</form>
</td>
</tr>
</c:if>


<c:if test="${!empty delist}">
<tr><td>칭찬할직원</td><td>
<form action="/antman/praisewrite.do" method="post">  
 
    <select name="eid">
	<c:forEach var="dto" items="${delist}" >
	<option value="${dto.eid }">${dto.name}</option>
	</c:forEach>	
</select>&nbsp;&nbsp;<input type="submit" value="직원선택">
</form>

 </td>
</tr>
 </c:if>
 


	<form action="/antman/praisepro.do" method="post">	
    <tr>
    <c:if test="${empty  ddto.drId}"><input type="hidden" name="drid" value="0"></c:if>
    <c:if test="${!empty  ddto.drId}"><input type="hidden" name="drid" value="${ddto.drId}"></c:if>
     <c:if test="${empty  edto.eid}"><input type="hidden" name="eid" value="0"></c:if>
    <c:if test="${!empty  edto.eid}"><input type="hidden" name="eid" value="${edto.eid}"></c:if>
    <td>아이디</td><td><input type="hidden" name="id" value="${sessionScope.memId }"/>${sessionScope.memId }</td></tr>
    
    <tr><td>글쓴이</td><td><input type="hidden" name="name" value="${sessionScope.memname }"/>${sessionScope.memname }</td></tr>
    <tr><td>글제목</td><td><input type="text" name="subject"/></td></tr>
    <c:if test="${!empty ddto.drId}">
    <tr><td>선생님</td><td><input type="hidden" name="drname" value="${ddto.drname}"/>${ddto.drname}</td>
    </c:if>
    <c:if test="${!empty edto.name}">
    </td></tr>
       <tr><td>직원</td><td><input type="hidden" name="ename" value="${edto.name}"/>${edto.name}</td>
    </c:if>
    </td></tr>
    <tr><td>글내용</td><td><textarea name="content" rows="2" ROWS="5" COLS="40"/></textarea></td></tr>
    <tr><td colspan="2"><input type="submit" value="칭찬하기"/><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseboard.do'">목록으로</button></td></tr>
    
   </form>
    </table>
 </div>
 </center>