<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  
  <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function(){
    	window.setInterval('callAjax()', 50); //3�ʸ����ѹ��� �Լ��� �����Ѵ�..!! 
    });
    function callAjax(){
    	 $.ajax({
 	        type: "post",
 	        url : "index.do",
 	        success: test,	// ��������û ������ ���� �Լ�
 	        error: whenError	//��������û ���н� �����Լ�
      	});
    }
    function test(aaa){	// ��û������ ������������ aaa ������ �ݹ�ȴ�. 
        $("#ajaxReturn").html(aaa);
    }
    function whenError(){
        alert("Error");
    }
  </script>

	 <div id="ajaxReturn">ajaxReturnOutput</div>


