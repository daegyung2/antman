<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <table width="300" border="1">
<tr>
<td><center><h3>${sessionScope.memname}님의 마이페이지</h3></center></td>
</tr>

<tr>
<tr>
<td><a href="/antman/p_mypage.do?id=${sessionScope.memId}"><center>나의예약현황</center></a></td>
</tr>
<tr>
<td><center>증명서출력</center></a></td>
</tr>

<td><a href="/antman/dscheduleform.do"><center><center>환자진료결과등록하기</center></a></td>
</tr>
<tr>
<td><a href="/antman/praiseboard.do"><center><center>칭찬하기</center></a></td>
</tr>
<tr>
<td><a href="/antman/MyQnA.do?id=${sessionScope.memId}"><center><center>나의상담</center></a></td>
</tr>
<tr>
<td><a href="/antman/modifyForm.do"><center>회원정보수정</center></a></td>
</tr>
<tr>
<td><center>회원탈퇴</center></td>
</tr>

</table></html>