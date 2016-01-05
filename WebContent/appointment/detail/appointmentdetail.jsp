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
	<jsp:include page="/treatmentteam/treatmentteamtop.jsp" flush="true | false"/>
</div>

<!-- container ���� -->
<div id="side">
	<jsp:include page="/appointment/appointmentsidebar.jsp" flush="true | false"/>
</div>

<div class="container">
    <title>�������Ƽ� �׳� �⺻����</title>
    
    
 
    
		<div class="ssibal">
			<strong><h2>�Ƿ���</h2></strong>&nbsp;Ŭ�� �� �ش� �������� �����ϴ� ����� ����� �� �� �ֽ��ϴ�.<br/>
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
    
    
<br/>


<c:if test="${dpname != null}">

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
font-family:"�������","nanum gothic", sans-serif;
			color : #4285F4 ;
            font-weight : bold;
			
}
.table{
 margin-left : -15px
}
</style>
<div class="container">
	<div class="table">
  <h4 class="shit"><span class="group">${tmsdto.dpname}</span> �Ƿ��� ����Դϴ�.</h4>
           
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
                            <td class="shit"><h3 ><a href="/antman/appointmentdetailsearch.do?drname=${tmdto.drname}&drid=${tmdto.drid }&dpname=${tmdto.dpname}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}&id=${id}">${tmdto.drname}</a></h3><br/>
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
<h3>��¥�� �������ּ���</h3>
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
<h3>���ᰡ�ɽð��Դϴ�.</h3>
<form action="/antman/appointmentdetailsearch.do" method="post">

<table width="800" border="1"> 
<tr>
<td width="100">�������ȣ</td>
<td width="200">���ἱ����</td><td width="200">�����</td><td width="400">���ᰡ�ɽð�</td></tr>

<tr>
<c:forEach var="addto" items="${sdlist}">
<td width="100">${addto.sid}</td>
<td width="200">${addto.drname}</td><td width="200">${addto.dpname}</td><td width="300">

${addto.sdate}<input type="button" value="�ð������ϱ�" onClick="location.href='/antman/appointmentdetailsearch.do?sdate=${addto.sdate}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}&id=${id}&drname=${drname}&drid=${drid }&dpname=${dpname}&sid=${addto.sid }'"/>
</td>
</tr>
</c:forEach>
</table>
</c:if>

<c:if test="${sdlist eq null}">
����ð��� �����ϴ�.
</c:if>

</c:if>
</form>
<br/>
<br/>

<form action="/antman/appointmentdetailpro.do" method="post">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ȸ������ ��</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
    
    function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.sdate.value )
        {
            alert("��¥�� �����ϼ���.");
            return false;
        }
    }
    </script>
<table width="800" border="1" name="userinput" onSubmit="return checkIt()">
<tr>
<td width="200" >�ǻ��̸�</td><td><input type="text" name="drname" value="${drname }"/></td></tr>
<input type="hidden" name="drid" value="${drid }"/>
<td width="200">�������</td><td><input type="text" name="dpname" value="${dpname }"/></td></tr>
<input type="hidden" name="jumin1" value="${jumin1 }"/>
<input type="hidden" name="jumin2" value="${jumin2 }"/>
<td width="200" >������id</td><td><input type="text" name="id" value="${sessionScope.memId}"/></td></tr>
<td width="200" >�����ڼ���</td><td><input type="text" name="name" value="${name }"/></td></tr>
<td width="200" >�������ȣ</td><td><input type="text" name="sid" value="${sid }"/></td></tr>
<td width="200" >����ð�</td><td><input type="text" name="adate" value="${sdate }"/></td></tr>
</table>
<input type="submit" value="�����ϱ�"/>
</form>

<table width="400" border="1">
<tr>
<input type="hidden" name="drid" value="${drid }"/>
<input type="hidden" name="jumin1" value="${jumin1 }"/>
<input type="hidden" name="jumin2" value="${jumin2 }"/>
<input type="hidden" name="sid" value="${sid }"/>
<td width="60" >�ǻ��̸�</td>
<td width="60">�������</td>
<td width="60" >������id</td>
<td width="60" >���༺��</td>
<td width="100" >����ð�</td></tr>
<tr>
<td><input type="text" name="drname" value="${drname }"/></td>
<td><input type="text" name="dpname" value="${dpname }"/></td>
<td><input type="text" name="id" value="${sessionScope.memId}"/></td>
<td><input type="text" name="name" value="${name }"/></td>
<td><input type="text" name="adate" value="${sdate }"/></td></tr>
</table>
<input type="submit" value="�����ϱ�"/>
</form>
</div>
</div>





