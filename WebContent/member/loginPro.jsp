<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
    <h2>${sessionScope.memId} 님 로그인 성공..!! </h2><br/>
       안녕하세요 ${sessionScope.memname }님!  당신의 권한은 ${sessionScope.memauth }입니다. <br/>
    <input type="button" value="로그아웃" onclick="javascript:window.location='logout.do'">
    <input type="button" value="회원정보수정" onclick="javascript:window.location='modifyForm.do'">
    <input type="button" value="게시판" onclick="javascript:window.location='newsboard.do'">
	
    <c:if test="${sessionScope.memauth eq 'D'}"> 
    <input type="button" value="의사마이페이지" onclick="javascript:window.location='scheduleform.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memname}'">
    <br/>
    </c:if>
    
     <c:if test="${sessionScope.memauth eq 'D'}">
      <input type="button" value="의사qna" onclick="javascript:window.location='MyQnAanswer.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memname}'">
   	  </c:if>
   	  
    <input type="button" value="공지사항" onclick="javascript:window.location='mainboard.do'">
   
    <c:if test="${sessionScope.memauth eq 'P'}"> 
     <input type="button" value="환자마이페이지" onclick="javascript:window.location='p_mypage.do?id=${sessionScope.memId}'">
     </c:if>
     
   	  <c:if test="${sessionScope.memauth eq 'P'}">
      <input type="button" value="진료예약하기" onclick="javascript:window.location='appointmentmain.do?id=${sessionScope.memId}'">
   	  </c:if>
   	 
   	  <c:if test="${sessionScope.memauth eq 'P' || sessionScope.memauth eq 'D'}">
      <input type="button" value="칭찬게시판" onclick="javascript:window.location='praiseboard.do?id=${sessionScope.memId}'">
   	  </c:if>
   	  
   	  
   	  
   	  <c:if test="${sessionScope.memauth eq 'G'}">
      <input type="button" value="관리자페이지" onclick="javascript:window.location='/antman/admin/adminsidebar.jsp'">
   	  </c:if>
   	 
   	  <input type="button" value="" onclick="javascript:window.location='praiseboard.do?id=${sessionScope.memId}'">
   	 
   	  <c:if test="${sessionScope.memauth eq 'P'}">
   	  <h3>나의 예약 목록</h3>
   	  
   	  <table width="730" border="1">
<tr>
<td width="70">예약번호</td>
<td width="100">예약id</td>
<td width="100">예약성함</td>
<td width="100">예약진료과</td>
<td width="100">예약선생님</td>
<td width="170">예약시간</td>
<td width="70">진료회차</td>
</tr>
<tr>
<c:forEach var="dto" items="${alist}">
<td >${dto.aid }</td>
<td >${dto.id }</td>
<td >${dto.name }</td>
<td >${dto.dpname }</td>
<td >${dto.drname }</td>
<td >${dto.adate }</td>
<td >${dto.nextadate }</td></tr>
</c:forEach>
</table>
</c:if>