
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>   
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

 
<body>

<jsp:include page="p_mypage_sidebar.jsp" flush="true | false"/>

<center><div>
  <h2>ȸ����������</h2><br/>
                                                                                   
  <div class="table-responsive">    
  <form action="modifyPro.do" method="post">    
  <table class="table" width="500">
      <tr>
        <td>���̵�</td>
        <td><input type="text" name="id" value="${sessionScope.memId}"></td>
      </tr>
   
        
      <tr>
        <td>��й�ȣ</td>
        <td><input type="password" name="passwd"/></td>
      </tr>
   
      <tr>
        <td>�̸�</td>
        <td><input type="text" name="name"/></td>
      </tr>
  
       <tr>
        <td>�޴�����ȣ</td>
        <td><input type="text" name="phone"/></td>
      </tr>
                   
      <tr>
        <td>�̸���</td>
        <td><input type="text" name="e_mail"/></td>
      </tr>
   
    <tr>
    <td><input type="submit" value="�����ϱ�"/>
    <input type="button" value="���ư���" onclick="javascript:window.location='loginForm.do'"/></td>
    </tr>
            
  </table>
  </form>  
  </div>
</div>
</center>

</body>
</html>


    