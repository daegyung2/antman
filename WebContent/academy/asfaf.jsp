<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


링크로 넘어가는 get형식 post형식처럼 처리하기.   JAVASCRIPT  
2005.02.02. 16:36
복사http://blog.naver.com/langua/140009971601
전용뷰어 보기
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

<input type=button value='넘김' onClick="javascript:checkForm('momo')"><br> 

<a href="javascript:checkForm('momo');">넘김</a> 

</form> 
[출처] 링크로 넘어가는 get형식 post형식처럼 처리하기.|작성자 훌박

