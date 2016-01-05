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
	
	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#container{width:960px; height:1300px; margin:0 auto; margin-left:250px; position:relative;}
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

<div id="menutop">
	<jsp:include page="webtop.jsp" flush="true | false"/>
</div>

<!-- container ���� -->
<div id="side">
	<jsp:include page="websidebar.jsp" flush="true | false"/>
</div>

<div id="container">	
	<div class="main">
		<div id="title_1"><b>���ǼҸ�</b></div>
		<div id="main_top">	
		������ �̿��Ͻø鼭 �����Ͻ� ���̳� �����ϰ��� �ϴ� ������ ����� �ּ���. <br/>
		<font color="#5586EB">�ο������� ���� ���� ����, ������� ���� �ʰų� ��Ȯ�ϰ� ������� ���� ��ȣ�� ����, �弳�� ���� ��,<br/>
		���� ���� �亯�� �帮�� ������ ���� ������ �� �ֽ��ϴ�.</font> <br/>
		�ǰ� ��� �� ������ ��Ȯ�� ����ó�� �����ֽø� ���� ȸ���� ��� �帳�ϴ�. <br/>
		<b>���ǻ��� :</b> 1688-7575 <br/>
		<div id="btn"><a href="#"><font color="#FFFFFF">�۾���</font></a></div>
		<div id="bar"></div>
		</div>
		<div id="title_2"><font color="#5586EB"><b>�Ҹ�����ó���ȳ�</b></font></div>
		<div id="main_video">
		������
		</div>
		<div id="main_text">
		�츮 ������ �� �����в��� ���� ���ϰ� ���Ḧ ���� �� �ֵ��� ���Ӿ��� ����ϰ� �ֽ��ϴ�. 
		������ �̿��ϸ鼭 ���� ���� ������ ������ �ֽø� ������ ����ϰ� �ּ��� ���� ó���� �帮�ڽ��ϴ�. 
		�츮 ������ ������� ���� ����� ��������, �����Ҹ���, �׸��� ���ͳ��� �̿��� ��������� �ֽ��ϴ�. 
		ù ��° ���� ������ �������� �Ǵ� ��ȭ�� ���� ����������� ���� �ް� �ֽ��ϴ�. 
		���������� �����Ͻø� ������׿� ���� ģ���ϰ� ����� �帮���� �ϰڽ��ϴ�. 
		���� ��ȭ�� �̿��� ����� ������ȣ 02-3010���� 5350���� ������ȭ 080-203���� 3355���� �̿��Ͻø� �˴ϴ�. 
		���� ���� ���� ��� �� ��° ���� �Ҹ����Դϴ�. 
		���� �� �ܷ� �� ���� ������ ��ġ�� ���� �Ҹ��Կ� �� ���� ���� �Ű� ī�带 �ۼ��� �����Ͻø� �˴ϴ�. 
		������� ���� ��� �� ��°�� ���ͳ��� ���� ���� ����� �ִµ���. 
		����ƻ꺴�� Ȩ������ amc.seoul.kr���� ȸ������ �� ���� �Ҹ��� �̿��� �����Ͻø� �˴ϴ�. 
		�̷��� �� �����в��� ������ �ֽ� �����̳� ���� ������ �ִ��� �ż��� �ذ��ϰ� ó���� �帮�ڽ��ϴ�. 
		������ ���� ģ���ϰ� �ּ��� ���ϴ� ����ƻ꺴���� �ǵ��� ����ϰڽ��ϴ�. 
		�����մϴ�.
		</div>
	</div>
</div>

</body>
</html>