<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<SCRIPT LANGUAGE="JavaScript">
<!-- 
function display(info)  {

// 메세지들을 설정 하세요
   
  if (document.depart.p_depart_id.options[1].selected)  {
    document.depart.p_dpname.value= "진료과"
   
  }

}
//-->
</SCRIPT>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="/antman/insertDepartPro.do" method="post" name="depart" >
<table width="700" border="1" cellpadding="1" cellspacing="0">
<tr>
<td>부모 부서</td>
<td>
<select name="p_depart_id" onChange="display(this)">
<option selected>선택하세요</option>
<c:forEach var="dto" items="${list}" >
<option value="${dto.p_depart_id }">${dto.p_depart_id }</option>
</c:forEach>
<input type="text" size="10" maxlength="10" name="p_dpname" />
</select>
</td>
</tr>
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