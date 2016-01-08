<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�󼼿���������</title>

<style type="text/css">
	body{margin:0px; padding:0px;}
	a{ text-decoration:none; }
	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#container{ width:1100px; height:1500px; margin:0 auto; margin-left:250px; position:relative;}
	#container .main{ width:1000px; height:1400px; margin-left:50px; position:relative}
	#container .main #main_top{ width:970px; height:70px; margin-top:35px; font-size:15px; line-height:1.8;}
	#container .main #btn{ width:150px; height:30px; margin-top:-38px; margin-right:20px; background:#5586EB; font-size:14px; position:relative; float:right;}
	#container .main #btn a{ width:140px; height:20px; padding-left:9px; padding-top:9px;}
	#container .main #title_1{font-size:30px; left:0px; position:relative; margin-top:30px;}
	#container .main .content #title_2{font-size:18px; position:relative; margin-top:15px; margin-left:18px;}
	#container .main .content{width:950px; height:280px; border:1px solid #CFCFCF; background:rgba(233,233,233,0.65); margin-top:10px;}
	#container .main .content #main_text{width:880px; height:135px; font-size:14px; line-height:1.8em; padding:10px; overflow:auto; 
		text-align:justify; margin-top:20px; margin-left:25px; background:#FFFFFF; border:1px solid #CFCFCF;}
	#container .main .content #radio{width:880px; height:20px; margin-top:20px; margin-left:25px;}
	
	#container .main .writeform{width:950px;  margin-top:30px; margin-bottom:30px; }
	#container .main .writeform .sub table{border:1px solid #BDBDBD; border-top:2px solid #5586EB;  border-collapse:collapse;}
	#container .main .writeform .sub th,td{height:45px; }
	#container .main .writeform .sub th.thtype { padding-left:32px; text-align:left; color:#5586EB; background:rgba(233,233,233,0.65);} <!-- top right bottom left -->
	#container .main .writeform .sub th.required { padding-left:20px;}
	#container .main .writeform .sub th .requiredTitle { display:block; padding-left:13px; color:#0e787c; }
	#container .main .writeform .sub td .inputtext input{ margin-left:10px; width:310px;}
	#container .main .writeform .sub td .titleinput { width:100%;}
	#container .main .writeform .sub td.titleinput input { margin-left:10px;}
	#container .main .writeform .sub td .conttxtarea { margin-top:5px; width:100%; height:10px;}
	#container .main .writeform .sub td.phoneinput select { margin-left:10px; width:82px;}
	#container .main .writeform .sub td.phoneinput input { width:79px;}
	
	
</style>

</head>
<body>

<div id="menutop">
	<jsp:include page="/webservice/webtop.jsp" flush="true | false"/>
</div>

<!-- container ���� -->
<div id="side">
	<jsp:include page="/appointment/appointmentsidebar.jsp" flush="true | false"/>
</div>




<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">


    function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.jumin1.value  || !userinput.jumin2.value )
        {
            alert("�ֹε�Ϲ�ȣ�� �Է��ϼ���");
            return false;
        }else if(userinput.agree.value == "no" ){
        	
            alert("�����ĺ���ȣ ó���� �����ϼž��մϴ�.");
            return false;
     
        }
    }
    </script>
    
<div id="container">	
	<div class="main">
		<div id="title_1"><b>�󼼿���</b></div>
		<div id="main_top">	
		<font>
		��������� ���� �ֹε�Ϲ�ȣ(�ܱ��ε�Ϲ�ȣ)�� �Է��Ͽ� �ֽñ� �ٶ��ϴ�. <br/>
		DB���� �̿� �� ������� �� ����, Ī�� � ���ؼ��� ������ �Ҹ��� �޴��� �̿��� �ֽñ� �ٶ��ϴ�.<br/>
		</font>
	
		<div class="content">
			<div id="title_2"><b>�����ĺ���ȣ ó���� ���� �ȳ�</b></div>
			<div id="main_text">
			�����ϴ� �����ĺ����� �׸� : �ֹε�Ϲ�ȣ, �ܱ��ε�Ϲ�ȣ
			�������̿���� : �ǷẸ�� ���� ���ο� ���Ό���� ���� ����<br/>
			���� �� �̿� �Ⱓ : �Ƿ���� ����<br/>
			������ �����ĺ����� �������Ǵ� �ź��Ͻ� �� ������, �ź��� ��� ���� ����� �Ϻ� ���ѵ� �� �ֽ��ϴ�.<br/>
		
			</div>
			<div id="radio">
