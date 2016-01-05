
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>   
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

 
<body>

<jsp:include page="p_mypage_sidebar.jsp" flush="true | false"/>

<center><div>
  <h2>회원정보수정</h2><br/>
                                                                                   
  <div class="table-responsive">    
  <form action="modifyPro.do" method="post">    
  <table class="table" width="500">
      <tr>
        <td>아이디</td>
        <td><input type="text" name="id" value="${sessionScope.memId}"></td>
      </tr>
   
        
      <tr>
        <td>비밀번호</td>
        <td><input type="password" name="passwd"/></td>
      </tr>
   
      <tr>
        <td>이름</td>
        <td><input type="text" name="name"/></td>
      </tr>
  
       <tr>
        <td>휴대폰번호</td>
        <td><input type="text" name="phone"/></td>
      </tr>
                   
      <tr>
        <td>이메일</td>
        <td><input type="text" name="e_mail"/></td>
      </tr>
   
    <tr>
    <td><input type="submit" value="수정하기"/>
    <input type="button" value="돌아가기" onclick="javascript:window.location='loginForm.do'"/></td>
    </tr>
            
  </table>
  </form>  
  </div>
</div>
</center>

</body>
</html>


    