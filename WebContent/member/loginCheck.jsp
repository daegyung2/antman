<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
  
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

<!-- container 시작 -->
<div id="side">
	<jsp:include page="/appointment/appointmentsidebar.jsp" flush="true | false"/>
</div>




<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">


    function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.jumin1.value  || !userinput.jumin2.value )
        {
            alert("주민등록번호를 입력하세요");
            return false;
        }else if(userinput.agree.value == "no" ){
        	
            alert("고유식별번호 처리에 동의하셔야합니다.");
            return false;
     
        }
    }
    </script>
    
<div id="container">	
	<div class="main">
		<div id="title_1"><b>회원가입</b></div>
		<div id="main_top">	
		<font>
		DB병원 이용 시 불편사항 및 건의, 칭찬 등에 대해서는 ‘고객의 소리’ 메뉴를 이용해 주시기 바랍니다.<br/>
		</font>
	
		<div class="content">
			<div id="title_2"><b>고유식별번호 처리에 대한 안내</b></div>
			<div id="main_text">
			수집하는 고유식별정보 항목 : 주민등록번호, 외국인등록번호
			수집ㆍ이용목적 : 의료보험 적용 여부와 진료예약을 위한 목적<br/>
			보유 및 이용 기간 : 의료법에 준함<br/>
			개인의 고유식별정보 제공동의는 거부하실 수 있으며, 거부할 경우 서비스 사용이 일부 제한될 수 있습니다.<br/>
		
			</div>
			<div id="radio">
<form action="appointmentdetail.do" method="post" name="userinput" onSubmit="return checkIt()">
			<INPUT type=radio name="agree" id ="yes" value="yes" checked>동의합니다.
			<INPUT type=radio name="agree" id = "no" value="no" >동의하지 않습니다.
			</div>
		</div>
		<br/><br/>
		
    <table align="center">
    <tr>
    <td><a href ="/antman/inputForm.do"><img src="/antman/img/P_input.png" width="320" heighr="250"></a></td>
    <td><a href ="/antman/E_CheckForm.do"><img src="/antman/img/E_input.png" width="320" heighr="250"></a></td>
    <td><a href ="/antman/D_CheckForm.do"><img src="/antman/img/D_input.png" width="320" heighr="250"></a></td>
    </tr>
    </table>
		</div>
	</div>
</div>
</body>
</html>
  
  
  
    
    
    
    
    

    