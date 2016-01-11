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
	#top{width:200px; float:top; margin-left:100px; }
	#container{width:1100px; height:2400px; margin:0 auto;  margin-left:220px; margin-top:-20px; position:relative;}
	#container .main{width:1000px; height:2300px; margin-left:50px; top:5px; position:relative;}
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<div id="side">
	<jsp:include page="/intro/introsidebar.jsp" flush="true | false"/>
</div>
<div id="container">
	<div class="main">
	

<table width="1100" border="0" cellspacing="50">
<font size="6"><b>미션/비전</b></font><br/><br/><br/>



<tr>

<td>
<font size="5"><b>Mission</b></font><br/><br/>
<font size="4">끊임없는 도전과 열정으로 높은 수준의 진료, 교육, 연구를 성취함으로써 인류의 건강한 삶에 기여한다.</font><br/><br/>
<img src="/antman/img/mission1.jpg" /></td>
</tr>

<tr>
<td>
<font size="5"><b>Vision</b></font><br/><br/><br/><br/>
<img src="/antman/img/mission2.jpg"/></td>
</tr>

<tr>
<td>
<font size="5"><b>Core Value</b></font><br/><br/><br/><br/>
<img src="/antman/img/mission3.jpg"/></td>
</tr>
</table>

<table width="1100" border="0" cellspacing="50">
<tr>
<td><img src="/antman/img/mission4.gif" width="280" height="100"/></td>
<td><img src="/antman/img/mission5.gif" width="280" height="100"/></td>
</tr>

<tr>
<td><img src="/antman/img/mission6.gif" width="280" height="100"/></td>
<td><img src="/antman/img/mission7.gif" width="280" height="100"/></td>
</tr>

<tr>
<td><img src="/antman/img/mission8.gif" width="280" height="100"/></td>

</tr>

</table>
</div>
</div>

<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>