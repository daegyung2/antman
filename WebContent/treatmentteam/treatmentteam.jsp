<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>





      
<table width="1200" border="0">
<tr><td colspan ="2"><jsp:include page="/mainpage/maintop.jsp" flush="true | false"/></td></tr>
<tr>
<td width="200">
<jsp:include page="treatmentsidebar.jsp" flush="true | false"/>
</td>
<td>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>의료진/진료과</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        /***
Bootstrap Line Tabs by @keenthemes
A component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme
Licensed under MIT
***/

/* Tabs panel */
.tabbable-panel {
  border:1px solid #eee;
  padding: 10px;
}

/* Default mode */
.tabbable-line > .nav-tabs {
  border: none;
  margin: 0px;
}
.tabbable-line > .nav-tabs > li {
  margin-right: 2px;
}
.tabbable-line > .nav-tabs > li > a {
  border: 0;
  margin-right: 0;
  color: #737373;
}
.tabbable-line > .nav-tabs > li > a > i {
  color: #a6a6a6;
}
.tabbable-line > .nav-tabs > li.open, .tabbable-line > .nav-tabs > li:hover {
  border-bottom: 4px solid #fbcdcf;
}
.tabbable-line > .nav-tabs > li.open > a, .tabbable-line > .nav-tabs > li:hover > a {
  border: 0;
  background: none !important;
  color: #333333;
}
.tabbable-line > .nav-tabs > li.open > a > i, .tabbable-line > .nav-tabs > li:hover > a > i {
  color: #a6a6a6;
}
.tabbable-line > .nav-tabs > li.open .dropdown-menu, .tabbable-line > .nav-tabs > li:hover .dropdown-menu {
  margin-top: 0px;
}
.tabbable-line > .nav-tabs > li.active {
  border-bottom: 4px solid #57b2f4;
  position: relative;
}
.tabbable-line > .nav-tabs > li.active > a {
  border: 0;
  color: #333333;
}
.tabbable-line > .nav-tabs > li.active > a > i {
  color: #404040;
}
.tabbable-line > .tab-content {
  margin-top: -3px;
  background-color: #fff;
  border: 0;
  border-top: 1px solid #eee;
  padding: 15px 0;
}
.portlet .tabbable-line > .tab-content {
  padding-bottom: 0;
}

/* Below tabs mode */

.tabbable-line.tabs-below > .nav-tabs > li {
  border-top: 4px solid transparent;
}
.tabbable-line.tabs-below > .nav-tabs > li > a {
  margin-top: 0;
}
.tabbable-line.tabs-below > .nav-tabs > li:hover {
  border-bottom: 0;
  border-top: 4px solid #fbcdcf;
}
.tabbable-line.tabs-below > .nav-tabs > li.active {
  margin-bottom: -2px;
  border-bottom: 0;
  border-top: 4px solid #f3565d;
}
.tabbable-line.tabs-below > .tab-content {
  margin-top: -10px;
  border-top: 0;
  border-bottom: 1px solid #eee;
  padding-bottom: 15px;
}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
<!--
Bootstrap Line Tabs by @keenthemes
A component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme
Licensed under MIT
-->

<div class="container">
    <div class="row">
		<div class="col-md-12">
			<strong><h2>의료진</h2></strong>&nbsp;클릭 시 해당 자음으로 시작하는 진료과 목록을 볼 수 있습니다.<br/>
			<br/>
			
<!--  		<div class="tabbable-panel">
				<div class="tabbable-line">
					<ul class="nav nav-tabs ">
						<li class="active">
							<a href="#tab_default_1" data-toggle="tab">
							ㄱ-ㄹ </a>
						</li>
						<li>
							<a href="#tab_default_2" data-toggle="tab">
							ㅁ-ㅅ </a>
						</li>
						<li>
							<a href="#tab_default_3" data-toggle="tab">
							ㅇ-ㅈ </a>
						</li>
												<li>
							<a href="#tab_default_3" data-toggle="tab">
							ㅊ-ㅎ </a>
						</li>
												<li>
							<a href="#tab_default_3" data-toggle="tab">
							암병원 </a>
						</li>
												<li>
							<a href="#tab_default_3" data-toggle="tab">
							어린이병원 </a>
						</li>
												<li>
							<a href="#tab_default_3" data-toggle="tab">
							심장병원</a>
						</li>
												<li>
							<a href="#tab_default_3" data-toggle="tab">
							센터 </a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab_default_1">
  <c:forEach var="dto" items="${list}">
  <table border="0">
          <tr>
          <td><a href="/spring/treatmentsearch.do?depart_id=${dto.depart_id}">${dto.dpname}</a></td>
          </tr>
           </c:forEach>
          </table>
						</div>
						<div class="tab-pane" id="tab_default_2">
							<p>
								Howdy, I'm in Tab 2.
							</p>
							<p>
								Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation.
							</p>
							<p>
								<a class="btn btn-warning" href="http://j.mp/metronictheme" target="_blank">
									Click for more features...
								</a>
							</p>
						</div>
						<div class="tab-pane" id="tab_default_3">
							<p>
								Howdy, I'm in Tab 3.
							</p>
							<p>
								Duis autem vel eum iriure dolor in hendrerit in vulputate. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat
							</p>
							<p>
								<a class="btn btn-info" href="http://j.mp/metronictheme" target="_blank">
									Learn more...
								</a>
							</p>
						</div>
					</div>
				</div>
			</div>


</script>
</body>
</html>


-->

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

                                 


  <html lang="en">
