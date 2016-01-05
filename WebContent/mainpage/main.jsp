<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>DB����</title>

<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden; height:700px;}
	a{text-decoration:none; }
	
	#bar{clear:both; position:absolute; width:100%; height:2px; background:#BCE55C; top:0px; opacity:0.8;}

	#l_back{ width:100%; height:30px; background:#474747; top:2px; position:absolute;}
	#l_back #login{width:1100px; height:20px; margin:0 auto; margin-top:5px; position:relative;}
	#l_back #login .grid{ width:1050px; height:20px; margin-left:20px; position:relative; }
	#l_back #login .grid .login_innerbox{width:600px; height:20px; margin:0 auto; margin-right:-160px; position:relative;}
	#l_back #login .grid .login_innerbox ul{margin-top:-3px; }
	#l_back #login .grid .login_innerbox li{float:left; padding:0 10px; position:relative;}
	#l_back #login .grid .login_innerbox li.first{padding-left:0px;}
	#l_back #login .grid .login_innerbox li.last{padding-right:0px; border:0 none;}
	#l_back #login .grid .login_innerbox li a{color:#FFFFFF; font-size:12px;}
	#l_back #login .grid .login_innerbox li a:hover{color:#FAED7D; font-size:12px;}
	
	#h_back{ width:100%; height:40px; position:absolute;}
	#h_back #header{height:40px; margin:0 auto; position:relative;}
	#h_back #header .grid{height:40px; position:relative; }
	#h_back #header .grid #title{width:120px; position:relative;}
	#h_back #header .grid #title #box{width:110px; margin-left:80px; position:relative;}
	#h_back #header .grid #title #box h1{float:left; width:130px; height:50px; margin-top:30px; margin-left:130px; }
	#h_back #header .grid #title #box a{display:block; width:100%; height:100%; background:; padding-top:45px;}
	
	#gnb{ height:40px; margin-top:-30px; border-bottom:1px solid #5586EB; padding-left:380px; position:relative;}
	#gnb>li{ float:left; line-height:30px; background:#FFFFFF; position:relative;}
	#gnb li.title{padding-left:-300px;}
	#gnb li a{ display:block; font-size:14px; font-weight:bold; padding:5px 24px; color:#000000; width:100px; }
	#gnb li ul{ position:absolute; left:0px; opacity:0; width:160px; background:#FFFFFF;}
	#gnb li ul li{ height:0px; overflow:hidden;}
	#gnb li:hover ul{margin-top:1px; opacity:1; }
	#gnb li:hover ul li{ height:40px;}
	#gnb li a:hover, #gnb li a:focus{text-decoration:underline; color:#5586EB;}
	#gnb li a{ transition:all 0.4s;}
	#gnb li ul{ transition:all 0.4s;}
	#gnb li ul li{ transition:all 0.4s;}
	
	/* container ���� */
	#visual{ width:960px; margin:20px auto; top:120px; position:relative;}
	#visual>ul{ width:960px; height:403px; position:relative;}
	#visual>ul>li{ position:absolute; left:0px; top:0px; }
	#visual>ul>li:not(:first-child){ display:none;}
	#visual>#btns{ position:absolute; bottom:10px; left:450px; }
	
	/* footer ���� */
	#f_back{clear:both; width:100%; height:300px; background:#474747; margin:0 auto; top:700px; position:relative;}
	#f_back .footer{width:1300px; height:300px; margin:0 auto; position:relative;}
	#f_back .footer .firstline{width:1200px; height:80px; position:relative;}
	#f_back .footer .firstline #logo{width:120px; height:40px; border:1px solid #FFFFFF; top:40px; margin-left:60px; position:relative; color:#FFFFFF;}
	#f_back .footer .firstline .footer_innerbox{width:1050px; height:100px; margin:0 auto; margin-right:-80px; position:relative;}
	#f_back .footer .firstline .footer_innerbox ul{margin-top:20px; }
	#f_back .footer .firstline .footer_innerbox li{float:left; padding:0 5px; border-right:1px solid #5D5D5D;  position:relative;}
	#f_back .footer .firstline .footer_innerbox li.first{padding-left:0px;}
	#f_back .footer .firstline .footer_innerbox li.last{padding-right:0px; border:0 none;}
	#f_back .footer .firstline .footer_innerbox li a{color:#FFFFFF; font-size:12px;}
	#f_back .footer .firstline .footer_innerbox li a:hover{color:#ED4C00; font-size:12px;}
	#f_back .footer .secondline{width:1200px; height:120px; position:relative;}
	#f_back .footer .secondline #textbox{width:340px; height:100px; margin-top:0px; margin-left:60px; float:left; position:relative;}
	#f_back .footer .secondline #textbox p{color:#FFFFFF; font-size:12px;}
	#f_back .footer .secondline .selectbox1{width:300px; height:25px; position:relative; margin-left:450px; margin-top:30px; position:relative; }
	#f_back .footer .secondline .selectbox1 #select01{}
	#f_back .footer .secondline .selectbox1 #select01 #box01{width:70px; height:25px; background:#353535; position:relative; margin-top:-23px; margin-left:170px;}
	#f_back .footer .secondline .selectbox1 #select01 #box01 #move01{width:50px; height:15px; margin-left:10px; padding-top:4px;}
	#f_back .footer .secondline .selectbox1 #select01 #box01 #move01 a{color:#FFFFFF; font-size:12px; }
	#f_back .footer .secondline .selectbox1 #select02{margin-top:15px;}
	#f_back .footer .secondline .selectbox1 #select02 #box02{width:70px; height:25px; background:#353535; position:relative; margin-top:-23px; margin-left:170px;}
	#f_back .footer .secondline .selectbox1 #select02 #box02 #move02{width:50px; height:15px; margin-left:10px; padding-top:4px;}
	#f_back .footer .secondline .selectbox1 #select02 #box02 #move02 a{color:#FFFFFF; font-size:12px; }
	#f_back .footer .secondline .selectbox2{width:300px; height:25px; position:relative; margin-left:725px; margin-top:-25px;}
	#f_back .footer .secondline .selectbox2 #select03{}
	#f_back .footer .secondline .selectbox2 #select03 #box03{width:70px; height:25px; background:#353535; position:relative; margin-top:-23px; margin-left:170px;}
	#f_back .footer .secondline .selectbox2 #select03 #box03 #move03{width:50px; height:15px; margin-left:10px; padding-top:4px;}
	#f_back .footer .secondline .selectbox2 #select03 #box03 #move03 a{color:#FFFFFF; font-size:12px;  }
	#f_back .footer .secondline .selectbox2 #select04{margin-top:15px;}
	#f_back .footer .secondline .selectbox2 #select04 #box04{width:70px; height:25px; background:#353535; position:relative; margin-top:-23px; margin-left:170px;}
	#f_back .footer .secondline .selectbox2 #select04 #box04 #move04{width:50px; height:15px; margin-left:10px; padding-top:4px;}
	#f_back .footer .secondline .selectbox2 #select04 #box04 #move04 a{color:#FFFFFF; font-size:12px;  }
