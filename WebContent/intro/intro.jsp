<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        .nav-tabs { border-bottom: 2px solid #DDD; }
    .nav-tabs > li.active > a, .nav-tabs > li.active > a:focus, .nav-tabs > li.active > a:hover { border-width: 0; }
    .nav-tabs > li > a { border: none; color: #666; }
        .nav-tabs > li.active > a, .nav-tabs > li > a:hover { border: none; color: #4285F4 !important; background: transparent; }
        .nav-tabs > li > a::after { content: ""; background: #4285F4; height: 4px; position: absolute; width: 100%; left: 0px; bottom: -1px; transition: all 250ms ease 0s; transform: scale(0); }
    .nav-tabs > li.active > a::after, .nav-tabs > li:hover > a::after { transform: scale(1); }
.tab-nav > li > a::after { background: #21527d none repeat scroll 0% 0%; color: #fff; }
.tab-pane { padding: 15px 0;}
.tab-content{padding:30px; }

.card {background: #FFF none repeat scroll 0% 0%; box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.3); margin-bottom: 30px; }

body{  }
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>




    <table border="1" width="1300" align="center" >
    <tr align="center">
    <td width="320" height="240"><font size="5"><a href="/antman/intro/guide.jsp"/><b>병원소개</b></a></font><br/><br/> 
    DB Hospital 은 존경받는 병원으로서의<br/> 사회적 책임을 다하겠습니다.<br/><br/><img src="/spring/img/intro1.png" width="130" height="100"/> </td>
     <td width="320" height="240"><font size="5"><a href="/antman/intro/mission.jsp"/><b>미션과비전</b></font></a><br/><br/>
     글로벌 메디컬 콤플렉스,<br/>DB Hospital이 만들어가고 있습니다.<br/><br/><img src="/spring/img/intro5.png"/></td>
    <td width="320" height="240"><font size="5"><a href="/antman/intro/present.jsp"/><b>현황</b></a></font><br/><br/>
          앞선 의술, <br/>더 큰 사랑을 실천하고 있습니다.<br/><br/> <img src="/antman/img/intro2.png"/></td>
    <td width="320" height="240"><font size="5"><a href="/antman/intro/greet.jsp"/><b>병원장인사말</b></a></font><br/><br/>
     함께하는 우리사회를 보다 건강하게,<br/> 더불어 행복하게.<br/><br/> <img src="/antman/img/intro3.png"/></td>
    <tr>
    </table>
    <br/><br/><br/>
  <body>
  
<div class="container">
	<div class="row">
		    <div class="col-md-7">
                 <!-- Nav tabs --><div class="card">
                     <ul class="nav nav-tabs" role="tablist">
                          <li role="presentation" class="active"><a href="#a" aria-controls="a" role="tab" data-toggle="tab"><b>공지사항</b></a></li>
                          <li role="presentation"><a href="#b" aria-controls="b" role="tab" data-toggle="tab"><b>뉴스</b></a></li>
                          <li role="presentation"><a href="#messages" aria-controls="c" role="tab" data-toggle="tab"><b>강좌안내</b></a></li>
                      </ul>
                  <!-- Tab panes -->
                      <div class="tab-content">
                      <div role="tabpanel" class="tab-pane active" id="a">
                          
  				      <table border="0">
  						<c:forEach var="dto" items="${list}">
          					<tr>
         					 <td><a href="/antman/mainboardcontent.do?MBid=${dto.MBid}">${dto.subject}</a></td>
          					</tr>  
          			     </c:forEach>
          				</table>
         							  
                        </div>
                        <div role="tabpanel" class="tab-pane" id="b">
                                       
  						<table border="0">
  						<c:forEach var="dto" items="${lista}">
          					<tr>
         			        <td><a href="/antman/newsboardcontent.do?NEid=${dto.NEid}">${dto.subject}</a></td>
          				    </tr>
          				</c:forEach>         
          				</table>
         							   
                                        
                        </div>
                        <div role="tabpanel" class="tab-pane" id="messages">
                                     
  						<table border="0">
  						<c:forEach var="dto" items="${listb}">
          				<tr>
         				<td><a href="/antman/lectureboardcontent.do?LEid=${dto.LEid}">${dto.subject}</a></td>
          				</tr>   
          				</c:forEach>      
          				</table>
         							   
                          
                        </div>                    
		       </div>
		     
          </div>
	</div>
	<table><tr></tr><td>여기에는 뭘 ㄴ넣냐...</td></table>
	
</div>

<table width="660" border="0">
<tr><td><br/><br/>
<font size="5">정기간행물</font><br/><br/>
DB hospital에서 발행되는 정기간행물 입니다.</td>
 <td><img src="/antman/img/intro6.jpg"/>
 

</td></tr>
</table>



</body>

</html>
    
   
    