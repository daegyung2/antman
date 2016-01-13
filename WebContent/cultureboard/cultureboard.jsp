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
	.container{width:1100px; height:1300px; margin:0 auto;  margin-left:220px; position:relative;}
	.container .main{width:1000px; height:1200px; margin-left:80px; top:30px; position:relative;}
	.container .main .intro{margin-left:0px;}
	.container .main table{border:1px solid #BDBDBD; }
</style>


<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->
<div id="side">
	<jsp:include page="/intro/introsidebar.jsp" flush="true | false"/>
</div>

<div class="container">
	<div class="main">

  <h2>문화갤러리</h2>       
  <br/>
 문화갤러리 입니다.<br/>
			 <br/>
             <br/>                     
  <br/>
  <c:if test="${sessionScope.memauth eq 'E'}" >
  <form action="/antman/cultureboardwrite.do" method="post">
  <button type="submit" class="btn btn-primary btn-md" onclick=>글 쓰기</button>
  </form>
  </c:if>
  <table data-toggle="table" data-url="data2.json" data-show-columns="true" data-search="true" data-show-refresh="true" data-show-toggle="true" data-pagination="true">
 
    
    
    	<c:forEach var="dto" items="${list}" varStatus="status">
			<td height="150" align="center" width="350">
			 <td><a href="/antman/cultureboardcontent.do?cuid=${dto.cuid}">
			<img src="${dto.cuimg}" width="250" height="300"/></a><br/><br/>
				<font size="3"><b>
				주제 : ${dto.subject}</b><br/>
				</font>
				일시 : ${dto.reg_date}
				
			</td>
			
			
				<c:if test="${status.count%3==0}">
				<tr>
				</c:if>
    </c:forEach>
   
   
   <%-- 
                <c:forEach var="dto" items="${list}" varStatus="status">
		<tr>
		     <td ><h3>${dto.cuid}</h3></td>
			 <td ><h3><a href="/antman/cultureboardcontent.do?cuid=${dto.cuid}">${dto.subject}</a></h3>
				<br/>
				<a href="/antman/cultureboardcontent.do?cuid=${dto.cuid}"><img src="${dto.cuimg}" width="220" height="250"></a><br/>
				<FONT size="1">
				등록일 : ${dto.reg_date} |
				
			</FONT>
		
		</tr>

</c:forEach>
   
 --%>   
	
  </table>

</div>
<script type="text/javascript">

</script>
</body>
</html>


    