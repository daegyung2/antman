<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<table width="600" border="1">
<tr>

<td>�����ڼ�</td><td>�ǻ�</td><td>����</td><td>ȯ��</td><td>����/����</td>
</tr>
<tr>
<td>${member}</td><td>${doctor}</td><td>${employee}</td><td>${pain}</td><td>${man}/${woman}</td>
</tr>



</table>

<table width="600" border="1">
<tr>

<td>������</td>
<td>10��</td>
<td>20��</td>
<td>30��</td>
<td>40��</td>
<td>50��</td>
<td>60��</td>
<td>70��</td>
<td>80��</td>
<td>90��</td>
</tr>
<tr>
<td>${one}</td>
<td>${two}</td>
<td>${three}</td>
<td>${four}</td>
<td>${five}</td>
<td>${six}</td>
<td>${seven}</td>
<td>${eight}</td>
<td>${nine}</td>
<td>${ten}</td>
</tr>



</table>


<br/>
<table width="1000" border="1">
<tr>
<td>���̵�</td>
<td>�̸�</td>
<td>����</td>
<td>����</td>
<td>��ȣ</td>
<td>�̸���</td>
<td>�ǻ��ȣ</td>
<td>������ȣ</td>
</tr>

<tr>
<c:forEach var="dto" items="${memlist }">
<td>${dto.id}</td>
<td>${dto.name}</td>
<td>${dto.age}</td>
<td>${dto.gender}</td>
<td>${dto.phone}</td>
<td>${dto.e_mail}</td>
<td>${dto.drId}</td>
<td>${dto.eid}</td>
</tr>
</c:forEach>
</table>



