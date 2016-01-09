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
	.ssibal {margin-left: 230px;}
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container ���� -->
<div id="side">
	<jsp:include page="/appointment/appointmentsidebar.jsp" flush="true | false"/>
</div>

<div class="container">
    <title>�󼼿���</title>
    
    <style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:270px; margin:0 auto;  margin-left:180px; position:relative; margin-bottom: 50px;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:-17px; position:relative}
	#container .mains{width:1000px; height:1100px; margin-left:50px; margin-top:-17px; position:relative}
	#container .mains table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; width:765px;}
	 
	#container .main #title{width:500px; margin-left:-140px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; width:765px;}
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
	.table{
 margin-left : -15px;
 width: 780px;
}
.shitsd{font-size : 15pt; font-weight : bold;}
.shit{
	
	font-weight : bold; 
}
.shits{
	font-size : 20pt;
	font-weight : bold; 
}
.group{	
font-family:"�������","nanum gothic", sans-serif;
			color : #4285F4 ;
            font-weight : bold;
			
}
</style>
<div id="container">
	<div class="main">
		<div id="title"><h2>���ó����Դϴ�.</h2></div>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">


    function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.dpname.value)
        {
            alert("������������ϼ���");
            return false;
        }else if(!userinput.drname.value){
        	
            alert("�ǻ縦 �����ϼ���");
            return false;
        }else if(!userinput.adate.value){
        	
            alert("����ð��� �����ϼ���");
            return false;
     
        }else{}
    }
    </script>

 <form action="/antman/appointmentdetailpro.do" name="userinput" onSubmit="return checkIt()">
<table width="400" border="3" >
<tr align="center">

<td width="10" >
<input type="hidden" name="drid" value="${drid }"/>
<input type="hidden" name="jumin1" value="${jumin1 }"/>
<input type="hidden" name="jumin2" value="${jumin2 }"/>
<input type="hidden" name="id" value="${sessionScope.memId}"/>
<input type="hidden" name="name" value="${name}"/>
<input type="hidden" name="drname" value="${drname }"/>
<input type="hidden" name="dpname" value="${dpname }"/>
<input type="hidden" name="sid" value="${sid }"/>
<input type="hidden" name="adate" value="${sdate }"/>
<h4 class="shit"><span class="group">������</span></h4></td>
<td width="10"><h4 class="shit"><span class="group">�����</span></h4></td>
<td width="10" ><h4 class="shit"><span class="group">������</span></td>
<td width="40" ><h4 class="shit"><span class="group">������</span></td>
<td width="40" ><h4 class="shit"><span class="group">����Ϸ�</span></td></tr>
<tr align = "center">
<td><img src="${drimg1 }"  width="80" height="100"></br><h4 class="shit">${drname}</h4></td>
<td><h4><h4 class="shit">${dpname}</h4></h4></td>
<td><h4><h4 class="shit">${name}</h4></h4></td>
<td><h4><h4 class="shit">${sdate}</h4></h4></td>
<td><input type="submit" value="�����ϱ�"/></td></tr>
</table>

</form>
</div>
</div>

<br/>
 
    <c:if test="${tmslist == null}">
		<div class="ssibal">
			<h4 class="shit"><span class="group">�����</span>�� �����ϼ���</h4>
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

