<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

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
<form action="detailreservation.do" method="post">
<input type="text" name="name" value="�ۼ�ȣ"/></br>
<input type="text" name="jumin1"/>-<input type="text" name="jumin2"/><br/>

<input type="submit" name="ok" value="Ȯ��" />
<input type="button" name="cancle" value="���"/>

</form>