</style>

<script type="text/javascript" src="/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(function(){
	var visual = $('#visual');
	var btns = $('#btns a');
	var imgs = visual.find('li');
	var currentNum = 0;
	function rotateImg(){
		currentNum++;
		currentNum = currentNum%3;
		imgs.stop().fadeOut();
		$('.bg'+currentNum).stop().fadeIn();
	}
	var timer = setInterval(rotateImg, 2000);
	btns.click(function(){
		clearInterval(timer);
		currentNum = parseInt($(this).text())-1;
		imgs.stop().fadeOut();
		$('.bg'+currentNum).stop().fadeIn();
		timer = setInterval(rotateImg,2000);
	})
})
</script>
</head>

<body>
<div id="bar"></div>

<!-- loginForm ���� -->
<div id="l_back">
	<div id="login">
	<div class="grid">
		<div class="login_innerbox">
  			<ul>
    			<li class="first"><a href="#">ȸ������</a></li>
    			<li><a href="#">�����ѷ�����</a></li>
    			<li><a href="#">���ô±�</a></li>
    			<li><a href="#">English</a></li>
    			<li><a href="#">����</a></li>
    			<li><a href="#">������</a></li>
    			<li class="last"><a href="#">�����ܬڬ�</a></li>
  			</ul>
		</div>
	</div>
	</div>
</div>

