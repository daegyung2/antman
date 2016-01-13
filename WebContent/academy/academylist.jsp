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
	.container .main .paging{width:500px; margin-left:300px; }
	.container .main .academy{margin-left:100px; width:900px; border:1px solid #BDBDBD; border-top:2px solid #5586EB; border-collapse:collapse;}
	.container .main .academy th{text-align:center; padding:5px 0; color:#5586EB; background:rgba(233,233,233,0.65);}
	.container .main .academy td{padding:5px 0 5px 10px;}

</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->
<div id="side">
	<jsp:include page="academysidebar.jsp" flush="true | false"/>
</div>

<div class="container">
	<div class="main">

<table width="1100" border="1" class="academy">
<tr>
<th width="50">번호</th><th width="300">학술행사명</th><th width="300">행사시간</th><th width="300">신청기간</th><th width="100"> 학술행사인원</th>
<tr/>
<c:forEach var="dto" items="${list }">
<tr>
<td>${dto.asid}</td><td><a href="/antman/academycontent.do?id=${sessionScope.memId }&asid=${dto.asid}&drid=${dto.drid }&drname=${dto.drname }&asend=${dto.asend}">${dto.assubject}</a></td><td>${dto.astime} ~ ${dto.astimeend}</td><td>

${dto.asstart} ~ ${dto.asend}</td>
<td><c:if test="${dto.asmin ne  dto.asmax}">
${dto.asmin}/${dto.asmax}
</c:if>
<c:if test="${dto.asmin eq  dto.asmax}">
만원
</c:if>
</td>
</tr>
</c:forEach>
<tr>
<c:if test="${sessionScope.memauth eq 'D' &&  sessionScope.memId ne null }">
<td colspan="5">
<center><input type="button" value="글쓰기" onclick="javascript:window.location='/antman/academyform.do'"></center>
</td>
</c:if>
</tr>

</table>
<br/>
<div class="paging"><center>${pagingHtml}</center></div>

	</div>
</div>

<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>