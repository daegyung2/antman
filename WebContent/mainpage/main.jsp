<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>DB����</title>

<script type="text/javascript" src="/antman/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(function(){
	var visual = $('#visual');
	var btns = $('#btns a');
	var imgs = visual.find('li');
	var currentNum = 0;
	function rotateImg(){
		currentNum++;
		currentNum = currentNum%4;
		imgs.stop().fadeOut();
		$('.bg'+currentNum).stop().fadeIn();
	}
	var timer = setInterval(rotateImg, 4000);
	btns.click(function(){
		clearInterval(timer);
		currentNum = parseInt($(this).text())-1;
		imgs.stop().fadeOut();
		$('.bg'+currentNum).stop().fadeIn();
		timer = setInterval(rotateImg,4000);
	})
})
</script>



<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	body{font-size:14px; line-height:1.4; overflow-x:hidden; height:700px; margin:0px; padding:0px;}
	a{text-decoration:none; }

	#menutop{width:100%; height:40px; z-index:200; }
	
	/* container ���� */
	
	#container{width:1300px; height:800px; margin:0 auto; margin-top:-40px; position:relative;}
	#container .main{width:1280px; height:700px; position:relative; margin-left:10px;}
	
	#visual{ width:1280px; margin:20px auto; top:120px; position:relative; }
	#visual>ul{ width:1280px; height:400px; position:relative;}
	#visual>ul>li{ position:absolute; left:0px; top:0px; }
	#visual>ul>li:not(:first-child){ display:none;}
	#visual>#btns{ position:absolute; bottom:10px; left:610px; }
	
	#container .main .quickbtn{width:1280px; height:200px; margin-top:120px; }
	#container .main .quickbtn #btn01{float:left; width:640px; height:120px; background:#5586EB; font-size:16px; text-align:center; line-height:3em;}
	#container .main .quickbtn #btn02{width:640px; height:120px; background:rgba(71,71,71,0.8); margin-left:640px; font-size:16px; text-align:center; line-height:3em;}
	
	#container .main .boards{width:1280px; height:300px; margin-top:-20px; }
	#container .main .boards #board01{float:left; width:310px; height:300px; font-size:18px; text-align:center; border:2px dashed rgba(71,71,71,0.8); line-height:15em; }
	#container .main .boards #board01 a{display:block; width:100%; height:100%;}
	#container .main .boards #board01:hover{border:2px dashed #5586EB; background:rgba(71,71,71,0.15);}
	#container .main .boards #board02{width:310px; height:300px; margin-left:320px; font-size:18px; text-align:center; border:2px dashed rgba(71,71,71,0.8); line-height:15em; }
	#container .main .boards #board02 a{display:block; width:100%; height:100%;}
	#container .main .boards #board02:hover{border:2px dashed #5586EB; background:rgba(71,71,71,0.15);}
	#container .main .boards #board03{width:310px; height:300px; margin-left:640px; margin-top:-305px; font-size:18px; text-align:center; border:2px dashed rgba(71,71,71,0.8); line-height:15em; }
	#container .main .boards #board03 a{display:block; width:100%; height:100%;}
	#container .main .boards #board03:hover{border:2px dashed #5586EB; background:rgba(71,71,71,0.15);}
	#container .main .boards #board04{width:310px; height:300px; margin-left:960px; margin-top:-305px; font-size:18px; text-align:center; border:2px dashed rgba(71,71,71,0.8); line-height:15em; }
	#container .main .boards #board04 a{display:block; width:100%; height:100%;}
	#container .main .boards #board04:hover{border:2px dashed #5586EB; background:rgba(71,71,71,0.15);}
	#container .main table{border:1px; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px; text-align:center; }
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65); text-align:center; }
	#container .main td{padding:5px 5px 5px 5px; }
	
	/* footer ���� */
	#f_back{clear:both; width:100%; height:300px; background:#474747; margin:0 auto; top:100px; position:relative;}
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


</head>

<body>

<div id="menutop">
	<jsp:include page="main_top.jsp" flush="true | false"/>
</div>