<head>
    <meta charset="euc-kr">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! 
    <title>DB Hospital</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        /* USER PROFILE PAGE */
        

 .card {
    margin-top: 20px;
   
    padding: 30px;
    background-color: rgba(214, 224, 226, 0.2);
    -webkit-border-top-left-radius:5px;
    -moz-border-top-left-radius:5px;
    border-top-left-radius:5px;
    -webkit-border-top-right-radius:5px;
    -moz-border-top-right-radius:5px;
    border-top-right-radius:5px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.card.hovercard {
    position: relative;
    padding-top: 0;
    overflow: hidden;
    text-align: center;
    background-color: #fff;
    background-color: rgba(255, 255, 255, 1);
}
.card.hovercard .card-background {
    height: 130px;
}

.card.hovercard .useravatar img {
    width: 100px;
    height: 100px;
    max-width: 100px;
    max-height: 100px;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    border-radius: 50%;
    border: 5px solid rgba(255, 255, 255, 0.5);
}
.card.hovercard .card-info {
    position: absolute;
    bottom: 14px;
    left: 0;
    right: 0;
}
.card.hovercard .card-info .card-title {
    padding:0 5px;
    font-size: 20px;
    line-height: 1;
    color: #262626;
    background-color: rgba(255, 255, 255, 0.1);
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
}
.card.hovercard .card-info {
    overflow: hidden;
    font-size: 20px;
    line-height: 20px;
    color: #737373;
    text-overflow: ellipsis;
}
.card.hovercard .bottom {
    padding: 0 20px;
    margin-bottom: 17px;
}
.btn-pref .btn {
    -webkit-border-radius:0 !important;
}


    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="col-lg-8 col-sm-8">
    <div align="center" class="card hovercard">


        <div align="center" class="card-info"> 

        </div>
    </div>
    <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
        <div class="btn-group" role="group">
            <button type="button" id="stars" class="btn btn-primary" href="#tab1" data-toggle="tab"><span class="glyphicon glyphicon-sta" aria-hidden="true"></span>
                <div class="hidden-xs">ㄱ-ㄹ</div>
            </button>
        </div>
        <div class="btn-group" role="group">
            <button type="button" id="favorites" class="btn btn-defaut" href="#tab2" data-toggle="tab"><span class="glyphicon glyphicon-hear" aria-hidden="true"></span>
                <div class="hidden-xs">ㅁ-ㅅ</div>
            </button>
        </div>
        <div class="btn-group" role="group">
            <button type="button" id="following" class="btn btn-default" href="#tab3" data-toggle="tab"><span class="glyphicon glyphicon-use" aria-hidden="true"></span>
                <div class="hidden-xs">ㅇ-ㅈ</div>
            </button>
        </div>
                <div class="btn-group" role="group">
            <button type="button" id="following" class="btn btn-default" href="#tab4" data-toggle="tab"><span class="glyphicon glyphicon-use" aria-hidden="true"></span>
                <div class="hidden-xs">ㅊ-ㅎ</div>
            </button>
        </div>
                    <div class="btn-group" role="group">
            <button type="button" id="following" class="btn btn-default" href="#tab5" data-toggle="tab"><span class="glyphicon glyphicon-usr" aria-hidden="true"></span>
                <div class="hidden-xs">암병원</div>
            </button>
        </div>
                    <div class="btn-group" role="group">
            <button type="button" id="following" class="btn btn-default" href="#tab6" data-toggle="tab"><span class="glyphicon glyphicon-usr" aria-hidden="true"></span>
                <div class="hidden-xs">어린이병원</div>
            </button>
        </div>
                    <div class="btn-group" role="group">
            <button type="button" id="following" class="btn btn-default" href="#tab7" data-toggle="tab"><span class="glyphicon glyphicon-uer" aria-hidden="true"></span>
                <div class="hidden-xs">심장병원</div>
            </button>
        </div>
                    <div class="btn-group" role="group">
            <button type="button" id="following" class="btn btn-default" href="#tab8" data-toggle="tab"><span class="glyphicon glyphicon-uer" aria-hidden="true"></span>
                <div class="hidden-xs">센터</div>
            </button>
   
        </div>
    </div>        
    

        <div class="well">
      <div class="tab-content">
        <div class="tab-pane fade in active" id="tab1">
          <table width="600" border="0">
          
          <c:forEach var="dto" items="${list}">
          <tr>
          <td><a href="/spring/treatmentsearch.do?depart_id=${dto.depart_id}">${dto.dpname}</a></td>
          </tr>
           </c:forEach>
          </table>
        
        </div>
        <div class="tab-pane fade in" id="tab2">
           <table width="600" border="0">
          
          <c:forEach var="dto" items="${lista}">
          <tr>
          <td><a href="/spring/treatmentsearch.do?depart_id=${dto.depart_id}">${dto.depart_id}</a></td>
          </tr>
           </c:forEach>
          </table>
        </div>
        <div class="tab-pane fade in" id="tab3">
           <table width="600" border="0">
          
          <c:forEach var="dto" items="${listb}">
          <tr>
          <td>${dto.dpname}</td>
          </tr>
           </c:forEach>
          </table>
        </div>
                <div class="tab-pane fade in" id="tab4">
                     <table width="600" border="0">
          
          <c:forEach var="dto" items="${listc}">
          <tr>
          <td>${dto.dpname}</td>
          </tr>
           </c:forEach>
          </table>
        </div>
                <div class="tab-pane fade in" id="tab5">
          <h3>This is tab 5</h3>
        </div>
                <div class="tab-pane fade in" id="tab6">
          <h3>This is tab 6</h3>
        </div>
                <div class="tab-pane fade in" id="tab7">
          <h3>This is tab 7</h3>
        </div>
                <div class="tab-pane fade in" id="tab8">
          <h3>This is tab 8</h3>
        </div>
      </div>
    </div>
    
    </div>
            
    
<script type="text/javascript">
$(document).ready(function() {
$(".btn-pref .btn").click(function () {
    $(".btn-pref .btn").removeClass("btn-primary").addClass("btn-default");
    // $(".tab").addClass("active"); // instead of this do the below 
    $(this).removeClass("btn-default").addClass("btn-primary");   
});
});
</script>
</body>
</html>-->
<br/>



<c:if test="${dpname != null}">
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<style type="text/css">
.shit{
	
	font-weight : bold; 
}
.group{	
font-family:"나눔고딕","nanum gothic", sans-serif;
			color : #4285F4 ;
            font-weight : bold;
			
}
</style>
<div class="container">
  <h4 class="shit"><span class="group">${tmsdto.dpname}</span> 의료진 목록입니다.</h4>
           
  <table class="table">
    <thead>
      <tr>
        <th width="20%" >사진</th>
        <th width="80%">정보</th>
        
      </tr>
    </thead>
    <tbody>
                    <c:forEach var="tmdto" items="${tmslist}">
                        <tr>
                        	<td height="50"><img src="${tmdto.drimg1}" width="181" height="236"></td>
                            <td><h3>${tmdto.drname}</h3><br/>
                             ${tmdto.dpname}</br>
                             <input type="button" value="의료진 소개 더보기" onClick="location.href='/antman/doctorprofile.do?drid=${tmdto.drid}'" />
                             </td>
                            
                        </tr>
                        </c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>

</c:if>

<c:if test="${dpname == no}">
검색결과가 없습니다.</c:if>



</td>
</tr>
</table>