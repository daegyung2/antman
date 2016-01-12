<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65); text-align:left; }
	#container .main td{padding:5px 5px 5px 5px; }
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>


<div id="side">
<jsp:include page="/webservice/websidebar.jsp" flush="true | false"/>
</div>
</br></br>

<div id="container">
	<div class="main">
		<div id="title"><h2>칭찬합시다</h2></div>
	
<div class="container">
  
  <p></p>          
  <center>  
  <table width="700" class="table" border="1" align="center">
    <thead>
      <tr>
        <th colspan="2"><h3><center>${dto.subject}</center></h3></th>

      </tr>
    </thead>
    <tbody>
      <tr>
 <tr align="center">
 <td width="50%">작성자 : ${dto.name}${edto.name}</td><td width="50%">등록일 : ${dto.reg_date}</td></tr> 
           
            <tr>
<td align="center" colspan="2" height="200">${dto.content}${edto.content} </td>
      </tr>
  
    </tbody>
  </table>
</div>

</body>
</html>


<div class="container">
<p></p>            
  <table align="center" class="table" width="700">

    <tbody>
   <c:if test="${!empty dto}" > <tr><td width="50%"><img src="${dto.drimg1 }" weight="190" height="240">
</td><td><h3>${dto.drname}</h3><br/> <h4> ${dto.dpname}</h4>${dto.exarea }</td></tr> </c:if>
      
  <c:if test="${!empty edto}" > <tr><td width="50%"><img src="${edto.emimg1 }" weight="190" height="240">
</td><td><h3>${edto.ename}</h3><br/> <h4> ${edto.dpname}</h4>${edto.emdescription }</td></tr> </c:if>    
      
  
    </tbody>
  </table>
</div>

</body>
</html>


</tr>
<br/>
<HR width=100% >
<br/>
<c:if test="${!empty dto }"><center><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseupdate.do?pid=${dto.pid}'">수정하기</button></c:if>
<c:if test="${!empty edto }"><center><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseupdate.do?pid=${edto.pid}&eid=${edto.eid }'">수정하기</button></c:if>
<button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praisedelete.do?pid=${dto.pid}&name=${dto.name}'">삭제하기</button> 
 <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseboard.do'">목록으로</button></center>
  </center>
</body>
</html>



<input type="hidden" name="pid" value="${pid}"/>
</div></div>
</center>