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
	body{font-size:14px; line-height:1.4; overflow-x:hidden; height:1200px;}
	a{text-decoration:none; }
	
	#bar{clear:both; position:absolute; width:100%; height:2px; background:#BCE55C; top:0px; opacity:0.8;}

	#l_back{ width:100%; height:30px; background:#474747; top:2px; position:absolute;}
	#l_back #login{width:1100px; height:20px; margin:0 auto; margin-top:5px; position:relative;}
	#l_back #login .grid{ width:1050px; height:20px; margin-left:20px; position:relative; }
	#l_back #login .grid .login_innerbox{width:700px; height:20px; margin:0 auto; margin-right:-220px; position:relative;}
	#l_back #login .grid .login_innerbox ul{margin-top:-1px; z-index:100; }
	#l_back #login .grid .login_innerbox li{float:left; padding:0 10px; position:relative;}
	#l_back #login .grid .login_innerbox li.first{padding-left:0px;}
	#l_back #login .grid .login_innerbox li.last{padding-right:0px; border:0 none;}
	#l_back #login .grid .login_innerbox li a{color:#FFFFFF; font-size:12px;}
	#l_back #login .grid .login_innerbox li a:hover{color:#FAED7D; font-size:12px;}
	
	#h_back{ width:100%; height:40px; margin-top:20px; position:absolute;}
	#h_back #header{height:40px; margin:0 auto; position:relative;}
	#h_back #header .grid{height:40px; position:relative; }
	#h_back #header .grid #title{width:120px; height:30px; margin-top:15px; position:relative;}
	#h_back #header .grid #title #box{width:110px; margin-left:80px; position:relative;}
	#h_back #header .grid #title #box a{display:block; width:100%; height:100%; padding-top:20px;}
	
	#gnb{ height:40px; margin-top:-10px; border-bottom:1px solid #5586EB; padding-left:375px; position:relative;}
	#gnb>li{ float:left; line-height:10px; background:#FFFFFF; position:relative; z-index:200;}
	#gnb li.title{padding-left:-300px;}
	#gnb li a{ display:block; font-size:14px; font-weight:bold; padding:5px 15px; color:#000000; width:120px; }
	#gnb li ul{ position:absolute; left:0px; opacity:0; width:160px; background:#FFFFFF;}
	#gnb li ul li{ height:0px; overflow:hidden; z-index:105px;}
	#gnb li:hover ul{margin-top:29px; opacity:1;  }
	#gnb li:hover ul li{ height:40px;}
	#gnb li a:hover, #gnb li a:focus{text-decoration:underline; color:#5586EB;}
	#gnb li a{ transition:all 0.6s;}
	#gnb li ul{ transition:all 0.6s;}
	#gnb li ul li{ transition:all 0.6s;}
	
	
</style>

</head>

<body>
<div id="bar"></div>

<!-- loginForm ���� -->
<div id="l_back">
	<div id="login">
	<div class="grid">
		<div class="login_innerbox">
  			<ul>
    			<li class="first"><a href="#">�α���</a></li>
    			<li><a href="#">ȸ������</a></li>
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




</body>
</html>