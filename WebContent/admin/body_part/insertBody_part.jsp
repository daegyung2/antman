<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>

    $('#board').click(function(){  // �±� Ŭ����(execute) ã�� Ŭ���̺�Ʈ�߻��� ����
        $.ajax({	// jsp ��  include �����ϴ�...
            url:'index.jsp?id=java',	//������ ������ ������.
            type:'post',				//���۹��
            success:function(data){		//��������..�����ϴ� �Լ�.. 
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
<td colspan="2" align="center">��ü���� �߰�</td>
</tr>
<tr>
<td width="150" align="center">��ü���� ��</td>
<td width="200" align="center"><input type="text" id="body_part" name="name" size="20" maxlength="20" /></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="���" />
<input type="button" id="board" value="�Խ���" />
</td>
</tr>
</table>
</form>
</body>
</html>