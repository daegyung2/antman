<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:100px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65); text-align:center; }
	#container .main td{padding:5px 5px 5px 5px; }
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<div id="side">
	<jsp:include page="/intro/introsidebar.jsp" flush="true | false"/>
</div>


<div id="container">
	<div class="main">
		<div id="title"><center><h2><b>공지사항</b></h2></center></div><br/>

  <div class="container">


  <table  width="900" align="center" border="1" data-toggle="table" data-url="data2.json" data-show-columns="true" data-search="true" data-show-refresh="true" data-show-toggle="true" data-pagination="true">


    <thead>
      <tr>
       <th data-field="id" align="center" ><h3>제목 :${dto.subject}</h3></th>
      </tr>
    </thead>
   
                
		     
			
			 <tr><td width="50%">등록일 : ${dto.reg_date}</td></tr> 
			<tr><td colspan="2"><h2>${dto.content }</h2> </td></tr>
			<tr><td><img src="${dto.neimg}"/></td></tr>
			<tr></tr>
			
  </table>

<table border="0" width="100%">
   
   

			
  </table>
</tr>
<br/>
<HR width=100% >
<br/>
  <c:if test="${sessionScope.memauth eq 'E'}"> 
  <center><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/newsboardupdate.do?NEid=${dto.NEid}'">수정하기</button>
  <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/newsboarddelete.do?NEid=${dto.NEid}'">삭제하기</button>
 </c:if>
 
 
 <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/newsboard.do'">목록으로</button></center>

</body>
</html>


    </div>
    </div>
</div></div>    
    
<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>