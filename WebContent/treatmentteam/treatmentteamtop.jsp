<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>DB병원</title>

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

<!-- loginForm 시작 -->
<div id="l_back">
	<div id="login">
	<div class="grid">
		<div class="login_innerbox">
  			<ul>
  				<c:if test="${sessionScope.memId eq null}">
    			<li class="first"><a href="/antman/loginForm.do">로그인</a></li>
    			</c:if>
    			<c:if test="${ sessionScope.memId ne null}">
    			<%-- ${sessionScope.memId }님 반갑습니다.당신의 권한은 ${session.Scope.memauth}입니다. --%>
    			<li class="first"><a href="/antman/logout.do">로그아웃</a></li>
    			</c:if>
    			
    			<li><a href="/antman/loginCheck.do">회원가입</a></li>
    			<li><a href="#">병원둘러보기</a></li>
    			<li><a href="#">오시는길</a></li>
    			<li><a href="#">English</a></li>
    			<li><a href="#">中文</a></li>
    			<li><a href="#">日本語</a></li>		
    			<li><a href="#">日本語</a></li>	
    			
    			<c:if test="${sessionScope.memauth eq 'P' }">
    			<li><a href="/antman/p_mypage.do?id=${sessionScope.memId}">마이페이지</a></li>
    		    </c:if>
    		    
    		    <c:if test="${sessionScope.memauth eq 'D' }">
    			<li><a href="/antman/scheduleform.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memname}">의사마이페이지</a></li>
    		    </c:if>
    		    
    		    <c:if test="${sessionScope.memauth eq 'E' }">
    			<li><a href="#">마이페이지</a></li>
    		    </c:if>
    		    
    		     <c:if test="${sessionScope.memauth eq 'G' }">
    			<li><a href="/antman/admin/adminsidebar.jsp">관리자페이지</a></li>
    		    </c:if>
    			<li class="last"><a href="#">русский</a></li>
  			</ul>
		</div>
	</div>
	</div>
</div>

<!-- header 시작 -->
<div id="h_back">
	<div id="header">
	<div class="grid">
		<div id="title"><div id="box"><font size="4"><b><a href="#">DB Hospital</a></b></font></div></div>
		<div id="gnbWrap">
			<nav>
    			<ul id="gnb">
            		<li>
            			<a href="/antman/treatmentsearch.do">의료진/진료과</a>
                		<ul>
                			<li><a href="/antman/treatmentsearch.do">의료진</a></li>
                    		<li><a href="/antman/treatmentchoice.do?p_depart_id=1">진료과</a></li>
                    		<li><a href="/antman/treatmentchoice.do?p_depart_id=3">암병원</a></li>
                    		<li><a href="/antman/treatmentchoice.do?p_depart_id=4">어린이병원</a></li>
							<li><a href="/antman/treatmentchoice.do?p_depart_id=5">심장병원</a></li>
							<li><a href="/antman/treatmentchoice.do?p_depart_id=6">센터</a></li>
							<li><a href="/antman/treatmentchoice.do?p_depart_id=7">클리닉</a></li>
							<li><a href="/antman/treatmentchoice.do?p_depart_id=8">기타</a></li>
                		</ul>
            		</li>
            		<li>
            			<a href="/antman/appointmentmain.do">이용안내</a>
                		<ul>
                			<li><a href="#">병원안내</a></li>
							<li><a href="#">외래진료안내</a></li>
							<li><a href="#">응급진료안내</a></li>
							<li><a href="#">입원진료안내</a></li>
							<li><a href="#">가정간호안내</a></li>
							<li><a href="#">검사실안내</a></li>
                		</ul>
            		</li>
            		<li>
            			<a href="#">건강정보</a>
            			<ul>
                			<li><a href="#">의료정보</a></li>
							<li><a href="#">건강TV</a></li>
							<li><a href="#">건강이야기</a></li>
                		</ul>
                	</li>
                	<li>
            			<a href="/antman/webservice/voc.jsp">웹서비스</a>
            			<ul>
                			<li><a href="#">발급안내</a></li>
							<li><a href="#">고객서비스</a></li>
                		</ul>
                	</li>
                	<li>
            			<a href="#">의학교육</a>
            			<ul>
                			<li><a href="#">학술행사일정</a></li>
							<li><a href="#">학술영상다시보기</a></li>
							<li><a href="#">의학포스터</a></li>
							<li><a href="#">3D자료</a></li>
                		</ul>
                	</li>
                	<li>
            			<a href="/antman/intro.do">병원소개</a>
            			<ul>
                			<li><a href="#">재단소개</a></li>
							<li><a href="#">병원소개</a></li>
							<li><a href="#">소식</a></li>
							<li><a href="#">정기간행물</a></li>
							<li><a href="#">교육장안내</a></li>
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