<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
	<div class="main"><br/><br/>
		<div id="title"><center><h2>문화갤러리</h2></center></div>

  <table data-toggle="table" data-url="data2.json" data-show-columns="true" data-search="true" data-show-refresh="true" data-show-toggle="true" data-pagination="true">
    <thead>
      <tr>
       <th data-field="id" align="center" >제목</th>
      </tr>
    </thead>
   		    
			<tr><td colspan="2">${dto.content } </td></tr>
			<tr><td><img src="${dto.cuimg}"/></td></tr>
			<tr></tr>
			
  </table>

<table border="0" width="100%">
   
   

			
  </table>
</tr>
<br/>
<HR width=100% >
<br/>
   <c:if test="${sessionScope.memauth eq 'E'}" >
  <center><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/cultureboardupdate.do?cuid=${dto.cuid}'">수정하기</button>
  <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/cultureboarddelete.do?cuid=${dto.cuid}'">삭제하기</button>
 </c:if>
 
 
 <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/cultureboard.do'">목록으로</button></center>
 
</body>
</html>

</div>
</div>

    