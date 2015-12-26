<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="/antman/updateDeceasePro.do" method="post" enctype="multipart/form-data">
<table border="1" cellpadding="0" cellspacing="0" >
<tr><td colspan="2">¡�� ������ �����ϼ���.</td></tr>
<tr><td>���� ��ȣ</td><td>${decid }<input type="hidden" name="decid" value="${decid }" /></td></tr>
<tr><td>���� �̸�</td><td><input type="text" name="dename" size="20" maxlength="20" value="${dto.dename }" /></td></tr>
<tr><td>��ü ����</td>
<td>
<select name="bid">
<c:forEach var="b_dto" items="${b_list }" >
<option value="${b_dto.bid }">${b_dto.bid }.${b_dto.name }</option>
</c:forEach>
</select>
</td></tr>
<tr>
<td>���� ī�װ�</td>
<td>
<select name="deid">
<c:forEach var="de_dto" items="${de_list }" >
<option value="${de_dto.deid }">${de_dto.deid }.&nbsp;${de_dto.de_catename }</option>
</c:forEach>
</select>
</td>
</tr>
<tr>
<td>����</td>
<td><textarea name="symptoms" rows="5" cols="30"></textarea></td>
</tr>
<tr>
<td>��������</td>
<td><textarea name="r_decease" rows="5" cols="30"></textarea></td>
</tr>
<tr>
<td>�����</td>
<td>
<select name="depart_id">
<c:forEach var="dto" items="${depart_list }" >
<option value="${dto.depart_id }">${dto.depart_id }.&nbsp;${dto.dpname }</option>
</c:forEach>
</select>
</td>
</tr>
<tr><td>���� ���Ǿ�</td>
<td><textarea name="same_lang" rows="5" cols="30" ></textarea></td>
</tr>
<tr>
<td>���� ���� ���� ���ε�</td>
<td><input type="file" name="upload" value="${ }"/></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="�ۼ��Ϸ�" />
<input type="reset" value="�ʱ�ȭ" />
<input type="button" value="���ư���" onClick="window.location='/antman/deceaseList.do'" />
</td>
</tr>
</table>
</form>
</body>
</html>