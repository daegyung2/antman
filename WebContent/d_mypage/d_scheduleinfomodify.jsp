<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>   
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<table width="1400" border="0">
<tr>
<td width="200">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1200" align ="center">
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
  <form action="schedulemodifyPro.do" method="post">    
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
        <td><input type="text" name="name" value="${sessionScope.memname}"/></td>
      </tr>
  
       <tr>
        <td>�޴�����ȣ</td>
        <td><input type="text" name="phone" value="${sessionScope.memphone}"/></td>
      </tr>
                   
      <tr>
        <td>�̸���</td>
        <td><input type="text" name="e_mail" value="${sessionScope.meme_mail}"/></td>
      </tr>
   
    <tr>
    <td><input type="submit" value="�����ϱ�"/>
    <input type="button" value="���ư���" onclick="javascript:window.location='loginPro.do'"/></td>
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