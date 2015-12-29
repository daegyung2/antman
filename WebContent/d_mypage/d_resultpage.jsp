<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<table width="1200" border="0">
<tr>
<td width="200">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1000" align="center">
<h2>진료기록</h2>
<form action="d_resultpagepro.do" method="post">

<table width="600" border="1">
<tr>
<td width="200">진료기록번호</td><td width="400"><input type="text" value="mid"></td>
</tr>
<tr>
<td width="200">의사번호</td><td width="300"><input type="text" name="dreg_num" value=""></td>
</tr>
<tr>
<td width="200">환자id</td><td width="300"><input type="text" name="id" value=""></td>
</tr>
<tr>
<td width="200">환자이름</td><td width="300"><input type="text" name="name" value=""></td>
</tr>
<tr>
<td width="200">주민번호</td><td width="300"><input type="text" name="jumin1" value="">-<input type="text" name="jumin2" value=""></td>
</tr>
<tr>
<td width="200">나이</td><td width="300"><input type="text" name="age" value=""></td>
</tr>
<tr>
<td width="200">성별</td><td width="300"><input type="text" name="gender" value=""></td>
</tr>
<tr>
<td width="200">증상1</td><td width="300"><input type="text" name="syptom1" value=""></td>
</tr>
<tr>
<td width="200">증상2</td><td width="300"><input type="text" name="syptom2" value=""></td>
</tr>
<tr>
<td width="200">증상3</td><td width="300"><input type="text" name="syptom3" value=""></td>
</tr>
<tr>
<td width="200">증상4</td><td width="300"><input type="text" name="syptom4" value=""></td>
</tr>
<tr>
<td width="200">진료종류</td><td width="300"><input type="text" name="treattype" value=""></td>
</tr>
<tr>
<td width="200">진료완료 날싸 시간</td><td width="300"><input type="text" name="treatdate" value=""></td>
</tr>
<tr>
<td width="200">처방전올리기</td><td width="300"><input type="file" name="prescription" value=""></td>
</tr>
<tr>
<td width="200">진료확인서올리기</td><td width="300"><input type="file" name="treatConfirm" value=""></td>
</tr>

</table>
<input type="submit" value="등록하기">
</form>
   
   