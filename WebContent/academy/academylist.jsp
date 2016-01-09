<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<table width="1100" border="1">
<tr>
<td width="50">번호</td><td width="300">학술행사명</td><td width="300">행사시간</td><td width="300">신청기간</td><td width="100"> 학술행사인원</td>
<td width="50">신청하기</td><tr/>
<c:forEach var="dto" items="${list }">
<tr>
<td>${dto.asid}</td><td><a href="/antman/academycontent.do?asid=${dto.asid}&drid=${dto.drid }&drname=${dto.drname }">${dto.assubject}</a></td><td>${dto.astime}-${dto.astimeend}</td><td>${dto.asstart}-${dto.asend}</td>
<td><c:if test="${dto.asmin ne  dto.asmax}">
${dto.asmin}/${dto.asmax}
</c:if>
<c:if test="${dto.asmin eq  dto.asmax}">
수강인원만원
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
<input type="submit" value="신청하기"></td>
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
<input type="submit" value="취소하기" >
</form>
</td>
</c:if>
</tr>
</c:forEach>
</table>
<input type="button" value="글쓰기" onclick="javascript:window.location='/antman/academyform.do'">
${pagingHtml}