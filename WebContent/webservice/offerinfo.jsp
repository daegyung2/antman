<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�����������ȳ� | ������ | ������</title>

<style type="text/css">
	body{margin:0px; padding:0px;}
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px;}
	li{ margin:0px; padding:0px; }
	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#container{ width:1100px; height:1600px; margin:0 auto; margin-left:250px; position:relative;}
	#container .main{ width:1000px; height:1500px; margin-left:50px; position:relative}
	#container .main #title_1{font-size:30px; left:0px; position:relative; margin-top:30px;}
	#container .main #main_top{ width:970px; height:70px; margin-top:25px; font-size:15px; line-height:1.8;}
	#container .main .con_table{width:950px; height:280px; margin-top:10px;}
	#container .main .con_table #title_2{font-size:22px; color:#5586EB; position:relative;  }
	#container .main .con_table #table_sub{margin-top:15px;}
	#container .main .con_table #table_sub table{border:1px solid #BDBDBD; border-top:2px solid #5586EB;  border-collapse:collapse;}
	#container .main .con_table #table_sub th{color:#5586EB; height:30px;}
	#container .main .con_table #table_sub td{text-align:center; height:50px; }
	#container .main .con_table #table_sub td.textinput{ text-align:left; padding-left:15px; }
	#container .main .con_table #table_sub #TVbtn{width:120px; height:20px; margin-left:13px; border:1px solid #BDBDBD;}
	#container .main .con_table #table_sub #TVbtn a{width:110px; height:20px; padding-top:10px; padding-left:5px; color:#121212; font-size:12px;}
	#container .main .con_table #table_sub #medinfobtn{width:120px; height:20px; margin-left:13px; border:1px solid #BDBDBD;}
	#container .main .con_table #table_sub #medinfobtn a{width:110px; height:20px; padding-top:10px; padding-left:5px; color:#121212; font-size:12px;}
	#container .main .con_table #table_sub #healthbtn{width:120px; height:20px; margin-left:13px; margin-top:5px; border:1px solid #BDBDBD;} 
	#container .main .con_table #table_sub #healthbtn a{width:110px; height:20px; padding-top:10px; padding-left:5px; color:#121212; font-size:12px;}
	#container .main .con_img{width:950px; height:200px; margin-top:10px;}
	#container .main .con_img #title_3{font-size:22px; color:#5586EB; position:relative;  }
	#container .main .con_img #img{width:950px; height:180px; border:1px solid #BDBDBD;  }
	#container .main .con_img p{ font-size:12px; text-align:right; margin-top:5px;}
	#container .main .con_last{width:950px; height:150px; margin-top:30px;}
	#container .main .con_last #title_4{font-size:22px; color:#5586EB; position:relative;  }
	#container .main .con_last #title_5{font-size:20px; position:relative; margin-top:5px;}
	#container .main .con_last #title_6{position:relative; margin-top:3px;}
	
	#container .main .content{width:950px; height:280px; border:1px solid #CFCFCF; background:rgba(233,233,233,0.65); margin-top:0px;}
	#container .main .content #title_2{font-size:18px; position:relative; margin-top:15px; margin-left:18px;}
	#container .main .content #main_text{width:880px; height:135px; font-size:14px; line-height:1.8em; padding:10px; overflow:auto; 
		text-align:justify; margin-top:20px; margin-left:25px; background:#FFFFFF; border:1px solid #CFCFCF;}
	#container .main .content #radio{width:880px; height:20px; margin-top:20px; margin-left:25px;}
	
	#container .main .writeform{width:950px; margin-top:30px; margin-bottom:30px; }
	#container .main .writeform .sub table{border:1px solid #BDBDBD; border-top:2px solid #5586EB;  border-collapse:collapse;}
	#container .main .writeform .sub th,td{height:45px; }
	#container .main .writeform .sub th.thtype { padding-left:32px; text-align:left; color:#5586EB; background:rgba(233,233,233,0.65);} <!-- top right bottom left -->
	#container .main .writeform .sub th.required { padding-left:20px;}
	#container .main .writeform .sub th .requiredTitle { display:block; padding-left:13px; color:#0e787c; }
	#container .main .writeform .sub td .inputtext input{ margin-left:10px; width:310px;}
	#container .main .writeform .sub td .titleinput { width:100%;}
	#container .main .writeform .sub td.titleinput input { margin-left:10px;}
	#container .main .writeform .sub td .conttxtarea { margin-top:5px; width:100%; height:248px;}
	#container .main .writeform .sub td.phoneinput select { margin-left:10px; width:82px;}
	#container .main .writeform .sub td.phoneinput input { width:79px;}
	#container .main .writeform .sub td.emailinput select,
	#container .main .writeform .sub td.emailinput input { margin-left:10px; width:152px;}
	#container .main .writeform .sub td.titletd input{ margin-left:10px;}
	#container .main .writeform .sub td.titletd .infotxt { margin-left:10px; margin-top:-30px;}
	#container .main .writeform .sub td.titletd textarea { margin-left:10px;}
	#container .main .writeform #sendbtn{ width:80px; height:30px; margin-top:20px; margin-left:440px; background:#5586EB; position:relative; float:left;}
	#container .main .writeform #sendbtn a{ width:70px; height:30px; padding-left:10px; color:#FFFFFF;}
	#container .main .writeform #cancelbtn{ width:70px; height:30px; margin-top:20px; margin-left:530px; position:relative; border:1px solid #BDBDBD;}
	#container .main .writeform #cancelbtn a{ width:60px; height:30px; padding-top:10px; padding-left:18px; color:#121212;}
	
	#f_back{clear:both; width:100%; height:300px; background:#474747; margin:0 auto; margin-bottom:0px; margin-top:150px; }
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
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container ���� -->
<div id="side">
	<jsp:include page="websidebar2.jsp" flush="true | false"/>
