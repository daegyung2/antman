<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page session="true" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ȸ������ ��</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
    
    function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.jumin1.value  || !userinput.jumin2.value )
        {
            alert("�ֹε�Ϲ�ȣ�� �Է��ϼ���");
            return false;
        }
    }
    </script>
    <h2>���� �����ϱ�</h2>
       
    <h4>��������� ���� �ֹε�Ϲ�ȣ(�ܱ��ε�Ϲ�ȣ)�� �Է��Ͽ� �ֽñ� �ٶ��ϴ�.</h4>
    <br/>
    [�����ĺ���ȣ ó���� ���� �ȳ�]<br/>
�����ϴ� �����ĺ����� �׸� : �ֹε�Ϲ�ȣ, �ܱ��ε�Ϲ�ȣ<br/>
�������̿���� : �ǷẸ�� ���� ���ο� ���Ό���� ���� ����<br/>
���� �� �̿� �Ⱓ : �Ƿ���� ����<br/>
������ �����ĺ����� �������Ǵ� �ź��Ͻ� �� ������, �ź��� ��� ���� ����� �Ϻ� ���ѵ� �� �ֽ��ϴ�.<br/>
<INPUT type=radio name="agree" value="yes" checked>�����մϴ�.
<INPUT type=radio name="agree" value="no" >�������� �ʽ��ϴ�.
<br/>

<h4>��������� ���� �ֹε�Ϲ�ȣ(�ܱ��ε�Ϲ�ȣ) �Ǵ� ������Ϲ�ȣ �� �ϳ��� ������ �Է��� �ּ���.<br/>
���Ǻ����� ��ÿ� �ǰ� ������ �ƴ� ��3�ڿ� ���� �븮���ᰡ ���ѵ��� �˷��帳�ϴ�.</h4>
<form action="appointmentdetail.do" method="post" name="userinput" onSubmit="return checkIt()">
���̵�&nbsp;${ sessionScope.memId}<br/>
�̸�<input type="text" name="name" value="${sessionScope.name}"/></br>
�ֹι�ȣ<input type="text" name="jumin1"/>-<input type="text" name="jumin2"/><br/>
<input type="submit" name="ok" value="Ȯ��" />
<input type="button" name="cancle" value="���"/>

</form>