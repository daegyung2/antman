<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<table width="1100" border="1">
<tr>
<td width="50">번호</td><td width="300">학술행사명</td><td width="300">시간</td><td width="300">신청기간</td><td width="100"> 학술행사인원</td>
<td width="50">신청하기</td><tr/>
<c:forEach var="dto" items="${list }">
<tr>
<td>${dto.asid}</td><td><a href="/antman/academycontent.do?asid=${dto.asid}">${dto.assubject}</a></td><td>${dto.astime}-${dto.astimeend}</td><td>${dto.asstart}-${dto.asend}</td>
<td>${dto.asmin}/${dto.asmax}</td><td>
<c:if test="${view eq  no}"> ${view }
<input type="button" value="신청하기" onclick="javascript:window.location='/antman/academylist.do?asid=${dto.asid}&asmin=${dto.asmin}&asmax=${dto.asmax}&name=${sessionScope.memname}&phone=${sessionScope.memphone}&email=${sessionScope.meme_mail}&aasubject=${dto.assubject}&agree=shit'"></td>
 </c:if>
<c:if test="${View eq yes}">
<input type="button" value="취소하기" onclick="javascript:window.location='/antman/cancleacademy.do?asid=${dto.asid}&asmin=${dto.asmin}&name=${sessionScope.memname}&phone=${sessionScope.memphone}&email=${sessionScope.mememail}&aasubject=${dto.assubject}'"></td>
</c:if>
</tr>
</c:forEach>
</table>
<input type="button" value="글쓰기" onclick="javascript:window.location='/antman/academyform.do'">
${pagingHtml}