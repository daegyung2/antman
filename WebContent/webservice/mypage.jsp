<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>My Page</title>
<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="tabset.js"></script>
<style type="text/css">
	body { margin:0px; padding:0px; }
	ul{ list-style:none; margin:0px; padding:0px;}
	a{ text-decoration:none;}
	ul{ list-style:none; margin:0px; padding:0px;}
	li{ margin:0px; padding:0px; }
	div{border:1px solid #D5D5D5;}
	
	/* container ���� */
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
<!--container ����-->
<div class="container">
  	<div class="side">
        <div class="left">
			<div id="left_top">
				<p><b>�̸�</b> <br/><br/>
				������Ϲ�ȣ</p>
    		</div>
    		<div class="left01">
    			<div id="treat_service"><p>���Ἥ��</p></div>
    			<div id="treat01"><a href="#">���ο�����Ȳ</a></div>
    			<div id="treat02"><a href="#">�븮������Ȳ</a></div>
    			<div id="treat03"><a href="#">���᳻��</a></div>
    			<div id="treat04"><a href="#">���೻��</a></div>
    			<div id="treat05"><a href="#">���ܰ˻���</a></div>
    			<div id="treat06"><a href="#">�ǰ��������</a></div>
    		</div>
    		<div class="left02">
    			<div id="provide_service"><p>�ΰ�����</p></div>
    			<div id="provide01"><a href="#">�߰���������</a></div>
    			<div id="provide02"><a href="#">���������</a></div>
    			<div id="provide03"><a href="#">���</a></div>
    			<div id="provide04"><a href="#">�м�����û</a></div>
    			<div id="provide05"><a href="#">�Ŀ�</a></div>
    			<div id="provide06"><a href="#">�ڿ�����</a></div>
    			<div id="provide07"><a href="#">�����ǼҸ�</a></div>
    			<div id="provide08"><a href="#">Ī���ڳ�</a></div>
    			<div id="provide09"><a href="#">���վ�����Ʈ</a></div>
    		</div>
            <div class="left03">
    			<div id="member_info"><p>ȸ������</p></div>
    			<div id="member01"><a href="#">ȸ����������</a></div>
    			<div id="member02"><a href="#">��й�ȣ����</a></div>
    			<div id="member03"><a href="#">ȸ��Ż��</a></div>
    		</div>
		</div>
	</div>
	
	<div class="container_top">	
		<div class="top">
			<div class="mychart">
				<p><b>���� ��Ʈ</b></p>
				<div id="listdiv"><p>���� ����</p>
					<div id="inputTxt"></div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container_tab">	
		<div class="tab">
			<div class="tabset">
    			<ul class="tabs">
        		<li><a href="#panel01" class="on">��ü</a></li>
        		<li><a href="#panel02">�ܷ�</a></li>
        		<li><a href="#panel03">�Կ�</a></li>
        		<li><a href="#panel04">�ǰ�����</a></li>
        		<li><a href="#panel05">���ϼ���</a></li>
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
				<p>���������� �Ͻø� �� ���� ������ �� �� �ֽ��ϴ�.</p>
				<div id="btn01"><a href="#">���������ϱ�</a></div>
			</div>
			<div class="info02">
				<div id="div01">���᳻��</div>
				<div id="div02">���೻��</div>
				<div id="div03">���ܰ˻���</div>
				<div id="div04">���������</div>
			</div>
			<div class="info03">
				<p>������ ���������� �����ϰ� ��ȣ�ϱ� ���� ��й�ȣ�� ���������� �����Ͻ� ���� �ǰ��ص帳�ϴ�.<br/>
				����ƻ꺴�������� ȸ������ ����������ȣ�� �ּ��� ���ϰڽ��ϴ�.</p>
				<div id="btn03"><a href="#">��й�ȣ����</a></div>
			</div>
			<div class="info04">
				<p>���� �Խñ�</p> <br/>
				<div class="post">
					<div id="p01">������</div>
					<div id="p02">�Ƿ���</div>
					<div id="p03">�м������û</div>
					<div id="p04">�ڿ�����</div>
					<div id="p05">������ �Ҹ�</div>
					<div id="p06">Ī���ڳ�</div>
				</div>
			</div>
		</div>
	</div>
	
</div>
</body>
</html>