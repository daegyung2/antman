<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>My Page</title>
<script type="text/javascript" src="/antman/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="/antman/js/tabset.js"></script>
<style type="text/css">
	body { margin:0px; padding:0px; }
	ul{ list-style:none; margin:0px; padding:0px;}
	a{ text-decoration:none;}
	ul{ list-style:none; margin:0px; padding:0px;}
	li{ margin:0px; padding:0px; }
	div{border:1px solid #D5D5D5;}
	
	/* container 시작 */
	.container{ width:1000px; height:1200px; margin:0 auto; position:relative;}
	.container .side{ width:220px; height:1200px; position:relative; }
	.container .side .left{width:220px; height:1200px; position:absolute;  }
	.container .side .left #left_top{width:220px; height:120px; text-align:center;}
	.container .side .left .left01{width:220px; height:300px; }
	.container .side .left .left01 #treat_service{width:220px; height:50px; text-align:center;}
	.container .side .left .left01 #treat01,#treat02,#treat03,#treat04,#treat05,#treat06{width:220px; height:40px; text-align:center;}
	
	.container .side .left .left02{width:220px; height:430px; }
	.container .side .left .left02 #provide_service{width:220px; height:50px; text-align:center;}
	.container .side .left .left02 #provide01,#provide02,#provide03,#provide04,#provide05,#provide06,#provide07,#provide08,#provide09
	{width:220px; height:40px; text-align:center;}
	
	.container .side .left .left03{width:220px; height:340px; }
	.container .side .left .left03 #member_info{width:220px; height:50px; text-align:center;}
	.container .side .left .left03 #member01,#member02,#member03{width:220px; height:40px; text-align:center;}
	
	.container .container_top{ width:730px; height:150px; margin-left:260px; margin-top:-1205px; position:relative; }
	.container .container_top .top{width:730px; height:150px; margin-left:0px; position:relative;}
	.container .container_top .top .mychart{ width:700px; height:50px; margin-left:10px; margin-top:20px; position:relative;}
	.container .container_top .top .mychart p{ margin-left:10px; position:relative; }
	.container .container_top .top .mychart #listdiv{width:700px; height:50px; margin-top:20px; position:relative;}
	.container .container_top .top .mychart #listdiv p{margin-left:20px;}
	.container .container_top .top .mychart #listdiv #inputTxt{width:500px; height:30px; margin-left:110px; margin-top:-45px; position:absolute;}
	
	.container .container_tab{ width:730px; height:300px; margin-left:260px; margin-top:5px; position:relative; }
	.container .container_tab .tab{width:730px; height:300px; margin-left:0px; position:relative;}
	.container .container_tab .tab .tabset{ width:600px; height:250px; margin:20px auto; padding:5px; border:1px solid #D5D5D5; border-radius:7px; }
	.container .container_tab .tab .tabset .tabs{ background:#333; border-radius:5px; padding:15px 15px 0; overflow:hidden; }
	.container .container_tab .tab .tabset .tabs li{ float:left; margin-right:3px;}
	.container .container_tab .tab .tabset .tabs li a { display:block; background:#BBB; color:#333; padding:5px 30px; font-weight:bold; border-radius:4px 4px 0 0;}
	.container .container_tab .tab .tabset .tabs li a.on{ background:#FFF}
	.container .container_tab .tab .tabset .panels div{ height:180px; padding:12px 15px 6px;}
	
	.container .container_info{ width:730px; height:700px; margin-left:260px; margin-top:5px; position:relative; }
	.container .container_info #info{width:730px; height:700px; margin-left:0px; position:relative;}
	.container .container_info #info #info01{width:550px; height:40px; margin-left:80px; margin-top:30px; position:relative;}
	.container .container_info #info #info01 p{margin-left:20px;}
	.container .container_info #info #info01 #btn01{width:110px; height:30px; border:1px solid #D5D5D5; margin-top:-48px; float:right;}
	.container .container_info #info #info01 #btn01 a{width:100px; height:30px; margin-left:5px;}
	.container .container_info #info .info02{width:600px; height:150px; margin-left:60px; margin-top:30px; position:relative;}
	.container .container_info #info .info02 #div01{width:150px; height:150px; position:absolute; float:left; text-align:center;}
	.container .container_info #info .info02 #div02{width:150px; height:150px; position:absolute; margin-left:150px; text-align:center;}
	.container .container_info #info .info02 #div03{width:150px; height:150px; position:absolute; margin-left:300px; text-align:center;}
	.container .container_info #info .info02 #div04{width:150px; height:150px; position:absolute; margin-left:450px; text-align:center;}
	.container .container_info #info .info03{width:600px; height:100px; margin-left:60px; margin-top:30px; position:relative;}
	.container .container_info #info .info03 p{font-size:12px; text-align:center;}
	.container .container_info #info .info03 #btn03{width:110px; height:30px; border:1px solid #D5D5D5; margin-top:10px; margin-left:250px; }
	.container .container_info #info .info03 #btn03 a{width:100px; height:30px; margin-left:5px;}
	.container .container_info #info .info04{width:620px; height:200px; margin-left:60px; margin-top:30px; position:relative;}
	.container .container_info #info .info04 p{font-size:14px; margin-left:20px;}
	.container .container_info #info .info04 .post{width:600px; height:100px; margin-left:10px;  position:relative;}
	.container .container_info #info .info04 .post #p01{width:100px; height:100px; position:absolute; float:left; text-align:center;}
	.container .container_info #info .info04 .post #p02{width:100px; height:100px; position:absolute; margin-left:100px; text-align:center;}
	.container .container_info #info .info04 .post #p03{width:100px; height:100px; position:absolute; margin-left:200px; text-align:center;}
	.container .container_info #info .info04 .post #p04{width:100px; height:100px; position:absolute; margin-left:300px; text-align:center;}
	.container .container_info #info .info04 .post #p05{width:100px; height:100px; position:absolute; margin-left:400px; text-align:center;}
	.container .container_info #info .info04 .post #p06{width:100px; height:100px; position:absolute; margin-left:500px; text-align:center;}
</style>

</head>
<body>

<div class="container">
  	<div class="side">
        <div class="left">
			<div id="left_top">
				<p><b>이름</b> <br/><br/>
				병원등록번호</p>
    		</div>
    		<div class="left01">
    			<div id="treat_service"><p>진료서비스</p></div>
    			<div id="treat01"><a href="antman/scheduleform.do">나의진료스케쥴등록</a></div>
    			<div id="treat02"><a href="antman/scheduleform.do">나의진료스케쥴확인 </a></div>
    			<div id="treat03"><a href="#">나의진료신청환자목록</a></div>
    			<div id="treat04"><a href="#">환자진료결과</a></div>
    			<div id="treat05"><a href="#">진료내역</a></div>
    			<div id="treat06"><a href="#">진단검사결과</a></div>
    		</div>
    		<div class="left02">
    			<div id="provide_service"><p>부가서비스</p></div>
    			<div id="provide02"><a href="#">증명서출력</a></div>
    			<div id="provide03"><a href="#">상담</a></div>
    			<div id="provide04"><a href="#">학술행사신청</a></div>
    			<div id="provide07"><a href="#">고객의소리</a></div>
    			<div id="provide08"><a href="#">칭찬코너</a></div>
  
    		</div>
            <div class="left03">
    			<div id="member_info"><p>회원정보</p></div>
    			<div id="member01"><a href="#">회원정보수정</a></div>
    			<div id="member02"><a href="#">비밀번호변경</a></div>
    			<div id="member03"><a href="#">회원탈퇴</a></div>
    		</div>
		</div>
	</div>

</body>
</html> -->


<table width="200" border="1">
<tr>
<td><center>의사이름<br/>의사등록번호</center></td>
</tr>
<tr>
<td><center>진료서비스</center></td>
</tr>
<tr>
<tr>
<td><a href="/antman/scheduleform.do"><center>나의진료스케쥴등록</center></a></td>
</tr>
<tr>
<td><a href="/antman/schedulecheck.do"><center><center>나의진료스케쥴확인</center></a></td>
</tr>

<td><a href="/antman/dscheduleform.do"><center><center>환자진료결과등록하기</center></a></td>
</tr>
<tr>
<td><a href="/antman/scheduleform.do"><center><center>칭찬받은글보기</center></a></td>
</tr>
<tr>
<td><a href="/antman/scheduleform.do"><center><center>받은문의</center></a></td>
</tr>
<tr>
<td><center>개인서비스</center></td>
</tr>
<tr>
<td><center>정보수정</center></td>
</tr>
<tr>
<td><center>회원탈퇴</center></td>
</tr>

</table>