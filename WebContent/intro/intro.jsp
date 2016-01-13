<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>병원소개 | DB병원</title>

<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }

	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	.container{width:1100px; height:1147px; margin:0 auto;  margin-left:220px; position:relative;}
	.container .main{width:1000px; height:1100px; margin-left:80px; top:30px; position:relative;}
	.container .main .intro{margin-left:0px;}
	.container .main table{border:1px solid #BDBDBD; }
</style>


<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->
<div id="side">
	<jsp:include page="introsidebar.jsp" flush="true | false"/>
</div>

<div class="container">
	<div class="main">
	
	<table width="960" border-collapse="collapse" border="1" align="center" class="intro" >
    <tr align="center">
    <td width="240" height="240"><font size="5"><a href="/antman/intro/guide.jsp"/><b>병원소개</b></a></font><br/><br/> 
    DB Hospital 은 존경받는 병원으로서의<br/> 사회적 책임을 다하겠습니다.<br/><br/><img src="/antman/img/intro1.png" width="130" height="100"/> </td>
     <td width="240" height="240"><font size="5"><a href="/antman/intro/mission.jsp"/><b>미션과비전</b></font></a><br/><br/>
     글로벌 메디컬 콤플렉스,<br/>DB Hospital이 만들어가고 있습니다.<br/><br/><img src="/antman/img/intro5.png"/></td>
    <td width="240" height="240"><font size="5"><a href="/antman/intro/present.jsp"/><b>현황</b></a></font><br/><br/>
          앞선 의술, <br/>더 큰 사랑을 실천하고 있습니다.<br/><br/> <img src="/antman/img/intro2.png"/></td>
    <td width="240" height="240"><font size="5"><a href="/antman/intro/greet.jsp"/><b>병원장인사말</b></a></font><br/><br/>
     함께하는 우리사회를 보다 건강하게,<br/> 더불어 행복하게.<br/><br/> <img src="/antman/img/intro3.png"/></td>
    <tr>
    </table>
    <br/><br/><br/>

	<div class="containers">

<table width="1000" border="0" align="center">
<tr align="center"><td><br/><br/>
<font size="5"><b>문화갤러리</b></font><br/><br/>
DB hospital 문화갤러리 입니다.</td>
</td></tr>
</table>
<br/>
<table>
<tr>

<c:forEach var="dto" items="${listc}" varStatus="status" begin="0" end="3">
			<td height="150" align="center" width="350">
			<center>
			<a href="/antman/cultureboardcontent.do?cuid=${cuid}">
			<img src="${dto.cuimg}" width="200" height="280"/></a><br/>
			</center>
			</td>
			
			
				<c:if test="${status.count%4==0}">
				<tr>
				</c:if>
    </c:forEach>

</tr>
</table>

	</div>
</div>


</div>
</div>



<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>
   
    