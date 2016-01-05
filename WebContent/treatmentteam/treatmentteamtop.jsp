<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
	
	#bar{clear:both; position:absolute; width:100%; height:2px;  background:#BCE55C; top:0px; opacity:0.8;}

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
  				<c:if test="${sessionScope.memId eq null}">
    			<li class="first"><a href="/antman/loginForm.do">�α���</a></li>
    			</c:if>
    			<c:if test="${ sessionScope.memId ne null}">
    			<%-- ${sessionScope.memId }�� �ݰ����ϴ�.����� ������ ${session.Scope.memauth}�Դϴ�. --%>
    			<li class="first"><a href="/antman/logout.do">�α׾ƿ�</a></li>
    			</c:if>
    			
    			<li><a href="/antman/loginCheck.do">ȸ������</a></li>
    			<li><a href="#">�����ѷ�����</a></li>
    			<li><a href="#">���ô±�</a></li>
    			<li><a href="#">English</a></li>
    			<li><a href="#">����</a></li>
    			<li><a href="#">������</a></li>		
    			<li><a href="#">������</a></li>	
    			
    			<c:if test="${sessionScope.memauth eq 'P' }">
    			<li><a href="/antman/p_mypage.do?id=${sessionScope.memId}">����������</a></li>
    		    </c:if>
    		    
    		    <c:if test="${sessionScope.memauth eq 'D' }">
    			<li><a href="/antman/scheduleform.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memname}">�ǻ縶��������</a></li>
    		    </c:if>
    		    
    		    <c:if test="${sessionScope.memauth eq 'E' }">
    			<li><a href="#">����������</a></li>
    		    </c:if>
    		    
    		     <c:if test="${sessionScope.memauth eq 'G' }">
    			<li><a href="/antman/admin/adminsidebar.jsp">������������</a></li>
    		    </c:if>
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
            			<a href="/antman/webservice/voc.jsp">������</a>
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
            			<a href="/antman/intro.do">�����Ұ�</a>
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