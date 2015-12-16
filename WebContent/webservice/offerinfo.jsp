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
	#container{ width:1100px; height:1500px; margin:0 auto; position:relative;}
	#container .main{ width:1000px; height:1400px; margin-left:50px; position:relative}
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
</style>

</head>
<body>
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
</body>
</html>