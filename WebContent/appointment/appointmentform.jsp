<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<h2>본인예약하기</h2>
<h3>진료받을 환자 ID로 예약하셔야 진료를 받으실 수 있습니다.</h3>
<br/>

<form action="/antman/appointmentaction.do" method="post">
<table width="1000" border="1" />
<tr>
<td>아이디</td><td><input type="text" name="id"/></td>
</tr>
<tr>
<td>이름</td><td><input type="text" name="name"/>&nbsp&nbsp|&nbsp 환자명:어쩌구</td>
</tr>
<tr><td>예약번호</td><td>예약자번호</td></tr>
<tr><td>휴대전화</td><td><input type="text" name="phone"/></td></tr>
<tr><td>이메일</td><td><input type="text" name="email"/>@<input type="text" name="email">
</td>
</tr>
</table>
<br/>
<INPUT type=checkbox name="agree" value="yes">개인정보 수정 후 진료예약 완료 시 고객님의 정보가 수정됩니다.<input type="button" value="다음" onclick="javascript:window.location='/antman/appointmentselect'"/>

<br/>
<br/>

<table width="1000" border="1">
<tr><td heght="50"><center>가정의학과</center></td></tr>

</table>
<br/>
