<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


��ũ�� �Ѿ�� get���� post����ó�� ó���ϱ�.   JAVASCRIPT  
2005.02.02. 16:36
����http://blog.naver.com/langua/140009971601
������ ����
<script language=javascript> 

function checkForm(obj){ 

var form = document.myform; 

form.mode.value= obj ; 

form.action = 'aa.asp'; 

form.submit(); 

} 

</script> 







<form name=myform action='' method=post> 

<input type=hidden name=mode> 

<input type=button value='�ѱ�' onClick="javascript:checkForm('momo')"><br> 

<a href="javascript:checkForm('momo');">�ѱ�</a> 

</form> 
[��ó] ��ũ�� �Ѿ�� get���� post����ó�� ó���ϱ�.|�ۼ��� �ǹ�

