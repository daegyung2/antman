<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


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
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65); text-align:center; }
	#container .main td{padding:5px 5px 5px 5px; }
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<div id="side">
	<jsp:include page="/p_mypage/p_mypage_sidebar.jsp" flush="true | false"/>
</div>


<div id="container">
	<div class="main"><br/><br/>
		<div id="title"><center><h2>문의내역 </h2></center></div>


<table width="700" border="1" align="center">

       
        <c:if test="${list eq null }" >
        <h2>현재 질문한 사항이 없습니다.</h2>
        </c:if>
       
        <c:if test="${list ne null }" >
        <tr align="center">
		<td>글번호</td>	
		<td>아이디</td>
		<td>이름</td>
		<td>내용</td>
		<td>의료진</td>
		<td>답글쓰기</td>
		
		</tr>

        <c:forEach var="dto" items="${list}">
		<tr align="center">
		<td><h2>${dto.qid }<input type="hidden"  name="qid" value="${dto.qid}"></h2>
		     <td><h2>${dto.id}</h2></td>
			 <td><h2>${dto.name}</h2></td>
			 <td><h2>${dto.content}</h2></td>
			 <td><h2>${dto.drname}</h2></td>
		       <input type="hidden"  name="drid" value="" >
      
			 <td><input type="button" value="답글" onclick="javascript:window.location='/antman/MyQnA_Answer.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memdrname}&qid=${dto.qid}&id=${dto.id}&name=${dto.name}&content=${dto.content}&drname=${dto.drname}'"></td>
		</tr>
	
</c:forEach>
</c:if> 

<!--  <tr>
	<td colspan ="5">

		 <h2>답변등록</h2>


		<form action="/antman/MyQnA_Answer.do">
		<textarea size="50" rows="5" cols="50" name="answer"></textarea>
		&nbsp;<input type="submit" value="등록">
		</form>
	</td>
	</tr>



   -->
   
</table>

</div>
</div>


