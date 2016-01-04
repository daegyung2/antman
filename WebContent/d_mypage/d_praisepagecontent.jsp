<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:25px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border-bottom:1px solid #BDBDBD; border-left:1px solid transparent; border-right:1px solid transparent; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main .con{border:1px solid #BDBDBD; border-top:1px solid #FFFFFF; border-left:1px solid transparent; border-right:1px solid transparent; border-collapse:collapse;}
	#container .main th{padding:5px 5px;}
	#container .main td{padding:5px 5px 5px 5px;}
</style>

<div id="side">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</div>

<div id="container">
	<div class="main">
		<div id="title"><h2>칭찬합시다!</h2></div>
		<center>
		 <table width="800" border="1">
      <tr>
        <td colspan="2"><h3><center>${dto.subject}</center></h3></td>

      </tr>

 <tr><td width="50%">작성자 : ${dto.name}</td><td width="50%">등록일 : ${dto.reg_date}</td></tr> 
      </tr>
      <tr>
<td colspan="2" height="200">${dto.content} </td>
      </tr>

  </table>
      </center>
      <center>   
  <table width="800" border="1" class="con">
      <tr>
 <tr><td width="50%"><img src="${dto.drimg1 }" weight="190" height="240"></td><td><h3>${dto.drname}</h3><br/> <h4> ${dto.dpname}</h4>${dto.exarea }</td></tr> 
      </tr>
  
    
  </table>
  </center> 
  <center>
 <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/dpraiseboard.do?'">목록으로</button></center>
  </center>
  <input type="hidden" name="pid" value="${pid}"/>
	</div>
</div>
