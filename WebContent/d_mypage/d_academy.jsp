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
	#footer{width:100%; height:300px; margin-bottom:0px;}
	.container{width:1100px; height:1100px; margin:0 auto;  margin-left:230px; position:relative;}
	.container .sub{width:800px; height:50px; margin-left:80px; top:0px; position:relative;}
	.container .sub b{font-size:22px; color:#000000;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:30px; position:relative;}
	
	#container{width:1100px; height:1247px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:-17px; position:relative}
	#container .main #title{width:800px; margin-left:0px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>


<div id="side">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</div>


<div id="container">
	<div class="main">
		<div id="title"><table width="900" border="1" class="academy">
<tr >
<th width="40">번호</th><th width="200">학술행사명</th><th width="260">행사시간</th><th width="300">신청기간</th><th width="120"> 학술행사인원</th><th width="70">수정하기</th>
<tr/>
<c:forEach var="dto" items="${list }">
<tr align="center">
<td>${dto.asid}</td><td><a href="/antman/dacademycontent.do?id=${sessionScope.memId }&asid=${dto.asid}&drid=${dto.drid }&drname=${dto.drname }&asend=${dto.asend}">${dto.assubject}</a></td><td>${dto.astime} ~ ${dto.astimeend}</td><td>${dto.asstart} ~ ${dto.asend}</td>
<td><c:if test="${dto.asmin ne  dto.asmax}">
${dto.asmin}/${dto.asmax}
</c:if>
<c:if test="${dto.asmin eq  dto.asmax}">
수강인원만원
</c:if>
</td><td><input type="button" value="수정" onclick="javascript:window.location='/antman/dacademyupdate.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memname }&asid=${dto.asid}'">
</td>
</tr>
</c:forEach>
<tr>
<td colspan="6">
<center><input type="button" value="수강올리기" onclick="javascript:window.location='/antman/academywrite.do'">
</center>
</td>
</tr>

</table>
<br/>
<div class="paging"><center>${pagingHtml}</center></div>

	</div>
</div>

<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>