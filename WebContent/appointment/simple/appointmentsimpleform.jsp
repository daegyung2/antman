<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
</style>

<div id="menutop">
	<jsp:include page="/treatmentteam/treatmentteamtop.jsp" flush="true | false"/>
</div>

<!-- container ���� -->
<div id="side">
	<jsp:include page="/appointment/appointmentsidebar.jsp" flush="true | false"/>
</div>

<div class="container">
    <h2>����/��ȸ�� �����ϱ�</h2>
       
    <h4>��������� ���� �ֹε�Ϲ�ȣ(�ܱ��ε�Ϲ�ȣ)�� �Է��Ͽ� �ֽñ� �ٶ��ϴ�.</h4>
    <br/>
    [�����ĺ���ȣ ó���� ���� �ȳ�]<br/>
�����ϴ� �����ĺ����� �׸� : �ֹε�Ϲ�ȣ, �ܱ��ε�Ϲ�ȣ<br/>
�������̿���� : �ǷẸ�� ���� ���ο� ���Ό���� ���� ����<br/>
���� �� �̿� �Ⱓ : �Ƿ���� ����<br/>
������ �����ĺ����� �������Ǵ� �ź��Ͻ� �� ������, �ź��� ��� ���� ����� �Ϻ� ���ѵ� �� �ֽ��ϴ�.<br/>
<link href="style.css" rel="stylesheet" type="text/css">

<script language="JavaScript">
    
var pattern1 = /[0-9]/; // ���ڸ� �Է�
var pattern2 = /[a-zA-Z]/; // ���ڸ� �Է�
var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/; // Ư������ �Է�
var pattern4 = /[0-9a-zA-Z.;\-]/;   // ����+����+Ư��  ������ ���Խ�

    function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.jumin1.value  || !userinput.jumin2.value )
        {
            alert("�ֹε�Ϲ�ȣ�� �Է��ϼ���");
            return false;
        }else if(userinput.agree.value == "no" ){
        	
            alert("�����ĺ�ó���� �����ϼž��մϴ�.");
            return false;
        }else if(userinput.agreee.value == "no" ){
        	
            alert("��������ó���� �����ϼž��մϴ�.");
            return false;
     
        }
        }
       
    </script>
    
<form action="appointmentsimple.do" method="post" name="userinput" onSubmit="return checkIt()">
<INPUT type=radio name="agree" id="yes" value="yes" checked>�����մϴ�.&nbsp;
<INPUT type=radio name="agree" id="no" value="no" >�������� �ʽ��ϴ�.<BR><BR>
[�������� ���� �̿뿡 ���� �ȳ�]
<br/>
<br/>


�����ϴ� �������� �׸� : �̸�, �޴���ȭ��ȣ
�������̿���� : ���� ���� �� ���� �ȳ�
���� �� �̿� �Ⱓ : �Ƿ���� ����
�������� ���� �̿� ���Ǵ� �ź��Ͻ� �� ������, �ź��� ��� ���� ����� �Ϻ� ���ѵ� �� �ֽ��ϴ�.<br/>
<INPUT type=radio name="agreee" value="yes" checked>�����մϴ�.
<INPUT type=radio name="agreee"  value="no">�������� �ʽ��ϴ�.
<br/>
<br/>

<link href="style.css" rel="stylesheet" type="text/css">

<input type="text" name="name" value="${sessionScope.memname}"/></br>
<input type="text" name="jumin1"/>-<input type="text" name="jumin2"/><br/>

<input type="submit" name="ok" value="Ȯ��" />
<input type="button" name="cancle" value="���"/>

</form>
</div>
