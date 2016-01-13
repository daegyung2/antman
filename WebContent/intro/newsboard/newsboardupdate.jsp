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
	#footer{width:100%; height:300px; margin-bottom:0px;}
	.container{width:1100px; height:1150px; margin:0 auto;  margin-left:0px; position:relative;}
	.container .main{width:1000px; height:1100px; margin-left:0px; top:30px; position:relative;}
	
	#container{width:1100px; height:1116px; margin:0 auto;  margin-left:250px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:30px; position:relative}
	#container .main #title{width:800px; margin-left:50px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>


<div id="side">
<jsp:include page="/intro/intro_mainsidebar.jsp" flush="true | false"/>
</div>


<div id="container">
	<div class="main">
		<div id="title">
 <form action="/antman/newsboardupdatepro.do" method="post">
  <input type="hidden" name="NEid" value="${dto.NEid}">
  
    <table width="750" border="1">
   
    <tr>
    <tr><th>글제목</th><td><input type="text" name="subject" value="${dto.subject}"/></td></tr>
    <tr><th>글내용</th><td><textarea name="content" value="${dto.content}" rows="2" ROWS="5" COLS="40"/></textarea></td></tr>
    <tr><td colspan="2"><center><input type="submit" value="글 수정"/><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/newsboard.do'">목록으로</button></center></td></tr>
    
   
    </table>
    </form>
    
    </div>
    </div>
 </div>   
    
 <div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>