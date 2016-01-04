<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




   
  <table width="1400" border="0">
  
<tr>

<td width="200">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1200" >
<h2>칭찬합시다</h2>
  <table width="1000" border="1">
      <tr>
        <td colspan="2"><h3><center>${dto.subject}</center></h3></td>

      </tr>

 <tr><td width="50%">작성자 : ${dto.name}</td><td width="50%">등록일 : ${dto.reg_date}</td></tr> 
      </tr>
      <tr>
<td colspan="2" height="200">${dto.content} </td>
      </tr>
  
   
  </table>






           
  <table width="1000" border="1">
      <tr>
 <tr><td width="50%"><img src="${dto.drimg1 }" weight="190" height="240"></td><td><h3>${dto.drname}</h3><br/> <h4> ${dto.dpname}</h4>${dto.exarea }</td></tr> 
      </tr>
  
    
  </table>



</td>
</tr>
<br/>

<br/>

</table>
<center>
 <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/dpraiseboard.do?'">목록으로</button></center>
  </center>
</body>
</html>



<input type="hidden" name="pid" value="${pid}"/>
    