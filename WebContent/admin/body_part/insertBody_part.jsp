<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>

    $('#board').click(function(){  // 태그 클래스(execute) 찾아 클릭이벤트발생시 동작
        $.ajax({	// jsp 의  include 유사하다...
            url:'index.jsp?id=java',	//정보를 가저올 페이지.
            type:'post',				//전송방식
            success:function(data){		//정상실행시..동작하는 함수.. 
                $('#time').append('<font color=red>'+data+'</font>');
            }
        })
    })
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="/antman/insertBodyPro.do" method="post" id="insertBody" >
<table width="350" border="1">
<tr>
<td colspan="2" align="center">신체부위 추가</td>
</tr>
<tr>
<td width="150" align="center">신체부위 명</td>
<td width="200" align="center"><input type="text" id="body_part" name="name" size="20" maxlength="20" /></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="등록" />
<input type="button" id="board" value="게시판" />
</td>
</tr>
</table>
</form>
</body>
</html>