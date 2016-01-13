<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }

	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	#top{width:200px; float:top; margin-left:100px; }
	.container{width:1100px; height:1300px; margin:0 auto;  margin-left:230px; position:relative;}
	.container .sub{width:800px; height:50px; margin-left:80px; top:0px; position:relative;}
	.container .sub b{font-size:22px; color:#000000;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:30px; position:relative;}
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container ���� -->

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:100px; margin-top:-17px; position:relative}
	#container .main #title{width:800px; margin-left:-23px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; text-align:center; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>

<div id="side">
	<jsp:include page="/mainpage/sitemapsidebar.jsp" flush="true | false"/>
</div>


<div id="container">
	<div class="main"><br/><br/>
	<div class="title"><h2>����Ʈ��</h2></div>
		
	<table width="900" height="300" border="1">
	<tr>
	
	<td>
	<a href="/antman/loginForm.do">�α���</a><br/><br/> 
	<a href="/antman/loginCheck.do">ȸ������</a><br/><br/>
	<a href="/antman/mainroad.do">���ô±�</a><br/><br/>
	<a href="/antman/sitemap.do">����Ʈ��</a><br/><br/>
	</td>
	
	<td>
	<a href="/antman/treatmentsearch.do">�Ƿ���</a><br/><br/> 
	<a href="/antman/treatmentsearch.do">�����</a><br/><br/>
	<a href="/antman/appointmentsimpleform.do">������</a><br/><br/>
	<a href="/antman/appointmentmain.do">�󼼿���</a><br/><br/> 
	<a href="/antman/loginForm.do">������ȸ</a><br/><br/>
	</td>
	
	<td>
	<a href="/antman/mainboard.do" style="text-decoration:none">��������</a><br/><br/> 
	<a href="/antman/newsboard.do" style="text-decoration:none">����</a><br/><br/>
	<a href="/antman/lectureboard.do" style="text-decoration:none">��������</a><br/><br/>
	<a href="/antman/cultureboard.do" style="text-decoration:none">��ȭ������</a><br/><br/> 
	<a href="/antman/academylist.do" style="text-decoration:none">�м��������</a><br/><br/> 
	</td>
	
	<td>
	<a href="/antman/faqboard.do" style="text-decoration:none">�����ϴ�����</a><br/><br/> 
	<a href="/antman/praiseboard.do" style="text-decoration:none">Ī���ڳ�</a><br/><br/>
	<a href="/antman/pageinquiry.do" style="text-decoration:none">Ȩ�������̿빮��</a><br/><br/>
	<a href="/antman/offerinfo.do" style="text-decoration:none">������ ���� ����</a><br/><br/>  
	</td>
	
	<td>
	<a href="/antman/guide.do" style="text-decoration:none">�����Ұ�<br/><br/> 
	<a href="/antman/mission.do" style="text-decoration:none">�̼ǰ�����<br/><br/>
	<a href="/antman/present.do" style="text-decoration:none">��Ȳ<br/><br/>
	<a href="/antman/greet.do" style="text-decoration:none">������ �λ縻<br/><br/>
	</td>
	

	
	</tr>
	</table>

		</div>
		
		
	</div>
    