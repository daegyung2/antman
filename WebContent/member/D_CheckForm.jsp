<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script>
function checkIt() {
    var input = eval("document.input");
    if(!input.check.value) {
        alert("�ǻ��ȣ�� �Է��ϼ���");
        return false;
    } 
    var input = eval("document.input");
    if(!input.check.value) {
        alert("�ǻ��̸��� �Է��ϼ���");
        return false;
    } 
}
</script>

    <center>
    <h2>�ǻ��ȣ</h2><br/>
    <form action="/antman/D_CheckPro.do" method="post" name="input" onSubmit="return checkIt()">
 �Ƿ����̸�: <input type="text" name="drname"> &nbsp;&nbsp;
  �ǻ��ȣ:   <input type="text" name="drId">
    <input type="submit" value="�Է�">
    
    </form>
    
    </center>