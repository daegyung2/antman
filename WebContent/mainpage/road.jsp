<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }

	#menutop{width:100%; height:150px; }
	
	#footer{width:100%; height:300px; margin-bottom:0px;}
	#top{width:200px; float:top; margin-left:100px; }
	.container{width:1100px; height:1300px; margin:0 auto;  margin-left:230px; position:relative;}
	.container .sub{width:800px; height:50px; margin-left:80px; top:0px; position:relative;}
	.container .sub b{font-size:22px; color:#000000;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:30px; position:relative;}
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	#menutop{width:100%; height:150px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	#container{width:1100px; height:850px; margin:0 auto;  margin-left:75px; position:relative;}
	#container .main{width:1000px; height:700px; margin-left:230px; margin-top:-17px; position:relative}
	#container .main #title{width:800px; margin-left:-23px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; text-align:center; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>



<div id="container">
	<div class="main"><br/><br/>
		
	
	<jsp:include page="/mainpage/map.jsp" flush="true | false"/><br/><br/>
	
	<div>
	<h2><b>오시는길</b></h2><br/>
	서울특별시 강남구 역삼동 823-24 남도빌딩
	
	</div>

		</div>
		
		
	</div>
	
<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>
    