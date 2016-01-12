<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<table width="600" border="1">
<tr>

<td>가입자수</td><td>의사</td><td>직원</td><td>환자</td><td>남자/여자</td>
</tr>
<tr>
<td>${member}</td><td>${doctor}</td><td>${employee}</td><td>${pain}</td><td>${man}/${woman}</td>
</tr>



</table>

<table width="600" border="1">
<tr>

<td>영유아</td>
<td>10대</td>
<td>20대</td>
<td>30대</td>
<td>40대</td>
<td>50대</td>
<td>60대</td>
<td>70대</td>
<td>80대</td>
<td>90대</td>
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
<td>아이디</td>
<td>이름</td>
<td>나이</td>
<td>성별</td>
<td>번호</td>
<td>이메일</td>
<td>의사번호</td>
<td>직원번호</td>
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



