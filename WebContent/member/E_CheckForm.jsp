<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script>
function checkIt() {
    var input = eval("document.input");
    if(!input.check.value) {
        alert("사원번호를 입력하세요");
        return false;
    } 
}
</script>

    <center>
    <h2>사원번호</h2><br/>
    <form action="/antman/E_CheckFormPro.do" method="post" name="input" onSubmit="return checkIt()">
    <input type="text" name="Eid">
    <input type="submit" value="입력">
    
    </form>
    
    </center>
    
    