<!-- container ���� -->
<div id="container">	
	<div class="main">
	<div id="visual">
		<ul>
		<c:forEach var="dto" items="${list}" begin="0" end="6" varStatus="status">
    		<li class="bg${status.index}"><a href="newsboardcontent.do?NEid=${dto.NEid}"><img src="${dto.neimg }" alt="" /></a></li>

        	</c:forEach>
    	</ul>

	<div id="btns">
		<a href="#">
		<font color="#FFFFFF">1</font>
		</a> 
		<font color="#FFFFFF"> || </font>
		<a href="#">
		<font color="#FFFFFF">2</font>
		</a>
		<font color="#FFFFFF"> || </font>
		<a href="#">
		<font color="#FFFFFF">3</font>
		</a>
	</div>
	</div>
	<div class="quickbtn">
		<a href="/antman/appointmentmain.do"><div id="btn01"><font color="#FFFFFF"><b>�¶��� ����<br/>�¶������� �ٷ� �����Ͻ� �� �ֽ��ϴ�.</b></font></div></a>
		<c:if test="${sessionScope.memauth eq 'P' && sessionScope.memId ne null }">
		<a href="/antman/p_mypage.do?id=${sessionScope.memId}">
		</c:if>
		<c:if test="${sessionScope.memId eq null }">
		<a href="/antman/loginForm.do">
		</c:if>
				<c:if test="${sessionScope.memauth eq 'D' && sessionScope.memId ne null }">
		<a href="/antman/scheduleform.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memname}">
		</c:if>
		
			   <c:if test="${sessionScope.memId ne null && sessionScope.memauth eq 'E' }">
    			<a href="/antman/e_mypage.do">
    		    </c:if>
		<div id="btn02"><font color="#FFFFFF"><b>���� ��ȸ<br/>���Ό�� �� ������ȸ�� �����մϴ�.</b></font></div></a>
	</div>
	
	<table width="1300" height="150" border="0" bordercolor="black">
	<tr>
	
	
	<td align="center">
	<table border="1" width="315" align="center">
	<tr><td><b>��������</b></td></tr>
	<c:forEach var="dto" items="${listA}" begin="0" end="4">
	<tr><td>
	<font color="#000000"><a href="/antman/mainboard.do">${dto.subject}<br/></a></font>
	</td></tr>
	</c:forEach>
	</table>
	</td>
	
	
	<td align="center">
	<table border="1" width="315" align="center">
	<tr><td><b>����</b></td></tr>
	<c:forEach var="dto" items="${list}" begin="0" end="4">
	<tr><td>
	<font color="#000000"><a href="/antman/newsboard.do">${dto.subject}<br/></a></font>
	</td></tr>
	</c:forEach>
	</table>
	</td>
	
	<td align="center">
	<table border="1" width="315" align="center">
	<tr><td><b>���¾ȳ�</b></td></tr>
	<c:forEach var="dto" items="${listB}" begin="0" end="4">
	<tr><td>
	<font color="#000000"><a href="/antman/lectureboard.do">${dto.subject}<br/></a></font>
	</td></tr>
	</c:forEach>
	</table>
	</td>
	
	<td align="center">
	<table border="1" width="315" align="center">
	<tr><td><b>�м����</b></td></tr>
	<c:forEach var="dto" items="${listC}" begin="0" end="4">
	<tr><td>
	<font color="#000000"><a href="/antman/academylist.do">${dto.assubject}<br/></a></font>
	</td></tr>
	</c:forEach>
	</table>
	</td>
	
	
	
	</tr>
	</table>
	

	
	
		<!-- ����Ʈ �̾Ƽ� ����ҷ��� �ߴ��� ������ ���� ������.. 
		ex.jsp�� ����Ʈ ��� �׽�Ʈ �� 
		-->
	<!-- <div class="boards">
		<div id="board01"><font color="#000000"><b>��������</b></font></a></div>
		 -->
		
<%-- 	 <table align="center" border="1">
		  <c:forEach var="dto" items="${listA}">
		<tr><td>
		 <font color="#000000"><a href="/antman/mainboard.do">${dto.subject}<br/></a></font>
		</td></tr>
		</c:forEach> --%>
	
<!-- 		</div> -->

		
		<!-- <div id="board02"><font color="#000000"><b>����</b></font></a></div> --> 
		
		
<%-- 	
		  <c:forEach var="dto" items="${listB}">
		<tr>
		 <font color="#000000"><a href="/antman/mainboard.do">${dto.subject}<br/></a></font>
		</tr>
		</c:forEach>
</table> --%>
<!-- </div> -->
		
		
		
		
		<!-- 
		<div id="board03"><a href="#"><font color="#000000"><b>��������</b></font></a></div> -->
		<%-- <table align="center" border="1">
		  <c:forEach var="dto" items="${listC}">
		<tr>
		 <font color="#000000"><a href="/antman/mainboard.do">${dto.subject}<br/></a></font>
		</tr>
		</c:forEach>
		</div>
		 --%>
		
	<!-- 	<div id="board04"><a href="#"><font color="#000000"><b>�м����</b></font></a></div>
		
			
		</div> -->
	
	</div>
</div><br/><br/><br/>
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