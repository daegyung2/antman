<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>   
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<table width="1400" border="0">
<tr>
<td width="200">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1200" align ="center">
 <h2>회원정보수정</h2><br/>
<table width="800" border="1">
 
                                                                                   
 
  <form action="schedulemodifyPro.do" method="post">    
 
      <tr>
        <td width="200">아이디</td>
        <td><input type="text" name="id" value="${sessionScope.memId}"></td>
      </tr>
   
        
      <tr>
        <td width="200">비밀번호</td>
        <td><input type="password" name="passwd"/></td>
      </tr>
   
      <tr>
        <td width="200">이름</td>
        <td><input type="text" name="name" value="${sessionScope.memname}"/></td>
      </tr>
  
       <tr>
        <td width="200">휴대폰번호</td>
        <td><input type="text" name="phone" value="${sessionScope.memphone}"/></td>
      </tr>
                   
      <tr>
        <td width="200">이메일</td>
        <td><input type="text" name="e_mail" value="${sessionScope.meme_mail}"/></td>
      </tr>
   
    <tr>
    <td colspan = "2" align ="center"><input type="submit" value="수정하기"/>
    <input type="button" value="돌아가기" onclick="javascript:window.location='loginPro.do'"/></td>
    </tr>
            
  </table>
  </form>  
  </div>
</div>

</body>
</html>
</td>
</tr>
</table>