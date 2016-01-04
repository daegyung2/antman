<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <title>거지같아서 그냥 기본으로</title>
    
    
    <div class="container">
    <div class="row">
		<div class="col-md-12">
			<strong><h2>의료진</h2></strong>&nbsp;클릭 시 해당 자음으로 시작하는 진료과 목록을 볼 수 있습니다.<br/>
			<br/>
			
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
		                                <div class="col-md-12">
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
                                        
                      
                                      
  										<table width="600"border="0">
          								<tr>
          								<c:forEach var="dto" items="${list}" varStatus="status">
         							    <td width="200"><a href="/antman/appointmentdetailsearch.do?dpname=${dto.dpname}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}&id=${id}">${dto.dpname}</a></td> 
          							    <c:if test="${status.count%3==0}">		
          							    <tr>
										</c:if>	
         							    </c:forEach>
         							    </tr> 
         							    </table>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="b">
                                        <c:forEach var="dto" items="${lista}">
  										<table border="0">
          								<tr>
         							    <td><a href="/antman/appointmentdetailsearch.do?dpname=${dto.dpname}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}&id=${id}">${dto.dpname}</a></td>
          							    </tr>         
          								</table>
         							    </c:forEach>
                                        
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="messages">
                                        <c:forEach var="dto" items="${listb}">
  										<table border="0">
          								<tr>
         							    <td><a href="/antman/appointmentdetailsearch.do?dpname=${dto.dpname}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}&id=${id}">${dto.dpname}</a></td>
          							    </tr>         
          								</table>
         							    </c:forEach>
                                        
                                        </div>
                                         <div role="tabpanel" class="tab-pane" id="settings">
                                         <c:forEach var="dto" items="${listc}">
  										<table border="0">
          								<tr>
         							    <td><a href="/antman/appointmentdetailsearch.do?dpname=${dto.dpname}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}&id=${id}">${dto.dpname}</a></td>
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
    
    
<br/>


<c:if test="${dpname != null}">
	<table width="1200" border= "1">
      <tr>
        <th width="20%" >사진</th>
        <th width="80%">정보</th>
        
      </tr>
    </thead>
    <tbody>
                    <c:forEach var="tmdto" items="${tmslist}">
                        <tr>
                        	<td height="50"><img src="${tmdto.drimg1 }"  width="181" height="236"></td>
                            <td class="shit"><h3 ><a href="/antman/appointmentdetailsearch.do?drname=${tmdto.drname}&drid=${tmdto.drid }&dpname=${tmdto.dpname}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}&id=${id}">${tmdto.drname}</a></h3><br/>
                             진료과 : ${tmdto.dpname}<br/>
                             <br/>
                             
                             전문분야  <h6>${tmdto.exarea}</h6>
                             <input type="button" value="의료진 소개 더보기" onClick="window.open('/antman/doctorprofile.do?drid=${tmdto.drid}','_blank','height=700,width=1000,top=0,left=0')"/>
                             
                             </td>
                            
                        </tr>
                        </c:forEach>
    
  </table>



</c:if>

<c:if test="${drname != null}">
<br/>
<br/>
<h3>날짜를 선택해주세요</h3>
<form action="/antman/appointmentdetailsearch.do" method="post">
<input type="hidden" name="drid" value="${drid }"/>
<input type="hidden" name="jumin1" value="${jumin1 }"/>
<input type="hidden" name="jumin2" value="${jumin2 }"/>
<input type="hidden" name="drname" value="${drname }"/>
<input type="hidden" name="dpname" value="${dpname }"/>
<input type="hidden" name="name" value="${name }"/>
<input type="hidden" name="sid" value="${sid }"/>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Locale"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.sql.Timestamp"%>    

<html>
<head>

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script type="text/javascript">
$(function() {
   $("#sa_tourgodate").datepicker({
      dateFormat: 'yy-mm-dd',
      monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
      dayNamesMin: ['일','월','화','수','목','금','토'],
      changeMonth: true,         //월 변경 가능
      changeYear: true,         //년 변경 가능
      showMonthAfterYear: true,   //년 뒤에 월 표시

   });
});
</script>
</head>
<body>
<%
SimpleDateFormat sdm = new SimpleDateFormat("yyyy-MM-dd");
Calendar cal = Calendar.getInstance();
String today = sdm.format(cal.getTime());
%>
<p>
<input type="text" id="sa_tourgodate" name="ymd" value="<%=today%>" size="6"/><%--value="" 안에 오늘 날짜가 표시되도록 코딩해야 함 : tourbackdate 계산 알고리즘을 응용할까?--%>
</p>
</body>
</html>
<input type="submit" value="진료날짜검색하기">
</form>
<c:if test="${sdlist ne null}">
<h3>진료가능시간입니다.</h3>
<form action="/antman/appointmentdetailsearch.do" method="post">

<table width="800" border="1"> 
<tr>
<td width="100">스케쥴번호</td>
<td width="200">진료선생님</td><td width="200">진료과</td><td width="400">진료가능시간</td></tr>

<tr>
<c:forEach var="addto" items="${sdlist}">
<td width="100">${addto.sid}</td>
<td width="200">${addto.drname}</td><td width="200">${addto.dpname}</td><td width="300">

${addto.sdate}<input type="button" value="시간선택하기" onClick="location.href='/antman/appointmentdetailsearch.do?sdate=${addto.sdate}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}&id=${id}&drname=${drname}&drid=${drid }&dpname=${dpname}&sid=${addto.sid }'"/>
</td>
</tr>
</c:forEach>
</table>
</c:if>

<c:if test="${sdlist eq null}">
예약시간이 없습니다.
</c:if>

</c:if>
</form>
<br/>
<br/>

<form action="/antman/appointmentdetailpro.do" method="post">

<table width="800" border="1">
<tr>
<td width="200" >의사이름</td><td><input type="text" name="drname" value="${drname }"/></td></tr>
<input type="hidden" name="drid" value="${drid }"/>
<td width="200">진료과명</td><td><input type="text" name="dpname" value="${dpname }"/></td></tr>
<input type="hidden" name="jumin1" value="${jumin1 }"/>
<input type="hidden" name="jumin2" value="${jumin2 }"/>
<td width="200" >예약자id</td><td><input type="text" name="id" value="${sessionScope.memId}"/></td></tr>
<td width="200" >예약자성함</td><td><input type="text" name="name" value="${name }"/></td></tr>
<td width="200" >스케쥴번호</td><td><input type="text" name="sid" value="${sid }"/></td></tr>
<td width="200" >예약시간</td><td><input type="text" name="adate" value="${sdate }"/></td></tr>
</table>
<input type="submit" value="예약하기"/>
</form>







