<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script>
function checkIt() {
    var input = eval("document.input");
    if(!input.check.value) {
        alert("�����ȣ�� �Է��ϼ���");
        return false;
    } 
}
</script>

    <center>
    <h2>�����ȣ</h2><br/>
    <form action="/antman/E_CheckFormPro.do" method="post" name="input" onSubmit="return checkIt()">
    <input type="text" name="Eid">
    <input type="submit" value="�Է�">
    
    </form>
    
    </center>
    
    