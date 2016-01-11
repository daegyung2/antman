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
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:-17px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>

<div id="side">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</div>


<div id="container">
	<div class="main">
		<div id="title"><h2>������</h2></div>
		
<center>
<table width="600" border="1">


<tr>
<!--  <script language="javascript">

<!-- function popups()
{
	var yn = window.confirm("��� �Ͻðڽ��ϱ�?");
 
  }
</script>
function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.jumin1.value  || !userinput.jumin2.value )
        {
            alert("�ֹε�Ϲ�ȣ�� �Է��ϼ���");
            return false;
        }else if(userinput.agree.value == "no" ){
        	
            alert("�����ĺ���ȣ ó���� �����ϼž��մϴ�.");
            return false;
     
        } -->
<form action="/antman/dscheduleform.do" method="post" >
<th width="200">�̸��˻�</th><td width="400" colspan = "4">
<input type="hidden" name="drid" value="${sessionScope.memdrid}">
<input type="hidden" name="drname" value="${sessionScope.memdrnamed}">
<select name="name" >
<c:forEach var="dtos" items="${slist }">
<option value="${dtos.name}">${dtos.name}</option>
</c:forEach>
</select>&nbsp;<input type="submit" value="�̸��˻�"></td>
</form>
</tr>
<tr>
<form action="/antman/dscheduleform.do" method="post">
<input type="hidden" name="name" value="${name}">
<input type="hidden" name="drid" value="${sessionScope.memdrid}">
<input type="hidden" name="drname" value="${sessionScope.memdrnamed}">
<th width="200">���̵�˻�</th><td width="400" colspan = "4"><select name="id" >
<c:forEach var="dtoid" items="${nlist }">
<option value="${dtoid.id}">${dtoid.id}</option>&nbsp;
</c:forEach>
</select>
<input type="submit" id="idselect" value="���̵���"></td>
</form>
</tr>
<tr>

<form action="/antman/dscheduleform.do" method="post">
<th width="200">�����Ϲ�ȣ</th><td width="400" colspan = "4">
<c:if  test="${!empty mlist}"> 
<input type="hidden" name="drid" value="${sessionScope.memdrid}">
<input type="hidden" name="drname" value="${sessionScope.memdrnamed}">
<input type="hidden" name="dpname" value="${ddto.dpname}">
<input type="hidden" name="id" value="${ldto.id}">

<select name="mid" >
<c:forEach var="dtom" items="${mlist }">
<option value="${dtom.mid}">${dtom.mid}</option>
</c:forEach>
</select>&nbsp;<input type="submit" value="��Ϲ�ȣ�˻�">
</c:if>
<c:if test="${empty mlist}">
�������� �����ϴ�.
</c:if>

</td>
</form></td>
</tr>
</table>
<br/>


<table width="600" border="1">
<form action="/antman/scheduleresult.do" method="post">

<tr>
<th width="200">�����ȣ</th><td width="300" colspan = "4"><c:if test="${!empty rdto}"><input type="hidden" name="mid" value="${rdto.mid }">${rdto.mid }</c:if>
<c:if test="${empty rdto}"><input type="hidden" name="mid" value="0"></c:if>
</td>
</tr>
<tr>
<th width="200">�ǻ��ȣ</th><td width="300" colspan = "4"><input type="hidden" name="drid" value="${sessionScope.memdrid}">${sessionScope.memdrid}</td>
</tr>
<tr>
<th width="200">�ǻ��̸�</th><td width="300" colspan = "4"><input type="hidden" name="drname" value="${sessionScope.memname}">${sessionScope.memname}</td>
</tr>
<tr>
<th width="200">�����</th><td width="300" colspan = "4"><input type="hidden" name="dpname" value="${ddto.dpname }">${ddto.dpname }</td>
</tr>
<tr>
<th width="200">ȯ��id</th><td width="300" colspan = "4"><input type="hidden" name="id" value= "${ldto.id}">${ldto.id}</td>
</tr>
<tr>
<th width="200">ȯ���̸�</th><td width="300" colspan = "4"><input type="hidden" name="name" value="${ldto.name}">${ldto.name}</td>
</tr>
<tr>
<th width="200">�ֹι�ȣ</th><td width="300" colspan = "4">${adto.jumin1 }<input type="hidden" name="jumin1" value="${adto.jumin1 }"><input type="hidden" name="jumin2" value="${adto.jumin2 }"></td>
</tr>
<tr>
<th width="200">����</th><td width="300" colspan = "4"><input type="hidden" name="age" value="${ldto.age}">${ldto.age}</td>
</tr>
<tr>
<th width="200">����</th><td width="300" colspan = "4"><input type="hidden" name="gender" value="${ldto.gender}">${ldto.gender}</td>
</tr>
<tr>
<th width="200">����1</th><td width="300" colspan = "4"><input type="text" name="symptom1" value="${rdto.symptom1 }"></td>
</tr>
<tr>
<th width="200">����2</th><td width="300" colspan = "4"><input type="text" name="symptom2" value="${rdto.symptom2 }"></td>
</tr>
<tr>
<th width="200">����3</th><td width="300" colspan = "4"><input type="text" name="symptom3" value="${rdto.symptom3 }"></td>
</tr>
<tr>
<th width="200">����4</th><td width="300" colspan = "4"><input type="text" name="symptom4" value="${rdto.symptom4 }"></td>
</tr>
<tr>
<th width="200">��������</th><td width="300" colspan = "4"><input type="text" name="treattype" value="${rdto.treattype }"></td>
</tr>
<tr>
<th >����Ϸ� ���� �ð�</th><td width="80">
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
   $("#sa_tourgodate1").datepicker({
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
SimpleDateFormat sdm1 = new SimpleDateFormat("yyyy-MM-dd");
Calendar cal1 = Calendar.getInstance();
String todays = sdm1.format(cal1.getTime());
%>
<p>
<input type="text" id="sa_tourgodate1" name="treatdate" value="<%=todays%>" size="6"/><%--value="" �ȿ� ���� ��¥�� ǥ�õǵ��� �ڵ��ؾ� �� : tourbackdate ��� �˰����� �����ұ�?--%>
</p>
</body>
</html>
</td>

<td colspan="3">
${rdto.treatdate }
</td>
</tr>
<tr>
<th width="200">ó�����ø���</th><td width="300" colspan = "4"><input type="file" name="prescription" value=""></td>
</tr>
<tr>
<th width="200">����Ȯ�μ��ø���</th><td width="300" colspan = "4"><input type="file" name="treatConfirm" value=""></td>
</tr>

</table>
<br/>


</center>
<c:if  test="${!empty ldto && empty mlist}"> 
 <center>
<input type="submit" value="���">
</center> 
</c:if>


 </center>  
 
 
 
 <c:if  test="${!empty mlist && !empty rdto}"> 
 <center>

<input type="submit" value="����" >
<input type="button" value="����" onclick="javascript:window.location='/antman/deleteresult.do?mid=${rdto.mid }'">
</center> 
</c:if>
	</div>
</div>
</form>
</table>

   
   