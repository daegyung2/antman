<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>학술행사일정 | 의학교육</title>

<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:12px; line-height:1.4; }
	a{text-decoration:none; }
	
	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	
	.container {width:1000px; height:1300px; margin:0 auto; margin-left:220px; position:relative;}
	.container .main{width:800px; height:1200px; margin-top:5px; }
	.container .main .academy{margin-left:100px; width:900px; border:1px solid #BDBDBD; border-top:2px solid #5586EB; border-collapse:collapse;}
	.container .main .academy th{text-align:center; padding:5px 0; color:#5586EB; background:rgba(233,233,233,0.65);}
	.container .main .academy td{padding:5px 0 5px 10px;}

</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->
<div id="side">
	<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</div>

<div class="container">
<div id="title"><center><h2>문의내역 </h2></center></div>



<table width="700" border="1" align="center">

       
        <c:if test="${list eq null }" >
        <h2>현재 질문한 사항이 없습니다.</h2>
        </c:if>
       
        <c:if test="${list ne null }" >
        <tr align="center">
		<th width="50">글번호</th>	
		<th>아이디</th>
		<th>이름</th>
		<th>내용</th>
		<th>의료진</th>
		<th width="150">답글쓰기</th>
		<th>등록하기</th>
		</tr>

        <c:forEach var="dto" items="${list}">
        <form action="/antman//MyQnA_AnswerPro.do">
		<tr align="center">
		<td >${dto.qid }<input type="hidden"  name="qid" value="${dto.qid}">
		     <td>${dto.id}</td>
			 <td>${dto.name}</td>
			 <td>${dto.content}</td>
			 <td>${dto.drname}</td>
			 <td ><input type = hidden name="drid" value="${sessionScope.memdrid }">


		
		<textarea size="50" rows="2" cols="30" name="answer">${dto.answer }</textarea>
	
	</td>
	<td>
		&nbsp;<input type="submit" value="등록"></td>
		</form>
		       <input type="hidden"  name="drid" value="" >
	
</c:forEach>
</c:if> 





    
</table>

</div>
</div>