<form action="appointmentdetail.do" method="post" name="userinput" onSubmit="return checkIt()">
			<INPUT type=radio name="agree" id ="yes" value="yes" checked>�����մϴ�.
			<INPUT type=radio name="agree" id = "no" value="no" >�������� �ʽ��ϴ�.
			</div>
		</div>
		<div class="writeform">
			<div class="sub">
				<table cellpadding="0" cellspacing="0" border="1" width="100%" class="tablelayout" >
				<col width="20%" />
				<col width="80%" />
				<tbody>
					<tr>
						<th scope="row" class="thtype"><label for="id">���̵�</label></th>
						&nbsp;<td class="titleinput">&nbsp;&nbsp;${ sessionScope.memId}<input type="hidden" name="id" value="${ sessionScope.memId}" /><!-- <input type="text" id="name" name="name" class="inputText" value="" maxlength="25" style="width: 273px;"  /> --></td>
					</tr>
					<tr>
						<th scope="row" class="thtype"><label for="name">�̸�</label></th>
						<td class="titleinput">&nbsp;&nbsp;${ sessionScope.memname}<input type="hidden" name="name" value="${ sessionScope.memname}" /><!-- <input type="text" id="name" name="name" class="inputText" value="" maxlength="25" style="width: 273px;"  /> --></td>
					</tr>
					<tr>
						<th scope="row" class="thtype"><label for="jumin1">�ֹι�ȣ</label></th>
						<td class="phoneinput">
							
							&nbsp;&nbsp;<input type="text" class="inputtext" name="jumin1" id="phone2" maxlength="6" value="" /> -
							<input type="text" class="inputtext" name="jumin2" id="phone2" maxlength="7" value="" />
						</td>
					</tr>
					
					<tr >
						
						<td class="phoneinput" colspan="2">
								<center><input type="submit" name="ok" value="Ȯ��" />
								<input type="button" name="cancle" value="���"/></center>
						</td>
					</tr>

					</tbody>
					</table>
			</div>
		
		</div>
	</div>
</div>
</body>
</html>
				
<%-- <%@ page language="java" contentType="text/html; charset=EUC-KR"
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
	<jsp:include page="/treatmentteam/treatmentteamtop.jsp" flush="true | false"/>
</div>

<!-- container ���� -->
<div id="side">
	<jsp:include page="/appointment/appointmentsidebar.jsp" flush="true | false"/>
</div>

<div class="container">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ȸ������ ��</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">


    function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.jumin1.value  || !userinput.jumin2.value )
        {
            alert("�ֹε�Ϲ�ȣ�� �Է��ϼ���");
            return false;
        }else if(userinput.agree.value == "no" ){
        	
            alert("�����ĺ���ȣ ó���� �����ϼž��մϴ�.");
            return false;
     
        }
    }
    </script>
    <h2>���� �����ϱ�</h2>
       
    <h4>��������� ���� �ֹε�Ϲ�ȣ(�ܱ��ε�Ϲ�ȣ)�� �Է��Ͽ� �ֽñ� �ٶ��ϴ�.</h4>
    <br/>
    [�����ĺ���ȣ ó���� ���� �ȳ�]<br/>
�����ϴ� �����ĺ����� �׸� : �ֹε�Ϲ�ȣ, �ܱ��ε�Ϲ�ȣ<br/>
�������̿���� : �ǷẸ�� ���� ���ο� ���Ό���� ���� ����<br/>
���� �� �̿� �Ⱓ : �Ƿ���� ����<br/>
������ �����ĺ����� �������Ǵ� �ź��Ͻ� �� ������, �ź��� ��� ���� ����� �Ϻ� ���ѵ� �� �ֽ��ϴ�.<br/>
<form action="appointmentdetail.do" method="post" name="userinput" onSubmit="return checkIt()">
<INPUT type=radio name="agree" id ="yes" value="yes" checked>�����մϴ�.
<INPUT type=radio name="agree" id = "no" value="no" >�������� �ʽ��ϴ�.
<br/>

<h4>��������� ���� �ֹε�Ϲ�ȣ(�ܱ��ε�Ϲ�ȣ) �Ǵ� ������Ϲ�ȣ �� �ϳ��� ������ �Է��� �ּ���.<br/>
���Ǻ����� ��ÿ� �ǰ� ������ �ƴ� ��3�ڿ� ���� �븮���ᰡ ���ѵ��� �˷��帳�ϴ�.</h4>

���̵�&nbsp;${ sessionScope.memId}<br/>
�̸�<input type="text" name="name" value="${sessionScope.memname}"/></br>
�ֹι�ȣ<input type="text" name="jumin1"/>-<input type="text" name="jumin2"/><br/>
<input type="submit" name="ok" value="Ȯ��" />
<input type="button" name="cancle" value="���"/>

</form>
</div>
</div> --%>