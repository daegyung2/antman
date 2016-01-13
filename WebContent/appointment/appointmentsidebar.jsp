<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���ǼҸ� | ������ | ������</title>
<script type="text/javascript" src="/antman/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(function(){
	/* ���࿡ Ŭ���� ��ü�� ������ü�� display���� none���� �������� ���� */
	$('.title').click(function(){
	 if($(this).next().css('display')=='none'){
		$('.sub').slideUp(0);
		$(this).next().slideDown(0);
	 }
		/*$('.sub').hide();
		$(this).next().show();*/
	});
	
})

$(function(){
	var tabDiv = $('#nav');
	var anchors =  tabDiv.find('ul.sub a');
	var currentAnchor = anchors.filter('.on'); 
	/* selector�߿��� (~)����Ǵ� ��ü ã�� */
	var currentPanel = $(currentAnchor.attr('href'));
	currentPanel.show();
	
	anchors.click(function(event){
		event.preventDefault(); /* �ش� �̺�Ʈ �⺻���� ����(����) */
		var newAnchor = $(this);
		/* Ŭ���Ǵ� a�� ���ο� ���ð�ü(newAnchor)�� ���� */
		var newPanel = $(newAnchor.attr('href'));
		/* ���ο� ���ð�ü��href���� ȣ���ؼ� ���ο�panel ���� */
		currentAnchor.removeClass('on');
		/* ������ ���õ� a���� onŬ������ ������ ȸ��������� ó�� */
		newAnchor.addClass('on');
		/* ���ο� ����a�� onŬ���� �����ؼ� ���������� ó�� */
		currentPanel.hide();
		/* ���� �������� �ִ� panel ������ */
		newPanel.show();
		/* ���Ӱ� ���ǵ� panel�� ���̱� */
		currentAnchor = newAnchor;
		/* ���缱�õ� a�� ���� Ŭ���� a������ ���� */
		currentPanel = newPanel;
		/* ���� �������� �ִ� panel�� ���Ӱ� ���ǵ� panel������ ���� */
	})
})
</script>
<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	.sidebar{width:200px; height:1350px; float:left; margin-left:35px; top:95px; position:absolute; border:1px solid #BDBDBD; border-top:1px solid transparent; border-bottom:1px solid transparent;}
	.sidebar #sidebar_top{width:200px; height:120px; font-size:22px; margin-top:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD; text-align:center;}
	.sidebar #sidebar_top b{padding-right:0px;}
	.sidebar #bookinfo{width:160px; height:100px; margin-left:20px; margin-top:380px; border:1px solid #BDBDBD; text-align:center; font-size:16px; }
	.sidebar #bookinfo b{font-size:20px;}
	#nav{width:200px; margin:30px auto; text-indent:10px; float:left; margin-top:25px; margin-bottom:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD;}
	#nav .title{display:block; height:50px; line-height:3em; font-size:17px; background:#5586EB; color:#FFFFFF; text-align:center; padding-right:20px;}
	#nav .title:hover{text-decoration:underline; }
	#nav .sub li{height:36px; line-height:2em; background:rgba(233,233,233,0.65);}
	#nav .sub li a{display:block; font-size:15px; color:#222; text-align:right; padding-right:20px; }
	#nav .sub li a:hover{text-decoration:underline; }
	#nav .sub li a.on{text-decoration:underline; color:#5586EB; }
	#nav .sub{display:none;}
	#nav li:first-child a.title{border-top:none;}
	
	#container{width:960px; height:1300px; margin:0 auto; margin-left:320px; position:relative;}
	#container .main{width:900px; height:1200px; margin-left:30px; position:relative}
	#container .main #main_top{width:850px; height:130px; margin-top:20px; line-height:1.6;}
	#container .main #btn{width:70px; height:30px; margin-top:20px; margin-right:10px; background:#5586EB; position:relative; float:right;}
	#container .main #btn a{width:60px; height:30px; padding-left:10px;}
	#container .main #bar{clear:both; position:absolute; width:850px; height:1px; background:#CFCFCF; margin-top:65px; opacity:0.8; }
	#container .main #title_1{font-size:24px; left:0px; position:relative; margin-top:30px;}
	#container .main #title_2{font-size:24px; left:0px; position:relative; margin-top:90px;}
	#main_video{width:550px; height:420px; border:1px solid #333; float:left; margin-top:40px;}
	#main_text{width:250px; height:400px; font-size:14px; line-height:1.8em; padding:10px; overflow:auto; text-align:justify; 
				margin-top:40px; padding-left:40px;}
</style>

</head>
<body>

<div class="sidebar">
	<div id="sidebar_top">
		<br/><br/>
		<font color="#5586EB"><b>�̿�ȳ�</b></font>
	</div>
<ul id="nav">
	<li>
    	<a href="#" class="title"><b>�����ȳ�</b></a>
        <ul class="sub">
        	<li><a href="#">���ô±�</a></li>
            <li><a href="#">�����ȳ�</a></li>
            <li><a href="#">�ѷ�����</a></li>
            <li><a href="#">���ǽü�</a></li>
            <li><a href="#">��ȭ��ȣ�ȳ�</a></li>
        </ul>
    </li>
    <li>
    	<a href="#" class="title"><b>�ܷ�����ȳ�</b></a>
        <ul class="sub">
        	<li><a href="#">���Ό��</a></li>
            <li><a href="#" class="on">��������</a></li>
            <li><a href="#">����ȳ�</a></li>
            <li><a href="#">��������</a></li>
        </ul>
    </li>
    <li>
    	<a href="#" class="title"><b>��������ȳ�</b></a>
        <ul class="sub">
        	<li><a href="#">����ȳ�</a></li>
            <li><a href="#" class="on">��������</a></li>
        </ul>
    </li>
       <li>
    	<a href="#" class="title"><b>�Կ�����ȳ�</b></a>
  
    </li>
       <li>
    	<a href="#" class="title"><b>������ȣ�ȳ�</b></a>
        <ul class="sub">
        	<li><a href="#">������ȣ��</a></li>
            <li><a href="#" class="on">��û���</a></li>
        </ul>
    </li>
       <li>
    	<a href="#" class="title"><b>�˻�Ǿȳ�</b></a>

        </ul>
    </li>
</ul>
</ul>
<div id="bookinfo">
	<p>���๮�� <br/>
	<b>1688-7575</b></p>
</div>
</div>
