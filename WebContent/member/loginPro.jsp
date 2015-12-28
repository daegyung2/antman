<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


    
    <h2>${sessionScope.memId} 님 로그인 성공..!! </h2>
    
    <input type="button" value="로그아웃" onclick="javascript:window.location='logout.do'">
    <input type="button" value="게시판" onclick="javascript:window.location='newsboard.do'">
    <input type="button" value="마이페이지" onclick="javascript:window.location='MyReservation.do'">
    <br/>
    <input type="button" value="공지사항" onclick="javascript:window.location='mainboard.do'">
     <input type="button" value="마이qna" onclick="javascript:window.location='MyQnA.do'">
    