</div>

<div id="container">	
	<div class="main">
		<div id="title_1"><b>�����������ȳ�</b></div>
		<div id="main_top">	
		<font>
		����ƻ꺴���� �ŷڵ� �ִ� �ǰ����� �������� �������� �����Ͽ� �� �ǰ��� ��ȸ ����⿡ ������ �ǰ��� �մϴ�. <br/>
		��, ����� �뵵�� ����ϰų� �簡���� ����� �� �����ϴ�.
		</font>
		</div>
		
		<div class="con_table">
			<div id="title_2"><b>�����ϴ� ������</b></div>
			<div id="table_sub">
				<table cellpadding="0" cellspacing="0" border="1" width="950px" height="230px;" class="tablelayout" >
				<col width="180px;" />
				<col width="620px;" />
				<col width="150px;" />
				<tbody>
					<tr>
						<th scope="col"><label for="name">����</label></th>
						<th scope="col">����</th>
						<th scope="col">�ٷΰ���</th>
					</tr>
					<tr>
						<th scope="row"><label for="video_con">������ ������</label></th>
						<td class="textinput">
						�ǰ��� ���� ���� ����, ��ü�� ���� ����, �������� �����ϴ� �˻��� ������ <br/>
						�Ϲ����� �����̿� ���� �����ϴ� �������Դϴ�. <br/>
						(�ǰ��÷���, �� �� �ѷ�����, �������� ���� �˻� ��)
						</td>
						<td class="div_input">
						<div id="TVbtn"><a href="#" class="TV">�ǰ�TV</a></div>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="text_con">�ؽ�Ʈ ������</label></th>
						<td class="textinput">
						��ȯ������ �Ĵ� ����, �Ƿ����� �̾߱� �� �پ��� �ؽ�Ʈ�Դϴ�. <br/>
						(��ȯ���, �Ļ���, �޵���Į��, ��Ȱ�Ӱǰ� ��)
						</td>
						<td class="div_input">
						<div id="medinfobtn"><a href="#" class="medinfo">�Ƿ�����</a></div>
						<div id="healthbtn"><a href="#" class="health">�ǰ��̾߱�</a></div>
						</td>
					</tr>
					</tbody>
					</table>
			</div>
		</div>
		<div class="con_img">
			<div id="title_3"><b>������ ���� ����</b></div>
			<div id="img">img</div>
			<p>�� ������ ���� ���� : Ȩ������ ��ũ �Ǵ� �������� ����</p>
		</div>
		<div class="con_last">
			<div id="title_4"><b>������ ���� ��û</b></div>
			<div id="title_5"><b>��ȭ ����</b></div>
			<div id="title_6">����ƻ꺴�� e-med�� ��öȣ ����(T.02-3010-5412)</div><br/>
			<div id="title_5"><b>�̸��� ����</b></div>
		</div>
		
		<div class="content">
			<div id="title_2"><b>�������� ���� �� �̿� ����(�ʼ�)</b></div>
			<div id="main_text">
			�������̸��Ϻ����� ������ ���������� �����ڰ� ���Ͽ� ���� �亯 �� ���� Ȯ���� ������ ���Ͽ� ����, �̿�˴ϴ�.
			�����Ǵ� �������� �׸��� �Ʒ��� �����ϴ�.<br/>
			�� ����, �޴���ȭ, �̸���<br/>
			������ ���������� �Ʒ��� �Ⱓ ���ȿ� ���Ͽ� ���� �� �̿�˴ϴ�.<br/>
			�� ������ ���������� ������ �̸��� ������ ��� ������ ���� �� �����˴ϴ�.<br/>
			�� �������̸��Ϻ����� ����ڰ� ���������� ������ ���ϴ� ��� ��ü ���� �ش� ������ �����մϴ�.<br/>
			���ϴ� �������� ���� �� �̿뿡 ���Ͽ� ���Ǹ� �ź��� �Ǹ��� ������, ���Ǹ� �ź��� ���, �� ������ �̸��Ϻ�����
			���񽺸� �̿��� �� ������ �˷� �帳�ϴ�.
			</div>
			<div id="radio">
			<input type="radio" name="agreement" value="����"> �����մϴ� &nbsp;
			<input type="radio" name="agreement" value="������������"> �������� �ʽ��ϴ�
			</div>
		</div>
		<div class="writeform">
			<div class="sub">
				<table cellpadding="0" cellspacing="0" border="1" width="100%" class="tablelayout" >
				<col width="20%" />
				<col width="80%" />
				<tbody>
					<tr>
						<th scope="row" class="thtype"><label for="name">������ ���</label></th>
						<td class="titleinput"><input type="text" id="name" name="name" class="inputText" value="" maxlength="25" style="width: 273px;"  /></td>
					</tr>
					<tr>
						<th scope="row" class="thtype"><label for="phone1">�޴���ȭ</label></th>
						<td class="phoneinput">
							<select id="phone1" name="phone1" class="phone1" style="width:87px; height:26px;">
							<option value='010'>010</option><option value='011'>011</option>
							<option value='016'>016</option><option value='017'>017</option>
							<option value='018'>018</option><option value='019'>019</option></select>
 							-
							<input type="text" class="inputtext" name="phone2" id="phone2" maxlength="4" value="" /> -
							<input type="text" class="inputtext" name="phone2" id="phone2" maxlength="4" value="" />
						</td>
					</tr>
					<tr>
						<th scope="row" class="thtype"><label for="email">�̸��� �ּ�</label></th>
						<td class="emailinput">
							<input type="text" class="inputtext" id="email1" name="email1" value="" maxlength="25"/> @ 
							<input type="text" class="inputtext" id="email2" name="email2" value="" maxlength="25"/>
							<select id="email3" name="email3" onchange="on_email3(this.form)" style="height:26px;">
							<option value="">�������ּ���.</option><option value="dreamwiz.com">dreamwiz.com</option>
							<option value="empas.com">empas.com</option><option value="gmail.com">gmail.com</option>
							<option value="hanafos.com">hanafos.com</option><option value="yahoo.co.kr">yahoo.co.kr</option>
							<option value="hotmail.com">hotmail.com</option><option value="korea.com">korea.com</option>
							<option value="nate.com">nate.com</option><option value="naver.com">naver.com</option>
							<option value="paran.com">paran.com</option><option value="hanmail.net">hanmail.net</option>
							<option value="0">�����Է�</option></select>
						</td>
					</tr>
					<tr>
						<th scope="row" class="thtype"><label for="inquirytitle">����</label></th>
						<td class="titletd">
							<input type="text" id="inquirytitle" name="inquirytitle" class="titleinput" maxlength="100" style="width: 720px;"/>
						</td>
					</tr>
					<tr>
						<th scope="row" class="thtype"><label for="inquirycontent">����</label></th>
						<td class="titletd" style="height: 350px;">
							<p class="infotxt">* <span id="byteView" >0</span> byte / �ִ� 4000 byte(�ѱ� 2000��, ���� 4000��)</p>
							<textarea rows="" cols="100" id="inquirycontent" name="inquirycontent" class="conttxtarea" style="width: 720px;"></textarea>
						</td>
					</tr>
					</tbody>
					</table>
			</div>
				<div id="sendbtn"><a href="#" class="send">��û�ϱ�</a></div>
				<div id="cancelbtn"><a href="#" class="cancel">���</a></div>
		</div>
	</div>
	
	
</div>
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
					<option value="0">======�����======</option>
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
					<option value="0">====��̺���====</option>
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
					<option value="0">=====���庴��=====</option>
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