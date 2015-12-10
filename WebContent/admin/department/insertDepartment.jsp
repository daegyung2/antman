<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="/antman/insertDepartPro.do" method="post" >
<table width="700" border="1" cellpadding="1" cellspacing="0">
<tr>
<td width="200">진료과 이름</td>
<td><input type="text" name="dpname" size="50" maxlength="30" /></td>
</tr>
<tr >
<td width="200">진료과 이니셜</td>
<td><input type="text" name="init" size="20" maxlength="20" /></td>
</tr>
<tr>
<td width="200">진료과 정보1</td>
<td><input type="text" name="d_info1" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">진료과 정보2</td>
<td><input type="text" name="d_info2" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">진료과 정보3</td>
<td><input type="text" name="d_info3" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">진료과 정보4</td>
<td><input type="text" name="d_info4" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">진료과 정보5</td>
<td><input type="text" name="d_info5" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">진료과 정보6</td>
<td><input type="text" name="d_info6" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">진료과 정보7</td>
<td><input type="text" name="d_info7" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">진료과 정보8</td>
<td><input type="text" name="d_info8" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">진료과 정보9</td>
<td><input type="text" name="d_info9" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">진료과 정보10</td>
<td><input type="text" name="d_info10" size="200" maxlength="200" /></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="등록" />
<input type="reset" value="초기화" />
<input type="button" value="진료과 게시판" onClick="window.location='/antman/departmentList.do'" />
</td>
</tr>
</table>
</form>
</body>
</html>