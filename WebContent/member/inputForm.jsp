<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>   
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script language="JavaScript">
    
    function checkIt() {
        var input = eval("document.input");
        if(!input.id.value) {
            alert("ID를 입력하세요");
            return false;
        }
        
        if(!input.passwd.value ) {
            alert("비밀번호를 입력하세요");
            return false;
        }
       
        if(!input.name.value) {
            alert("사용자 이름을 입력하세요");
            return false;
        }
        if(!input.age.value)
        {
            alert("나이를 입력하세요");
            return false;
        }
        if(!input.phone.value)
        {
            alert("휴대폰번호를 입력하세요");
            return false;
        }
        if(!input.e_mail.value)
        {
            alert("이메일을 입력하세요");
            return false;
        }
    }

    // 아이디 중복 여부를 판단
    function openConfirmid(input) {
        // 아이디를 입력했는지 검사
        if (input.id.value == "") {
            alert("아이디를 입력하세요");
            return;
        }
        // url과 사용자 입력 id를 조합합니다.
        url = "/spring/confirmId.do?id=" + input.id.value ;
        
        // 새로운 윈도우를 엽니다.
        open(url, "confirm", 
        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
    }
</script>
  
</head>
<body>

<div class="container">
  <h2>회원가입</h2><br/>
                                                                                   
  <div class="table-responsive">    
  <form action="inputPro.do" method="post" name="input" onSubmit="return checkIt()">    
  <table class="table" width="500">
      <tr>
        <td>아이디</td>
        <td><input type="text" name="id"/>&nbsp;
         <input type="button" name="confirmId" value="ID중복확인" OnClick="openConfirmid(this.form)"></td>
      </tr>
   
        
      <tr>
        <td>비밀번호</td>
        <td><input type="password" name="passwd"/></td>
      </tr>
   
      <tr>
        <td>이름</td>
        <td><input type="text" name="name"/></td>
      </tr>
      
      <tr>
        <td>나이</td>
        <td><input type="text" name="age"/></td>
      </tr>
      
       <tr>
        <td>성별</td>
        <td>남자<input type="radio" name="gender" value="남자"> <br />
			여자<input type="radio" name="gender" value="여자">
        </td>
      </tr>
      
       <tr>
        <td>휴대폰번호</td>
        <td><input type="text" name="phone"/></td>
      </tr>
                   
      <tr>
        <td>이메일</td>
        <td><input type="text" name="e_mail"/></td>
      </tr>
       <tr>
        <td>이메일수신동의</td>
        <td>Yes<input type="radio" name="getMail" value="yes"> &nbsp; No<input type="radio" name="getMail" value="no"></td>
      </tr>
    
    <c:if test="${drId == null}">
     <input type="text" name="Eid" value="${Eid}">
     </c:if>
       
     <c:if test="${Eid == null}">
     <input type="text" name="drId" value="${drId}">
     </c:if> 
      
    <tr>
    <td><input type="submit" value="가입하기"/>
    <input type="button" value="돌아가기" onclick="javascript:window.location='loginForm.do'"/></td>
    </tr>
            
  </table>
  </form>  
  </div>
</div>

</body>
</html>


    