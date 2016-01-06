<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }

	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#top{width:200px; float:top; margin-left:100px; }
	.container{width:1100px; height:1300px; margin:0 auto;  margin-left:230px; position:relative;}
	.container .sub{width:800px; height:50px; margin-left:80px; top:0px; position:relative;}
	.container .sub b{font-size:22px; color:#000000;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:30px; position:relative;}
</style>

<div id="menutop">
	<jsp:include page="/treatmentteam/treatmentteamtop.jsp" flush="true | false"/>
</div>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:-17px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>

<div id="side">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</div>


<div id="container">
	<div class="main">
		<div id="title"><h2>회원정보수정</h2></div>
		<center>
		<table width="700" border="1">
 
                                                                                   
 
  <form action="schedulemodifyPro.do" method="post">    
 
      <tr>
        <th width="170">아이디</th>
        <td><input type="text" name="id" value="${sessionScope.memId}"></td>
      </tr>
   
        
      <tr>
        <th width="170">비밀번호</th>
        <td><input type="password" name="passwd"/></td>
      </tr>
   
      <tr>
        <th width="170">이름</th>
        <td><input type="text" name="name" value="${sessionScope.memname}"/></td>
      </tr>
  
       <tr>
        <th width="170">휴대폰번호</th>
        <td><input type="text" name="phone" value="${sessionScope.memphone}"/></td>
      </tr>
                   
      <tr>
        <th width="170">이메일</th>
        <td><input type="text" name="e_mail" value="${sessionScope.meme_mail}"/></td>
      </tr>
   
    <tr>
    <td colspan = "2" align ="center"><input type="submit" value="수정하기"/>
    <input type="button" value="돌아가기" onclick="javascript:window.location='loginPro.do'"/></td>
    </tr>
</form>             
  </table>
  </center>
	</div>
</div>
