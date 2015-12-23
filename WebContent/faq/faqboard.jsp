<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" >
<head>
<title>FAQ | 자주하는질문</title>
<style type="text/css">
	body, ul, li, div{ margin:0px; padding:0px; }
	ul{ list-style:none;}
	body{font-size:12px; line-height:1.4; }
	a{ text-decoration:none; }
	
	.container {width:1000px; height:1200px; margin:0 auto; position:relative;}
	.container .content{width:800px; height:1200px; margin-left:100px;}
	.container .content h2{text-align:center; font-size:25px; margin-top:20px;}
	.container .content p{text-align:center; font-size:15px; margin-top:5px; margin-right:40px; float:right;}
	
	.container .main{ width:800px; height:1000px; margin-top:5px; }
	.tabset{ width:800px; height:1000px; margin:20px auto; padding:5px; border:1px solid #333;  }
	.tabset .tabs{ padding:0px 0px; overflow:hidden; margin-left:4px;}
	.tabset .tabs li{ float:left; margin-right:3px;}
	.tabset .tabs li a{ display:block; background:#5586EB; color:#FFFFFF; padding:15px 53px; font-weight:bold; }
	.tabset .tabs li a.on{ border:1px solid #DBDBDB; background:#FFFFFF; color:#333;}
	.tabset .panels div{ width:750px; height:900px; padding:12px 15px 6px; margin-left:10px; margin-top:20px; align:center; border:1px solid #333;}
	.tabset .panels div .sub{width:750px; height:70px; border:1px solid #333; }
	.tabset .panels div .sub #category{width:315px; height:70px; margin-left:10px; position:relative;}
	.tabset .panels div .sub #title{width:315px; height:70px; margin-left:335px; position:relative;}
</style>

<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="tabset.js"></script>

</head>
<body>
<script type="text/javascript"></script>   
<div class="container">
	<div class="content">
	<h2>자주하는질문</h2>
	<p><b>총 <font color="#5586EB">${count}건</font>입니다.</b></p>
	<form action="/antman/faqwrite.do" method="post">
  	<button type="submit" class="btn btn-primary btn-md" onclick=>질문등록하기</button>
  	</form>                    
	<br/>
	<div class="main">
		<div class="tabset">
    		<ul class="tabs">
        	<li><a href="#panel01" class="on">전체</a></li>
        	<li><a href="#panel02">원무정보</a></li>
        	<li><a href="#panel03">진료관련</a></li>
        	<li><a href="#panel04">병원이용</a></li>
        	<li><a href="#panel05">홈페이지 이용</a></li>
        	</ul>   
     	<div class="panels">
    		<div id="panel01">test1
    		<c:forEach var="dto" items="${list}">
				<table border="1" width="700" height="150" >
    			<tr><th width="150" height="30px">${dto.category}</th><td>${dto.subject}</td></tr>
    			<tr><th colspan="2">${dto.content }</th></tr>
    			</table>
			</c:forEach>	
        	</div>
        	<div id="panel02">test2
        		
        	</div>
        	<div id="panel03">test3
        		
        	</div>
        	<div id="panel04">test4
        		
        	</div>
        	<div id="panel05">test5
        		
        	</div>
    	</div>
    	</div>
	</div>
	
	</div>
</div>				
				
${pagingHtml }
</body>
</html>