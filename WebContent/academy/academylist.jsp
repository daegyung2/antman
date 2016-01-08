<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<table width="1100" border="1">
<tr>
<td width="50">��ȣ</td><td width="300">�м�����</td><td width="300">���ð�</td><td width="300">��û�Ⱓ</td><td width="100"> �м�����ο�</td>
<td width="50">��û�ϱ�</td><tr/>
<c:forEach var="dto" items="${list }">
<tr>
<td>${dto.asid}</td><td><a href="/antman/academycontent.do?asid=${dto.asid}&drid=${dto.drid }&drname=${dto.drname }">${dto.assubject}</a></td><td>${dto.astime}-${dto.astimeend}</td><td>${dto.asstart}-${dto.asend}</td>
<td><c:if test="${dto.asmin ne  dto.asmax}">
${dto.asmin}/${dto.asmax}
</c:if>
<c:if test="${dto.asmin eq  dto.asmax}">
�����ο�����
</c:if>
</td>
<td>


<c:if test="${check ==  0}"> 
<form action="/antman/appointacademy.do" method="post">
<input type="hidden" value="${dto.drid }" name="drid">
<input type="hidden" value="${dto.drname}" name="drname">
<input type="hidden" value="${dto.asid}" name="asid">
<input type="hidden" value="${dto.asmin}" name="asmin">
<input type="hidden" value="${dto.asmax}" name="asmax">
<input type="hidden" value="${sessionScope.memname}" name="name">
<input type="hidden" value="${sessionScope.memphone}" name="phone">
<input type="hidden" value="${sessionScope.memId }" name="id">
<input type="hidden" value="${sessionScope.meme_mail }" name="email">
<input type="hidden" value="${dto.assubject}" name="assubject">
<input type="submit" value="��û�ϱ�"></td>
 </form>
 </c:if>
<c:if test="${check == 1}">
<form action="/antman/deleteacademy.do" method="post">
<input type="hidden" value="${dto.drid }" name="drid">
<input type="hidden" value="${dto.drname}" name="drname">
<input type="hidden" value="${dto.asid}" name="asid">
<input type="hidden" value="${dto.asmin}" name="asmin">
<input type="hidden" value="${dto.asmax}" name="asmax">
<input type="hidden" value="${sessionScope.memname}" name="name">
<input type="hidden" value="${sessionScope.memphone}" name="phone">
<input type="hidden" value="${sessionScope.memId }" name="id">
<input type="hidden" value="${sessionScope.meme_mail }" name="email">
<input type="hidden" value="${dto.assubject}" name="assubject">
<input type="submit" value="����ϱ�" >
</form>
</td>
</c:if>
</tr>
</c:forEach>
</table>
<input type="button" value="�۾���" onclick="javascript:window.location='/antman/academyform.do'">
${pagingHtml}