
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>   
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script language="JavaScript">
    
</script>
  
</head>
<body>

<div class="container">
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

</body>
</html>


    