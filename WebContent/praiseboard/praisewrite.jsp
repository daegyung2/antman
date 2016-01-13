<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#menutop{width:100%; height:50px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px; }
	#container{width:1100px; height:1259px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:100px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; margin-left:200px; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65); text-align:left; }
	#container .main td{padding:5px 5px 5px 5px; }
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>


<div id="side">
<jsp:include page="/webservice/websidebar.jsp" flush="true | false"/>
</div>
</br></br>

<div id="container">
	<div class="main">
		<div id="title"><h2>칭찬합시다</h2></div>
	
<div class="container"><table width="600" border="1">
    
        <tr><th>칭찬선택</th><td>
        <link href="style.css" rel="stylesheet" type="text/css">
                <script language="JavaScript">

    function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.subject.value )
        {
            alert("제목을 입력하세요");
            return false;
        }else if(!userinput.content.value ){
        	
            alert("글을 입력하세요");
            return false;
        }else if(!userinput.drname.value || !userinput.ename.value ){
        	
            alert("칭찬할 사람을 선택하십시오.");
            return false;
     
        }
        }
    </script>
        <form action="/antman/praisewrite.do" method="post" id="userinput" onSubmit="return checkIt()">

    <select name="dpname">
	<c:forEach var="dto" items="${dplist}" >
	<option value="${dto.dpname }">${dto.dpname}</option>
	</c:forEach>
	</select>&nbsp;&nbsp;<input type="submit" value="선생님보기">   
 	</form>
</td></tr>

<c:if test="${!empty drlist}">
<tr><th>칭찬할선생님</th><td>
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
<tr><th>칭찬할직원</th><td>
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
    <th>아이디</th><td><input type="hidden" name="id" value="${sessionScope.memId }"/>${sessionScope.memId }</td></tr>
    
    <tr><th>글쓴이</th><td><input type="hidden" name="name" value="${sessionScope.memname }"/>${sessionScope.memname }</td></tr>
    <tr><th>글제목</th><td><input type="text" name="subject"/></td></tr>
    <c:if test="${!empty ddto.drId}">
    <tr><th>선생님</th><td><input type="hidden" name="drname" value="${ddto.drname}"/>${ddto.drname}</td>
    </c:if>
    <c:if test="${!empty edto.name}">
    </td></tr>
       <tr><th>직원</th><td><input type="hidden" name="ename" value="${edto.name}"/>${edto.name}</td>
    </c:if>
    </td></tr>
    <tr><th>글내용</th><td><textarea name="content" rows="2" ROWS="5" COLS="40"/></textarea></td></tr>
    <tr><td colspan="2"><input type="submit" value="칭찬하기"/><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseboard.do'">목록으로</button></td></tr>
    
   </form>
    </table>
 </div>
 </center>
 
  </div></div>
    <div id="footer">
	<jsp:include page="/mainpage/footer.jsp" flush="true | false"/>
</div>