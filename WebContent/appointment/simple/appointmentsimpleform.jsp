<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <h2>����/��ȸ�� �����ϱ�</h2>
       
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
<br/>

[�������� ���� �̿뿡 ���� �ȳ�]
�����ϴ� �������� �׸� : �̸�, �޴���ȭ��ȣ
�������̿���� : ���� ���� �� ���� �ȳ�
���� �� �̿� �Ⱓ : �Ƿ���� ����
�������� ���� �̿� ���Ǵ� �ź��Ͻ� �� ������, �ź��� ��� ���� ����� �Ϻ� ���ѵ� �� �ֽ��ϴ�.<br/>
<INPUT type=radio name="agree" value="yes" checked>�����մϴ�.
<INPUT type=radio name="agree" value="no" >�������� �ʽ��ϴ�.
<br/>
<br/>

<form action="appointmentsimple.do" method="post">
<input type="text" name="name" /></br>
<input type="text" name="jumin1"/>-<input type="text" name="jumin2"/><br/>

<input type="submit" name="ok" value="Ȯ��" />
<input type="button" name="cancle" value="���"/>

</form>