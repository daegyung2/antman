<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function(){		// ready == onload
      $("#button").click(function(){
          callAjax();
      });
    });
    function callAjax(){
        $.ajax({
	        type: "post",
	        url : "index.jsp",
	        data: {	// url �������� ������ �Ķ����
	        	number : $('#number').val(),
       			id : $('#id').val(),
	        	comment : $('#comment').val()
	        },
	        success: test,	// ��������û ������ ���� �Լ�
	        error: whenError	//��������û ���н� �����Լ�
     	});
    }
    function test(aaa){	// ��û������ ������������ aaa ������ �ݹ�ȴ�. 
        $("#ajaxReturn").html(aaa);
        console.log(resdata);
    }
    function whenError(){
        alert("Error");
    }
  </script>

	 <form id="frm">
	     	�۹�ȣ <input name="number" id="number" /> <br />
	     	���̵� <input name="id" id="id" /> <br />
	     	�ڸ�Ʈ <input name="comment" id="comment" /> <br />
	     	<input id="button" type="button" value="��ư">
	 </form>
	 
	 <div id="ajaxReturn">ajaxReturnOutput</div>