<!-- header ���� -->
<div id="h_back">
	<div id="header">
	<div class="grid">
		<div id="title"><div id="box"><font size="4"><b><a href="#">DB Hospital</a></b></font></div></div>
		<div id="gnbWrap">
			<nav>
    			<ul id="gnb">
        			<!-- <li class="title"><font color="#5586EB"><a href="#">DB Hospital</a></font></li> -->
            		<li>
            			<a href="#">�Ƿ���/�����</a>
                		<ul>
                			<li><a href="#">�Ƿ���</a></li>
                    		<li><a href="#">�����</a></li>
                    		<li><a href="#">�Ϻ���</a></li>
                    		<li><a href="#">��̺���</a></li>
							<li><a href="#">���庴��</a></li>
							<li><a href="#">����</a></li>
							<li><a href="#">Ŭ����</a></li>
							<li><a href="#">��Ÿ</a></li>
                		</ul>
            		</li>
            		<li>
            			<a href="#">�̿�ȳ�</a>
                		<ul>
                			<li><a href="#">�����ȳ�</a></li>
							<li><a href="#">�ܷ�����ȳ�</a></li>
							<li><a href="#">��������ȳ�</a></li>
							<li><a href="#">�Կ�����ȳ�</a></li>
							<li><a href="#">������ȣ�ȳ�</a></li>
							<li><a href="#">�˻�Ǿȳ�</a></li>
                		</ul>
            		</li>
            		<li>
            			<a href="#">�ǰ�����</a>
            			<ul>
                			<li><a href="#">�Ƿ�����</a></li>
							<li><a href="#">�ǰ�TV</a></li>
							<li><a href="#">�ǰ��̾߱�</a></li>
                		</ul>
                	</li>
                	<li>
            			<a href="#">������</a>
            			<ul>
                			<li><a href="#">�߱޾ȳ�</a></li>
							<li><a href="#">������</a></li>
                		</ul>
                	</li>
                	<li>
            			<a href="#">���б���</a>
            			<ul>
                			<li><a href="#">�м��������</a></li>
							<li><a href="#">�м�����ٽú���</a></li>
							<li><a href="#">����������</a></li>
							<li><a href="#">3D�ڷ�</a></li>
                		</ul>
                	</li>
                	<li>
            			<a href="#">�����Ұ�</a>
            			<ul>
                			<li><a href="#">��ܼҰ�</a></li>
							<li><a href="#">�����Ұ�</a></li>
							<li><a href="#">�ҽ�</a></li>
							<li><a href="#">���Ⱓ�๰</a></li>
							<li><a href="#">������ȳ�</a></li>
                		</ul>
                	</li>
        		</ul>
    		</nav>
    		</div>
    	</div>
    </div>
</div>

<!-- container ���� -->
<div id="visual">
	<ul>
    	<li class="bg0"><img src="img/main_image_01.jpg" alt="" /></li>
        <li class="bg1"><img src="img/main_image_02.jpg" alt="" /></li>
        <li class="bg2"><img src="img/main_image_03.jpg" alt="" /></li>
    </ul>

<div id="btns">
	<a href="#">1</a> || <a href="#">2</a> || <a href="#">3</a>
</div>
</div>

