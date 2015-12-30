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
    
    function checkIt() {
        var input = eval("document.input");
        if(!input.id.value) {
            alert("ID�� �Է��ϼ���");
            return false;
        }
        
        if(!input.passwd.value ) {
            alert("��й�ȣ�� �Է��ϼ���");
            return false;
        }
       
        if(!input.name.value) {
            alert("����� �̸��� �Է��ϼ���");
            return false;
        }
        if(!input.age.value)
        {
            alert("���̸� �Է��ϼ���");
            return false;
        }
        if(!input.phone.value)
        {
            alert("�޴�����ȣ�� �Է��ϼ���");
            return false;
        }
        if(!input.e_mail.value)
        {
            alert("�̸����� �Է��ϼ���");
            return false;
        }
    }

    // ���̵� �ߺ� ���θ� �Ǵ�
    function openConfirmid(input) {
        // ���̵� �Է��ߴ��� �˻�
        if (input.id.value == "") {
            alert("���̵� �Է��ϼ���");
            return;
        }
        // url�� ����� �Է� id�� �����մϴ�.
        url = "/spring/confirmId.do?id=" + input.id.value ;
        
        // ���ο� �����츦 ���ϴ�.
        open(url, "confirm", 
        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
    }
</script>
  
</head>
<body>

<div class="container">
  <h2>ȸ������</h2><br/>
                                                                                   
  <div class="table-responsive">    
  <form action="inputPro.do" method="post" name="input" onSubmit="return checkIt()">    
  <table class="table" width="500">
      <tr>
        <td>���̵�</td>
        <td><input type="text" name="id"/>&nbsp;
         <input type="button" name="confirmId" value="ID�ߺ�Ȯ��" OnClick="openConfirmid(this.form)"></td>
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
        <td>����</td>
        <td><input type="text" name="age"/></td>
      </tr>
      
       <tr>
        <td>����</td>
        <td>����<input type="radio" name="gender" value="����"> <br />
			����<input type="radio" name="gender" value="����">
        </td>
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
        <td>�̸��ϼ��ŵ���</td>
        <td>Yes<input type="radio" name="getMail" value="yes"> &nbsp; No<input type="radio" name="getMail" value="no"></td>
      </tr>
    
    <c:if test="${drId == null}">
     <input type="text" name="Eid" value="${Eid}">
     </c:if>
       
     <c:if test="${Eid == null}">
     <input type="text" name="drId" value="${drId}">
     </c:if> 
      
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


    