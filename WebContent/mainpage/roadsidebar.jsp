<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden; height:1200px;}
	a{text-decoration:none; }
	
	.sidebar{width:200px; height:1350px; float:left; margin-left:35px; top:95px; position:absolute; border:1px solid #BDBDBD; border-top:1px solid transparent;}
	.sidebar #sidebar_top{width:200px; height:120px; font-size:22px; margin-top:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD; text-align:right;}
	.sidebar #sidebar_top b{padding-right:0px;}
	.sidebar #bookinfo{width:160px; height:100px; margin-left:20px; margin-top:380px; border:1px solid #BDBDBD; text-align:center; font-size:16px; }
	.sidebar #bookinfo b{font-size:20px;}
	#nav{width:200px; margin:30px auto; text-indent:10px; float:left; margin-top:25px; margin-bottom:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD;}
	#nav .title{display:block; height:50px; line-height:3em; font-size:17px; background:#5586EB; color:#FFFFFF; text-align:right; padding-right:20px;}
	#nav .title:hover{text-decoration:underline; }
	#nav .sub li{height:36px; line-height:2em; background:rgba(233,233,233,0.65);}
	#nav .sub li a{display:block; font-size:15px; color:#222; text-align:right; padding-right:20px; }
	#nav .sub li a:hover{text-decoration:underline; }
	#nav .sub li a.on{text-decoration:underline; color:#5586EB; }
	#nav .sub{display:none;}
	#nav li:first-child a.title{border-top:none;}
	
	
</style>
</head>
<div class="sidebar">
	<div id="sidebar_top">
		<br/><br/>
		<font color="#5586EB"><b>���ô±�</b></font>
	</div>
<ul id="nav">
<li>
<a href="/antman/main.do" class="title"><b>HOME</b></a>
</li>
	<li>
    	<a href="#" class="title"><b>�߱޾ȳ�</b></a>
        <ul class="sub">
        	<li><a href="#">�ǹ���ϻ纻</a></li>
            <li><a href="#">����</a></li>
            <li><a href="#">�߰���������</a></li>
            <li><a href="#">����������Ȯ��</a></li>
        </ul>
    </li>
    <li>
    	<a href="#" class="title"><b>������</b></a>
        <ul class="sub">
        	<li><a href="/antman/faqboard.do">�����ϴ�����</a></li>
            <li><a href="/antman/voc.do" class="on">���ǼҸ�</a></li>
            <li><a href="/antman/praiseboard.do">Ī���ڳ�</a></li>
            <li><a href="/antman/pageinquiry.do">Ȩ�������̿빮��</a></li>
            <li><a href="/antman/offerinfo.do">�����������ȳ�</a></li>
        </ul>
    </li>
</ul>
<div id="bookinfo">
	<p>���๮�� <br/>
	<b>1688-7575</b></p>
</div>
</div>
</html>