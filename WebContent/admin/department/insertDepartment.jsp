<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<SCRIPT LANGUAGE="JavaScript">
<!-- 
function display(info)  {

// �޼������� ���� �ϼ���
   
  if (document.depart.p_depart_id.options[1].selected)  {
    document.depart.p_dpname.value= "�����"
   
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
<td>�θ� �μ�</td>
<td>
<select name="p_depart_id" onChange="display(this)">
<option selected>�����ϼ���</option>
<c:forEach var="dto" items="${list}" >
<option value="${dto.p_depart_id }">${dto.p_depart_id }</option>
</c:forEach>
<input type="text" size="10" maxlength="10" name="p_dpname" />
</select>
</td>
</tr>
<tr>
<td width="200">����� �̸�</td>
<td><input type="text" name="dpname" size="50" maxlength="30" /></td>
</tr>
<tr >
<td width="200">����� �̴ϼ�</td>
<td><input type="text" name="init" size="20" maxlength="20" /></td>
</tr>
<tr>
<td width="200">����� ����1</td>
<td><input type="text" name="d_info1" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����2</td>
<td><input type="text" name="d_info2" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����3</td>
<td><input type="text" name="d_info3" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����4</td>
<td><input type="text" name="d_info4" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����5</td>
<td><input type="text" name="d_info5" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����6</td>
<td><input type="text" name="d_info6" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����7</td>
<td><input type="text" name="d_info7" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����8</td>
<td><input type="text" name="d_info8" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����9</td>
<td><input type="text" name="d_info9" size="200" maxlength="200" /></td>
</tr>
<tr>
<td width="200">����� ����10</td>
<td><input type="text" name="d_info10" size="200" maxlength="200" /></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="���" />
<input type="reset" value="�ʱ�ȭ" />
<input type="button" value="����� �Խ���" onClick="window.location='/antman/departmentList.do'" />
</td>
</tr>
</table>
</form>
</body>
</html>