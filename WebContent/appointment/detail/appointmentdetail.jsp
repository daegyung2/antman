<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <title>�������Ƽ� �׳� �⺻����</title>
    
    
    <div class="container">
    <div class="row">
		<div class="col-md-12">
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
                                        <c:forEach var="dto" items="${list}">
  										<table border="0">
          								<tr>
         							    <td><a href="/antman/appointmentdetailsearch.do?dpname=${dto.dpname}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}">${dto.dpname}</a></td>
          							    </tr>         
          								</table>
         							    </c:forEach>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="b">
                                        <c:forEach var="dto" items="${lista}">
  										<table border="0">
          								<tr>
         							    <td><a href="/antman/appointmentdetailsearch.do?dpname=${dto.dpname}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}">${dto.dpname}</a></td>
          							    </tr>         
          								</table>
         							    </c:forEach>
                                        
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="messages">
                                        <c:forEach var="dto" items="${listb}">
  										<table border="0">
          								<tr>
         							    <td><a href="/antman/appointmentdetailsearch.do?dpname=${dto.dpname}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}">${dto.dpname}</a></td>
          							    </tr>         
          								</table>
         							    </c:forEach>
                                        
                                        </div>
                                         <div role="tabpanel" class="tab-pane" id="settings">
                                         <c:forEach var="dto" items="${listc}">
  										<table border="0">
          								<tr>
         							    <td><a href="/antman/appointmentdetailsearch.do?dpname=${dto.dpname}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}">${dto.dpname}</a></td>
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
font-family:"��������","nanum gothic", sans-serif;
			color : #4285F4 ;
            font-weight : bold;
			
}
</style>
<div class="container">
  <h4 class="shit"><span class="group">${tmsdto.dpname}</span> �Ƿ��� ����Դϴ�.</h4>
           
  <table class="table">
    <thead>
      <tr>
        <th width="20%" >����</th>
        <th width="80%">����</th>
        
      </tr>
    </thead>
    <tbody>
                    <c:forEach var="tmdto" items="${tmslist}">
                        <tr>
                        	<td height="50"><img src="/antman/treatmentteam/dcimg/youngsik.jpg"></td>
                            <td class="shit"><h3 ><a href="/antman/appointmentdetailsearch.do?drname=${tmdto.drname}&dpname=${tmdto.dpname}&jumin1=${jumin1}&jumin2=${jumin2}&name=${name}">${tmdto.drname}</a></h3><br/>
                             ����� : ${tmdto.dpname}<br/>
                             <br/>
                             
                             �����о�  <h6>${tmdto.exarea}</h6>
                             <input type="button" value="�Ƿ��� �Ұ� ������" onClick="window.open('/antman/treatmentteam/doctorprofile.jsp','_blank','height=700,width=1000,top=0,left=0')"/>
                             
                             </td>
                            
                        </tr>
                        </c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>

</c:if>

<br/>
<br/>
<form action="/antman/appointmentdetailpro.do" method="post">
<table width="800" border="1">
<tr>
<td width="800" colspan="2">�ǻ��̸�<input type="text" name="drname" value="${drname }"/></td></tr>
<td width="800" colspan="2">�������<input type="text" name="dpname" value="${dpname }"/></td></tr>
<td width="800" colspan="2">�ֹ�1<input type="hidden" name="jumin1" value="${jumin1 }"/></td></tr>
<td width="800" colspan="2">�ֹ�2<input type="hidden" name="jumin2" value="${jumin2 }"/></td></tr>
<td width="800" colspan="2">�����ڼ���<input type="text" name="name" value="${name }"/></td></tr>
<td width="300">�⵵</td><td width="500"><input type="text" name="year"/></td></tr>
<td width="300">��</td><td width="500"><input type="text" name="month"/></td></tr>
<td width="300">��</td><td width="500"><input type="text" name="day"/></td></tr>
<td width="300">�ð�</td><td width="500"><input type="text" name="hour"/></td></tr>
<td width="300">��</td><td width="500"><input type="text" name="minute"/></td></tr>
<input type="submit" value="�����ϱ�"/>
</table>
</form>



