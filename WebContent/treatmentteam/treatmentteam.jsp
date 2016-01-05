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
	<jsp:include page="treatmentteamtop.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->
<div id="side">
	<jsp:include page="treatmentsidebar.jsp" flush="true | false"/>
</div>

<div class="container">


<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Material design tab style - Bootsnipp.com</title>
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
.tab-pane { padding: 15px 0; }
.tab-content{padding:20px}

.card {background: #FFF none repeat scroll 0% 0%; box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.3); margin-bottom: 30px; }
body{  }
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
		                                <div class="col-md-8">
                                    <!-- Nav tabs --><div class="card">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#a" aria-controls="a" role="tab" data-toggle="tab">ㄱ-ㅁ</a></li>
                                        <li role="presentation"><a href="#b" aria-controls="b" role="tab" data-toggle="tab">ㅁ-ㅅ</a></li>
                                        <li role="presentation"><a href="#messages" aria-controls="c" role="tab" data-toggle="tab">ㅇ-ㅈ</a></li>
                                        <li role="presentation"><a href="#settings" aria-controls="d" role="tab" data-toggle="tab">ㅊ-ㅎ</a></li>
                                         <li role="presentation"><a href="#settings" aria-controls="e" role="tab" data-toggle="tab">암병원</a></li>
                                          <li role="presentation"><a href="#settings" aria-controls="f" role="tab" data-toggle="tab">어린이병원</a></li>
                                           <li role="presentation"><a href="#settings" aria-controls="g" role="tab" data-toggle="tab">심장병원</a></li>
                                            <li role="presentation"><a href="#settings" aria-controls="h" role="tab" data-toggle="tab">센터</a></li>
                                    </ul>
                                  <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="a">
                                        <c:forEach var="dto" items="${list}">
  										<table border="0">
          								<tr>
         							    <td><a href="/antman/treatmentsearch.do?dpname=${dto.dpname}">${dto.dpname}</a></td>
          							    </tr>         
          								</table>
         							    </c:forEach>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="b">
                                        <c:forEach var="dto" items="${lista}">
  										<table border="0">
          								<tr>
         							    <td><a href="/antman/treatmentsearch.do?dpname=${dto.dpname}">${dto.dpname}</a></td>
          							    </tr>         
          								</table>
         							    </c:forEach>
                                        
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="messages">
                                        <c:forEach var="dto" items="${listb}">
  										<table border="0">
          								<tr>
         							    <td><a href="/antman/treatmentsearch.do?dpname=${dto.dpname}">${dto.dpname}</a></td>
          							    </tr>         
          								</table>
         							    </c:forEach>
                                        
                                        </div>
                                         <div role="tabpanel" class="tab-pane" id="settings">
                                         <c:forEach var="dto" items="${listc}">
  										<table border="0">
          								<tr>
         							    <td><a href="/antman/treatmentsearch.do?dpname=${dto.dpname}">${dto.dpname}</a></td>
          							    </tr>         
          								</table>
         							    </c:forEach>
                                        
                                        </div>
</div>
                                </div>
	</div>
</div>
<script type="text/javascript">

</script>
</body>
</html>

                                 




<c:if test="${dpname != null}">


 <h4> ${tmsdto.dpname} 의료진 목록입니다.</h4>
           
  <table width="1200" border="1">
      <tr>
        <th width="20%" >사진</th>
        <th width="80%">정보</th>
        
      </tr>
                    <c:forEach var="tmdto" items="${tmslist}">
                        <tr>
                        	<td height="50"><img src="${tmdto.drimg1}" width="181" height="236"></td>
                            <td><h3>${tmdto.drname}</h3><br/>
                             ${tmdto.dpname}</br>
                             <input type="button" value="의료진 소개 더보기" onClick="location.href='/antman/doctorprofile.do?drid=${tmdto.drid}'" />
                             </td>
                            
                        </tr>
                        </c:forEach>
  
  </table>

</c:if>

<c:if test="${dpname == no}">
검색결과가 없습니다.</c:if>


</div>
</div>
</div>
