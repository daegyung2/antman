<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }

	#menutop{width:100%; height:150px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	
	#container{width:1100px; height:700px; margin:0 auto;  margin-left:160px; position:relative;}
	#container .main{width:1000px; height:600px; margin-left:50px; margin-top:150px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>



<div id="container">
	<div class="main">
		<div id="title"><h2>준비 중입니다. (ㅇㅅㅇ)/</h2></div>
	
	</div>
</div>


<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>