<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<table width="1100" border="1">
<tr>
<td width="50">��ȣ</td><td width="300">�м�����</td><td width="300">���ð�</td><td width="300">��û�Ⱓ</td><td width="100"> �м�����ο�</td>
<tr/>
<c:forEach var="dto" items="${list }">
<tr>
<td>${dto.asid}</td><td><a href="/antman/academycontent.do?id=${sessionScope.memId }&asid=${dto.asid}&drid=${dto.drid }&drname=${dto.drname }&asend=${dto.asend}">${dto.assubject}</a></td><td>${dto.astime}-${dto.astimeend}</td><td>${dto.asstart}-${dto.asend}</td>
<td><c:if test="${dto.asmin ne  dto.asmax}">
${dto.asmin}/${dto.asmax}
</c:if>
<c:if test="${dto.asmin eq  dto.asmax}">
�����ο�����
</c:if>
</td>
</tr>
</c:forEach>

</table>
<input type="button" value="�۾���" onclick="javascript:window.location='/antman/academyform.do'">
${pagingHtml}