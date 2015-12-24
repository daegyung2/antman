<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<!--container 시작-->
<div class="container">
  	<div class="side">
        <div class="left">
			<div id="left_top">
				<p><b>이름</b> <br/><br/>
				병원등록번호</p>
    		</div>
    		<div class="left01">
    			<div id="treat_service"><p>진료서비스</p></div>
    			<div id="treat01"><a href="#">본인예약현황</a></div>
    			<div id="treat02"><a href="#">대리예약현황</a></div>
    			<div id="treat03"><a href="#">진료내역</a></div>
    			<div id="treat04"><a href="#">투약내역</a></div>
    			<div id="treat05"><a href="#">진단검사결과</a></div>
    			<div id="treat06"><a href="#">건강검진결과</a></div>
    		</div>
    		<div class="left02">
    			<div id="provide_service"><p>부가서비스</p></div>
    			<div id="provide01"><a href="#">중간진료비결제</a></div>
    			<div id="provide02"><a href="#">증명서출력</a></div>
    			<div id="provide03"><a href="#">상담</a></div>
    			<div id="provide04"><a href="#">학술행사신청</a></div>
    			<div id="provide05"><a href="#">후원</a></div>
    			<div id="provide06"><a href="#">자원봉사</a></div>
    			<div id="provide07"><a href="#">고객의소리</a></div>
    			<div id="provide08"><a href="#">칭찬코너</a></div>
    			<div id="provide09"><a href="#">내손안의차트</a></div>
    		</div>
            <div class="left03">
    			<div id="member_info"><p>회원정보</p></div>
    			<div id="member01"><a href="#">회원정보수정</a></div>
    			<div id="member02"><a href="#">비밀번호변경</a></div>
    			<div id="member03"><a href="#">회원탈퇴</a></div>
    		</div>
		</div>
	</div>
	
	<div class="container_top">	
		<div class="top">
			<div class="mychart">
				<p><b>나의 차트</b></p>
				<div id="listdiv"><p>나의 할일</p>
					<div id="inputTxt"></div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container_tab">	
		<div class="tab">
			<div class="tabset">
    			<ul class="tabs">
        		<li><a href="#panel01" class="on">전체</a></li>
        		<li><a href="#panel02">외래</a></li>
        		<li><a href="#panel03">입원</a></li>
        		<li><a href="#panel04">건강진단</a></li>
        		<li><a href="#panel05">당일수술</a></li>
        		</ul>   
     		<div class="panels">
    			<div id="panel01">
    			test1
		        </div>
        		<div id="panel02">
        		test2
        		</div>
        		<div id="panel03">
        		test3
        		</div>
        		<div id="panel04">
        		test4
        		</div>
        		<div id="panel05">
        		test5
        		</div>
    		</div>
    		</div>   		
		</div>
	</div>
		
	<div class="container_info">	
		<div id="info">
			<div id="info01">
				<p>본인인증을 하시면 더 많은 정보를 볼 수 있습니다.</p>
				<div id="btn01"><a href="#">본인인증하기</a></div>
			</div>
			<div class="info02">
				<div id="div01">진료내역</div>
				<div id="div02">투약내역</div>
				<div id="div03">진단검사결과</div>
				<div id="div04">증명서출력</div>
			</div>
			<div class="info03">
				<p>소중한 개인정보를 안전하게 보호하기 위해 비밀번호를 정기적으로 변경하실 것을 권고해드립니다.<br/>
				서울아산병원에서는 회원님의 개인정보보호에 최선을 다하겠습니다.</p>
				<div id="btn03"><a href="#">비밀번호변경</a></div>
			</div>
			<div class="info04">
				<p>나의 게시글</p> <br/>
				<div class="post">
					<div id="p01">복약상담</div>
					<div id="p02">의료상담</div>
					<div id="p03">학술생사신청</div>
					<div id="p04">자원봉사</div>
					<div id="p05">고객의 소리</div>
					<div id="p06">칭찬코너</div>
				</div>
			</div>
		</div>
	</div>
	
</div>
</body>
</html>