.card {background: #FFF none repeat scroll 0% 0%; box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.3); margin-left:-10px; margin-bottom: 30px; }
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
                                        <li role="presentation" class="active"><a href="#a" aria-controls="a" role="tab" data-toggle="tab">��-��</a></li>
                                        <li role="presentation"><a href="#b" aria-controls="b" role="tab" data-toggle="tab">��-��</a></li>
                                        <li role="presentation"><a href="#messages" aria-controls="c" role="tab" data-toggle="tab">��-��</a></li>
                                        <li role="presentation"><a href="#settings" aria-controls="d" role="tab" data-toggle="tab">��-��</a></li>
                                         <li role="presentation"><a href="#settings" aria-controls="e" role="tab" data-toggle="tab">�Ϻ���</a></li>
                                          <li role="presentation"><a href="#settings" aria-controls="f" role="tab" data-toggle="tab">��̺���</a></li>
                                           <li role="presentation"><a href="#settings" aria-controls="g" role="tab" data-toggle="tab">���庴��</a></li>
                                            <li role="presentation"><a href="#settings" aria-controls="h" role="tab" data-toggle="tab">����</a></li>
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
                                        <c:forEach var="dto" items="${lista}" varStatus="status">
  										<table border="0">
          								<tr>
         							    <td><a href="/antman/appointmentdetailsearch.do?dpname=${dto.dpname}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}&id=${id}">${dto.dpname}</a></td>
          							    <c:if test="${status.count%3==0}">		
          							    <tr>
										</c:if>	
          							    </tr>         
          								</table>
         							    </c:forEach>
                                        
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="messages">
                                        <c:forEach var="dto" items="${listb}" varStatus="status">
  										<table border="0">
          								<tr>
         							    <td><a href="/antman/appointmentdetailsearch.do?dpname=${dto.dpname}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}&id=${id}">${dto.dpname}</a></td>
          							     <c:if test="${status.count%3==0}">		
          							    <tr>
										</c:if>	
          							    </tr>         
          								</table>
         							    </c:forEach>
                                        
                                        </div>
                                         <div role="tabpanel" class="tab-pane" id="settings">
                                         <c:forEach var="dto" items="${listc}" varStatus="status">
  										<table border="0">
          								<tr>
         							    <td><a href="/antman/appointmentdetailsearch.do?dpname=${dto.dpname}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}&id=${id}">${dto.dpname}</a></td>
          							      <c:if test="${status.count%3==0}">		
          							    <tr>
										</c:if>	
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
 </c:if>   
    
<br/>

<c:if test="${dpname != null && drname == null}">

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
.shitsd{
	margin-left : 110px;
	font-weight : bold; 
}
.group{	
font-family:"�������","nanum gothic", sans-serif;
			color : #4285F4 ;
            font-weight : bold;
			
}

.table{
 margin-left : 110px;
 width: 780px;
}
</style>
<div class="container">
	<div class="table">
  <h4 class="shitsd"><span class="group">${tmsdto.dpname}</span> �������� �����ϼ���</h4>
           
  <table class="table">
    <thead>
      <tr>
        <th width="20%" >����</th>
        <th width="50%">����</th>
        
      </tr>
    </thead>
    <tbody>
                    <c:forEach var="tmdto" items="${tmslist}">
                        <tr>
                        	<td height="50"><img src="${tmdto.drimg1 }"  width="181" height="236"></td>
                            <td class="shit"><h3 ><a href="/antman/appointmentdetailsearch.do?drname=${tmdto.drname}&drid=${tmdto.drid }&dpname=${tmdto.dpname}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}&id=${id}&drimg1=${tmdto.drimg1}">${tmdto.drname}</a></h3><br/>
                             ����� : ${tmdto.dpname}<br/>
                             <br/>
                             
                             �����о�  <h6>${tmdto.exarea}</h6>
                             <input type="button" value="�Ƿ��� �Ұ� ������" onClick="window.open('/antman/doctorprofile.do?drid=${tmdto.drid}','_blank','height=700,width=1000,top=0,left=0')"/>
                             
                             </td>
                            
                        </tr>
                        </c:forEach>
    
  </table>



</c:if>

<c:if test="${drname != null}">

<br/>
<br/>

<div id="container">
	<div class="mains">
  <h4 class="shitsd"><span class="group">���ᳯ¥</span>�� �����ϼ���</h4>
<form action="/antman/appointmentdetailsearch.do" method="post">
<input type="hidden" name="drid" value="${drid }"/>
<input type="hidden" name="jumin1" value="${jumin1 }"/>
<input type="hidden" name="jumin2" value="${jumin2 }"/>
<input type="hidden" name="drname" value="${drname }"/>
<input type="hidden" name="dpname" value="${dpname }"/>
<input type="hidden" name="name" value="${name }"/>
<input type="hidden" name="sid" value="${sid }"/>
<input type="hidden" name="drimg1" value="${drimg1 }"/>
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
      monthNamesShort: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'],
      dayNamesMin: ['��','��','ȭ','��','��','��','��'],
      changeMonth: true,         //�� ���� ����
      changeYear: true,         //�� ���� ����
      showMonthAfterYear: true,   //�� �ڿ� �� ǥ��

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
<input type="text" id="sa_tourgodate" name="ymd" value="<%=today%>" size="6"/><%--value="" �ȿ� ���� ��¥�� ǥ�õǵ��� �ڵ��ؾ� �� : tourbackdate ��� �˰����� �����ұ�?--%>
</p>
</body>
</html>
<input type="submit" value="���ᳯ¥�˻��ϱ�">
</form>
<c:if test="${sdlist ne null}">
  <h4 class="shitsd"><span class="group">${ymd}</span> ���ᰡ�� �ð��Դϴ�.</h4>
<form action="/antman/appointmentdetailsearch.do" method="post">

<table width="600" border="1"> 
<tr align="center">

<td width="200">���ἱ����</td><td width="200">�����</td><td width="400">���ᰡ�ɽð�</td></tr>

<tr align="center">
<c:forEach var="addto" items="${sdlist}">

<td width="200" align="center" >${addto.drname}</td><td width="200" align="center" >${addto.dpname}</td><td width="300" align="center">
${addto.sdate}<input type="button" value="�ð������ϱ�" onClick="location.href='/antman/appointmentdetailsearch.do?sdate=${addto.sdate}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}&id=${id}&drname=${drname}&drid=${drid }&dpname=${dpname}&drimg1=${drimg1}&sid=${addto.sid }'"/>
</td>
</tr>
</c:forEach>
</table>
</c:if>
<c:if test="${sdlist eq null }">
����ð��� �����ϴ�.
</c:if>


</form>
<br/>
<br/>

</div>
</div>

</c:if>
</div>




