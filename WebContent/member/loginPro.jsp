<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
    <h2>${sessionScope.memId} 님 로그인 성공..!! </h2><br/>
       안녕하세요 ${sessionScope.memname }님!  당신의 권한은 ${sessionScope.memauth }입니다. <br/>
    <input type="button" value="로그아웃" onclick="javascript:window.location='logout.do'">
    <input type="button" value="회원정보수정" onclick="javascript:window.location='modifyForm.do'">
    <input type="button" value="게시판" onclick="javascript:window.location='newsboard.do'">

  
    <c:if test="${sessionScope.memauth eq 'D'}"> 
    <input type="button" value="마이페이지" onclick="javascript:window.location='scheduleform.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memname}'">
    <br/>
    </c:if>
    
    <input type="button" value="공지사항" onclick="javascript:window.location='mainboard.do'">
     <input type="button" value="마이qna" onclick="javascript:window.location='MyQnA.do?id=${sessionScope.memId}'">
     
      <c:if test="${sessionScope.memauth eq 'D'}">
      <input type="button" value="의사qna" onclick="javascript:window.location='doctorAnswer.do?id=${sessionScope.memId}'">
   	  </c:if>