<!-- footer ���� -->
<div id="f_back">
	<div class="footer">
		<div class="firstline">
			<div id="logo">LOGO</div>
			<div class="footer_innerbox">
  				<ul>
    				<li class="first"><a href="#">ȯ�ڱǸ�����</a></li>
    				<li><a href="#">��������ó��(���)��ħ</a></li>
    				<li><a href="#">�̿���</a></li>
    				<li><a href="#">�Ƿ��������ħ</a></li>
    				<li><a href="#">��޿������</a></li>
    				<li><a href="#">�ǹ���ϻ纻�߱޾ȳ�</a></li>
    				<li><a href="#">����������Ȯ��</a></li>
    				<li><a href="#">�̸��� �ּҼ����ź�</a></li>
    				<li><a href="#">������������</a></li>
    				<li class="last"><a href="#">Ȩ�������̿빮��</a></li>
  				</ul>
  			</div>
    	</div>
    	<div class="secondline">
    		<div id="textbox">
    			<p>
    			���θ��ּ� (05505) ����Ư���� ���ı� �ø��ȷ� 43�� 88 <br/>
				�����ּ� (138-736) ����Ư���� ���ı� ǳ��2�� 388-1 <br/>
				TEL 1688-7575 / webmaster@amc.seoul.kr <br/>
				Copyright@2014 by Asan Medical Center. All Rights reserved.
    			</p>
    		</div>
    		<div class="selectbox1">
    			<div id="select01">
    			<select id="family01" class="select">
					<option value="0">�����</option>
					<option value="0">====�����====</option>
					<option value="#">�������а�</option>
					<option value="#">���㵵��ܰ�</option>
					<option value="#">���̽Ĺװ��㵵�ܰ�</option>
					<option value="#">��������</option>
					<option value="#">�ǰ����а�</option>
					<option value="#">�����Ǿȸ�ܰ�</option>
					<option value="#">���к񳻰�</option>
					<option value="#">��⳻��</option>
					<option value="#">�����׹��ܰ�</option>
					<option value="#">����Ƽ������</option>
					<option value="#">�����������а�</option>
					<option value="#">��缱�����а�</option>
					<option value="#">������</option>
					<option value="#">�񴢱��</option>
					<option value="#">����ΰ�</option>
					<option value="#">�����ܰ�</option>
					<option value="#">��ȭ�⳻��</option>
					<option value="#">�Ű��</option>
					<option value="#">�Ű�ܰ�</option>
					<option value="#">���峻��</option>
					<option value="#">���峻��</option>
					<option value="#">����ܰ�</option>
					<option value="#">�Ȱ�</option>
					<option value="#">�˷����⳻��</option>
					<option value="#">�������а�</option>
					<option value="#">������ܰ�</option>
					<option value="#">���泻�к�ܰ�</option>
					<option value="#">�������а�</option>
					<option value="#">�ǰ��а�</option>
					<option value="#">�̺����İ�</option>
					<option value="#">�Ϲݿܰ�</option>
					<option value="#">�ӻ�ฮ�а�</option>
					<option value="#">��Ȱ���а�</option>
					<option value="#">���Űǰ����а�</option>
					<option value="#">�����ܰ�</option>
					<option value="#">���系��</option>
					<option value="#">���ܰ˻����а�</option>
					<option value="#">ġ�� ������</option>
					<option value="#">ġ�� ������</option>
					<option value="#">ġ�� ��ö��</option>
					<option value="#">ġ�ְ�</option>
					<option value="#">��ĵ��ܰ�</option>
					<option value="#">�Ǻΰ�</option>
					<option value="#">�����а�</option>
					<option value="#">�����ܰ�</option>
					<option value="#">���׳���</option>
					<option value="#">ȣ��⳻��</option>
					<option value="#">��οܰ�</option>
					<option value="0">====�Ϻ���====</option>
					<option value="#">�Ϻ���</option>
					<option value="#">���ϼ���</option>
					<option value="#">�񿬺���������</option>
					<option value="#">�����缾��</option>
					<option value="#">�㵵 �� ����ϼ���</option>
					<option value="#">����ϼ���</option>
					<option value="#">�ΰ�ξϼ���</option>
					<option value="#">���ξϼ���</option>
					<option value="#">�񴢱�ϼ���</option>
					<option value="#">�ĵ��ϼ���</option>
					<option value="#">���ϼ���</option>
					<option value="#">����ϼ���</option>
					<option value="#">����ü�����ġ�Ἶ��</option>
					<option value="#">��ϼ���</option>
					<option value="#">�Ǻξϼ���</option>
					<option value="#">���׾� �� ����̽ļ���</option>
					<option value="0">===��̺���===</option>
					<option value="#">��̺���</option>
					<option value="#">������</option>
					<option value="#">���к����</option>
					<option value="#">�񴢱��</option>
					<option value="#">�Ҿƿܰ�</option>
					<option value="#">�Ҿ�ġ��</option>
					<option value="#">��ȭ�� �����</option>
					<option value="#">�Ű��</option>
					<option value="#">�Ű�ܰ�</option>
					<option value="#">�Ż��ư�</option>
					<option value="#">�����</option>
					<option value="#">�����</option>
					<option value="#">����ܰ�</option>
					<option value="#">�Ȱ�</option>
					<option value="#">�������а�</option>
					<option value="#">���������а�</option>
					<option value="#">��Ȱ���а�</option>
					<option value="#">���Űǰ����а�</option>
					<option value="#">�����ܰ�</option>
					<option value="#">�������װ�</option>
					<option value="#">��ȯ�ڰ�</option>
					<option value="#">ȣ���˷������</option>
					<option value="0">===���庴��===</option>
					<option value="#">���庴��</option>
					<option value="#">�뵿����ȯ����</option>
					<option value="#">����������ȯ����</option>
					<option value="#">�ɹ漼������</option>
					<option value="#">�ɺ���/�����̽ļ���</option>
					<option value="#">���庴������Ȱ����</option>
					<option value="#">���念����</option>
					<option value="#">�Ǹ���ȯ����</option>
					<option value="#">�������ɱٰ��������</option>			
				</select>
    			<div id="box01"><div id="move01"><a href="#">�ٷΰ���</a></div></div>
    			</div>
    			<div id="select02">
    			<select id="family02" class="select">
					<option value="0">�����</option>
					<option value="0">======�����======</option>
					<option value="#">�������а�</option>
					<option value="#">���㵵��ܰ�</option>
					<option value="#">���̽Ĺװ��㵵�ܰ�</option>
				</select>
				<div id="box02"><div id="move02"><a href="#">�ٷΰ���</a></div></div>
				</div>
    		</div>
    		<div class="selectbox2">
    			<div id="select03">
    			<select id="family03" class="select">
					<option value="0">�����</option>
					<option value="0">======�����======</option>
					<option value="#">�������а�</option>
					<option value="#">���㵵��ܰ�</option>
					<option value="#">���̽Ĺװ��㵵�ܰ�</option>
				</select>
				<div id="box03"><div id="move03"><a href="#">�ٷΰ���</a></div></div>
				</div>
				<div id="select04">
				<select id="family04" class="select">
					<option value="0">�����</option>
					<option value="0">======�����======</option>
					<option value="#">�������а�</option>
					<option value="#">���㵵��ܰ�</option>
					<option value="#">���̽Ĺװ��㵵�ܰ�</option>
				</select>
				<div id="box04"><div id="move04"><a href="#">�ٷΰ���</a></div></div>
				</div>
    		</div>
    	</div>
    </div>
</div>
</body>
</html>