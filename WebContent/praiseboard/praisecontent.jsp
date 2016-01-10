<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
	<jsp:include page="/p_mypage/p_mypage_sidebar.jsp" flush="true | false"/>
</div>


<div id="container">
	<div class="main"><br/><br/>
		<div id="title"><center><h2>칭찬합시다 </h2></center></div>

<body>

<div class="container">
  
  <p></p>            
  <table border="1" width="600" height="100" align="center">
  
      <tr>
        <th colspan="2"><h3><center>${dto.subject}</center></h3></th>
      </tr>
      
      <tr>
    <tr>
    <td>작성자 : ${dto.name}</td><td >등록일 : ${dto.reg_date}</td>
    </tr> 
           <tr>
<td colspan="2" height="200">${dto.content} </td>
      </tr>
    </table>
</div>

</body>
</html>


<div class="container">
<p></p>            
  <table align="center">

    <tbody>
      <tr>
 <tr><td width="500"><img src="${dto.drimg1 }" weight="190" height="240"></td><td><h3>${dto.drname}</h3><br/> <h4> ${dto.dpname}</h4>${dto.exarea }</td></tr> 
      </tr>
  
    </tbody>
  </table>
</div>

</body>
</html>


</tr>
<br/>
<HR width=100% >
<br/>
<center><button type="button" onclick="javascript:window.location='/antman/praiseupdate.do?pid=${dto.pid}&name=${dto.name}&id=${dto.id}'">수정하기</button>
<button type="button" onclick="javascript:window.location='/antman/praisedelete.do?pid=${dto.pid}&name=${dto.name}&id=${dto.id}'">삭제하기</button> 
 <button type="button" onclick="javascript:window.location='/antman/praiseboard.do?pid=${dto.pid}&name=${dto.name}&id=${dto.id}'">목록으로</button></center>
  </center>
</body>
</html>



<input type="hidden" name="pid" value="${pid}"/>
</div></div>
