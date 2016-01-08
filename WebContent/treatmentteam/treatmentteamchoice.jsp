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
	<jsp:include page="/webservice/webtop.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->
<div id="side">
	<jsp:include page="treatmentsidebar.jsp" flush="true | false"/>
</div>

<div class="container">
	<div class="sub"><b>여기에 글</b></div>
	<div class="main">
	
		<table width="1000" border="0">
			<tr>
				<tr>
			<c:forEach var="dto" items="${cholist}" varStatus="status">
			<td height="150" align="center" width="150">
			<center><img src="${dto.dpimg}" width="110" height="110"/><br/>${dto.dpname}</center>
			</td>
				<c:if test="${status.count%6==0}">
				<tr>
				</c:if>
			</c:forEach>
		</tr>
		</table>
	</div>
</div>

