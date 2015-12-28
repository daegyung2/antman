<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script>
function checkIt() {
    var input = eval("document.input");
    if(!input.check.value) {
        alert("의사번호를 입력하세요");
        return false;
    } 
}
</script>

    <center>
    <h2>의사번호</h2><br/>
    <form action="/antman/D_CheckPro.do" method="post" name="input" onSubmit="return checkIt()">
    <input type="text" name="drId">
    <input type="submit" value="입력">
    
    </form>
    
    </center>