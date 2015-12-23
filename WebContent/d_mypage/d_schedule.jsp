<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<h2>진료스케쥴등록</h2>

<form action = "schedulepro.do" method="post"><br/>
<table width="600" border="1">
<tr><td>의사drid</td><td><input type="text" name="drid"></td></tr>
<tr><td>의사이름</td><td><input type="text" name="drname"></td></tr>
<tr><td>진료과이름</td><td><input type="text" name="dpname"></td></tr>
<tr><td>년도</td><td><input type="text" name="year"></td></tr>
<tr><td>월</td><td><input type="text" name="month"></td></tr>
<tr><td>일</td><td><input type="text" name="day"></td></tr>
<tr><td>시간</td><td> <input type="text" name="hour"></td></tr>
<tr><td>분</td><td><input type="text" name="minute"></td></tr>
</table>
<input type="submit" value="스케쥴 등록">
</form>