<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>   
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }

	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#top{width:200px; float:top; margin-left:100px; }
	.container{width:1100px; height:1300px; margin:0 auto;  margin-left:230px; position:relative;}
	.container .sub{width:800px; height:50px; margin-left:80px; top:0px; position:relative;}
	.container .sub b{font-size:22px; color:#000000;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:30px; position:relative;}
		body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:-17px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>



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

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<div id="side">
	<jsp:include page="/appointment/appointmentsidebar.jsp" flush="true | false"/>
</div>

<div id="container">
	<div class="main">
		<div id="title"><h2>ȸ������</h2></div>




<div class="container">
  
                                                                                   
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
    
       <c:if test="${DrId==null}">
     <input type="hidden" name="Eid" value="${Eid}">
     </c:if>
       
     <c:if test="${Eid==null}">
     <input type="hidden" name="DrId" value="${DrId}">
     </c:if>  
   
      
    <tr>
    <td><input type="submit" value="�����ϱ�"/>
    <input type="button" value="���ư���" onclick="javascript:window.location='loginForm.do'"/></td>
    </tr>
            
  </table>
  </form>  
  </div>
</div>
</div></div>

</body>
</html>


    