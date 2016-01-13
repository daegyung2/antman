<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
  <head>
  <style type="text/css">
	body{margin:0px; padding:0px;}
	a{ text-decoration:none; }
	#menutop{width:100%; height:150px; }
	#container{ width:1100px; height:1500px; margin:0 auto; margin-left:75px; position:relative;}
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

<script>
function checkIt() {
    var input = eval("document.input");
    if(!input.check.value) {
        alert("사원번호를 입력하세요");
        return false;
    } 
}
</script>
   
</head>
<body>

<div id="menutop">
	<jsp:include page="/webservice/webtop.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->


<div id="container">	
	<div class="main">
		<div id="title_1"><center><b>가입이 완료 되었습니다.</b></center></div><br/><br/>
		<div id="main_top">	
		

<center><form action="loginForm.do" method="post">


<input type="submit" value="메인으로가기">

</form></center>
</div>
</div>
</div>