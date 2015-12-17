<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<input type="button" id="execute" value="execute" />

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>

    $('#execute').click(function(){  // 태그 클래스(execute) 찾아 클릭이벤트발생시 동작
        $.ajax({	// jsp 의  include 유사하다...
            url:'index.jsp?id=java',	//정보를 가저올 페이지.
            type:'post',				//전송방식
            success:function(data){		//정상실행시..동작하는 함수.. 
                $('#time').append('<font color=red>'+data+'</font>');
            }
        })
    })
</script>

    
<p>time : <span id="time"></span></p>
