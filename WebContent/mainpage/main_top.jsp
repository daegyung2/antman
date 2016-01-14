<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	#l_back #login .grid .login_innerbox{width:700px; height:20px; margin:0 auto; margin-right:-180px; position:relative;}
	#l_back #login .grid .login_innerbox ul{margin-top:-1px; z-index:100; }
	#l_back #login .grid .login_innerbox li{float:left; padding:0 10px; position:relative;}
	#l_back #login .grid .login_innerbox li.first{padding-left:0px;}
	#l_back #login .grid .login_innerbox li.last{padding-right:0px; border:0 none;}
	#l_back #login .grid .login_innerbox li a{color:#FFFFFF; font-size:12px;}
	#l_back #login .grid .login_innerbox li a:hover{color:#FAED7D; font-size:12px;}
	
	#h_back{ width:100%; height:40px; margin-top:20px; position:absolute;}
	#h_back #header{height:40px; margin:0 auto; position:relative;}
	#h_back #header .grid{height:40px; position:relative; }
	#h_back #header .grid #title{width:140px; height:38px; margin-top:7px; margin-left:0px; position:relative; z-index:200;}
	#h_back #header .grid #title #box{width:140px; height:38px; padding-left:40px; padding-top:0px; position:relative;}
	#h_back #header .grid #title #box a{display:block; width:100%; height:100%; padding-top:10px;}
	
	#gnb{ height:40px; margin-top:-10px; border-bottom:1px solid #5586EB; padding-left:530px; position:relative;}
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
  			<ul><c:if test="${sessionScope.memId ne null && sessionScope.memauth eq 'P' }">
    			<li><a href="/antman/p_mypage.do?id=${sessionScope.memId}">����������</a></li>
    		    </c:if>
    		    
    		    <c:if test="${sessionScope.memId ne null && sessionScope.memauth eq 'D' }">
    			<li><a href="/antman/scheduleform.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memname}">�ǻ縶��������</a></li>
    		    </c:if>
    		    
    		    <c:if test="${sessionScope.memId ne null && sessionScope.memauth eq 'G' }">
    			<li><a href="/antman/adminmain.do">������������</a></li>
    		    </c:if>
    		   
    		   <c:if test="${sessionScope.memId ne null && sessionScope.memauth eq 'E' }">
    			<li ><a href="/antman/e_mypage.do?eid=${sessionScope.memeid}&name=${sessionScope.memname}">��������������</a></li>
    		    </c:if>
    		    
  				<c:if test="${sessionScope.memId eq null}">
    			<li class="first"><a href="/antman/loginForm.do">�α���</a></li>			
    			<li><a href="/antman/loginCheck.do">ȸ������</a></li>
    			</c:if>
    			<c:if test="${sessionScope.memId ne null}">
    			<%-- ${sessionScope.memId }�� �ݰ����ϴ�. --%>
    			<li class="first"><a href="/antman/logout.do">�α׾ƿ�</a></li>
    			</c:if>

    			
    			<li><a href="/antman/mainroad.do">���ô±�</a></li>
    			<li><a href="/antman/sitemap.do">����Ʈ��</a></li>
    			<li><a href="/antman/notready.do">�����ѷ�����</a></li>
    			<li><a href="/antman/notready.do">English</a></li>
    			<li><a href="/antman/notready.do">����</a></li>
    			<li><a href="/antman/notready.do">������</a></li>
    		
  			</ul>
		</div>
	</div>
	</div>
</div>

<!-- header ���� -->
<div id="h_back">
	<div id="header">
	<div class="grid">
		<div id="title"><div id="box"><a href="/antman/main.do"><img src="\antman\img\main_logo.png" width="200" height="50"/></a></div></div>
		<div id="gnbWrap">
			<nav>
    			<ul id="gnb">
            		<li>
            			<a href="/antman/treatmentsearch.do">�Ƿ���/�����</a>
                		<ul>
                			<li><a href="/antman/treatmentsearch.do">�Ƿ���</a></li>
                    		<li><a href="/antman/treatmentchoice.do?p_depart_id=1">�����</a></li>
                    		<li><a href="/antman/treatmentchoice.do?p_depart_id=3">�Ϻ���</a></li>
                    		<li><a href="/antman/treatmentchoice.do?p_depart_id=4">��̺���</a></li>
							<li><a href="/antman/treatmentchoice.do?p_depart_id=5">���庴��</a></li>
							<li><a href="/antman/treatmentchoice.do?p_depart_id=6">����</a></li>
							<li><a href="/antman/treatmentchoice.do?p_depart_id=7">Ŭ����</a></li>
							<li><a href="/antman/treatmentchoice.do?p_depart_id=8">��Ÿ</a></li>
                		</ul>
            		</li>
            		<li>
            			<a href="/antman/appointmentmain.do">�̿�ȳ�</a>
                		<ul>
                			<li><a href="/antman/appointmentmain.do">���Ό��</a></li>
							<li><a href="/antman/notready.do">�ܷ�����ȳ�</a></li>
							<li><a href="/antman/notready.do">��������ȳ�</a></li>
							<li><a href="/antman/notready.do">�Կ�����ȳ�</a></li>
							<li><a href="/antman/notready.do">������ȣ�ȳ�</a></li>
							<li><a href="/antman/notready.do">�˻�Ǿȳ�</a></li>
                		</ul>
            		</li>
                	<li>
            			<a href="/antman/faqboard.do">������</a>
            			<ul>
                			<li><a href="/antman/faqboard.do">�����ϴ�����</a></li>
							<li><a href="/antman/voc.do">���ǼҸ�</a></li>
							<li><a href="/antman/praiseboard.do">Ī���ڳ�</a></li>
							<li><a href="/antman/pageinquiry.do">Ȩ�������̿빮��</a></li>
							<li><a href="/antman/offerinfo.do">�����������ȳ�</a></li>
                		</ul>
                	</li>
                	<li>
            			<a href="/antman/academylist.do?id=${sessionScope.memId}">���б���</a>
            			<ul>
                			<li><a href="/antman/academylist.do?id=${sessionScope.memId}">�м��������</a></li>
							<li><a href="/antman/notready.do">�м�����ٽú���</a></li>
							<li><a href="/antman/notready.do">����������</a></li>
							<li><a href="/antman/notready.do">3D�ڷ�</a></li>
                		</ul>
                	</li>
                	<li>
            			<a href="/antman/intro.do">�����Ұ�</a>
            			<ul>
                			<li><a href="/antman/guide.do">�����ȳ�</a></li>
							<li><a href="/antman/mission.do">�̼ǰ�����</a></li>
							<li><a href="/antman/present.do">��Ȳ</a></li>
							<li><a href="/antman/greet.do">�������λ縻</a></li>
							<li><a href="/antman/mainboard.do">��������</a></li>
							<li><a href="/antman/newsboard.do">����</a></li>
							<li><a href="/antman/lectureboard.do">���¾ȳ�</a></li>
							<li><a href="/antman/cultureboard.do">��ȭ������</a></li>
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