<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }

	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#top{width:200px; float:top; margin-left:100px; }
	.container{width:1100px; height:1300px; margin:0 auto;  margin-left:230px; position:relative;}
	.container .sub{width:800px; height:50px; margin-left:80px; top:0px; position:relative;}
	.container .sub b{font-size:22px; color:#000000;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:30px; position:relative;}
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:-17px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}

	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}


</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>


<div id="side">
	<jsp:include page="/p_mypage/p_mypage_sidebar.jsp" flush="true | false"/>
</div>


	<div class="main">
		<div id="title"><h2>문의내역</h2></div>
		<br/>

	<div class="main"><br/><br/>
		<div id="title"><center><h2>문의내역 </h2></center></div>



<table width="700" border="1" align="center">

       
        <c:if test="${list eq null }" >
        <h2>현재 질문한 사항이 없습니다.</h2>
        </c:if>
       
        <c:if test="${list ne null }" >
        <tr align="center">
		<th>글번호</th>	
		<th>아이디</th>
		<th>이름</th>
		<th>내용</th>
		<th>의료진</th>
		<th>답글쓰기</th>
		
		</tr>

        <c:forEach var="dto" items="${list}">
		<tr align="center">
		<td>${dto.qid }<input type="hidden"  name="qid" value="${dto.qid}">
		     <td>${dto.id}</td>
			 <td>${dto.name}</td>
			 <td>${dto.content}</td>
			 <td>${dto.drname}</td>
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


