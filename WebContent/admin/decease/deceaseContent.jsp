<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script lang="javascript" >
 function openConfirm(){
	 alert="�����Ͻðڽ��ϱ�?"
	 if(confirm("�����Ͻðڽ��ϱ�?")==true){
		 return false;
	 }else{
		 history.go(-1);
	 }
 }

</script>
<body>
<form action="/antman/deleteDecease.do" method="post" >
<table border="1" cellpadding="0" cellspacing="0">
<tr><td>���� �̸�</td>
<td>${dto.dename }
<input type="hidden" name="decid" value="${dto.decid }" />
<input type="hidden" name="dename" value="${dto.dename }" />
</td></tr>
<tr><td>�ߺ� ��ü ����</td>
<td>${bdto.name }</td></tr>
<tr><td>���� ī�װ�</td>
<td>${de_dto.de_catename }</td></tr>
<tr><td>���� ����</td>
<td><textarea rows="5" cols="50" >${dto.symptoms }</textarea></td></tr>
<tr>
<td>���� ����</td>
<td><textarea rows="5" cols="50" >${dto.r_decease }</textarea></td></tr>
<tr><td>����� </td>
<td>${departDTO.dpname }</td></tr>
<tr><td>���� ���Ǿ�</td>
<td><textarea rows="5" cols="50" >${dto.same_lang }</textarea></td></tr>
<tr><td>��������</td>
<td><img src="${dto.deimg }" /></td></tr>
<tr><td colspan="2">
<input type="submit" value="�����ϱ�" onSubmit="openConfirm()"/>
<input type="button" value="�����ϱ�" onClic="window.location='/antman/updateDecease.do?decid=${dto.decid }'" /> 
<input type="button" value="���ư���" onClick="window.location='/antman/deceaseList.do'" />
 </td></tr>
</table>
</form>
</body>
</html>