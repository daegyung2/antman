<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="en">
<head>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script language="javascript">
	function focusIt()
	{      
	   
	   document.login.id.focus();
	}

	function checkIt()
	 {
	   loginForm=eval("document.login");
	   if(!loginForm.id.value){
	     alert("아이디를 입력하세요..");
		 loginForm.id.focus();
		 return false;
	   }
	   if(!loginForm.passwd.value){
	     alert("패스워드를 입력하세요..");
		 loginForm.passwd.focus();
		 return false;
	   }
	 }
	</script>


</head>
<body>

<div class="container">
  <h2>로그인</h2>
  <form name="login" role="form" action="loginPro.do" method="post" onSubmit="return checkIt();">
    <div class="form-group">
      <label for="ID">ID</label>
      <input type="text" class="form-control" name="id" placeholder="Enter id">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="passwd" placeholder="Enter password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
    <button type="button" onclick="javascript:window.location='/antman/loginCheck.do'" class="btn btn-default">Sign</button>
    
  </form>
</div>

</body>
</html>




    