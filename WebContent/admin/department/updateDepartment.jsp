<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="/antman/updateDepartform.do" method="post" >
<table width="1000" border="1" cellpadding="1" cellspacing="0">
<tr>
<td>�θ� �μ�</td>
<td>
<select name="p_depart_id" >
<c:forEach var="dto" items="${list }">
<option>${dto.p_depart_id }</option>
</c:forEach>
</select>
${pdto.p_dpname}
</td>
</tr>
<tr>
<td width="200">����� �̸�</td>
<td><input type="text" name="dpname" size="50" maxlength="30" value="${dto.dpname }" /></td>
</tr>
<tr >
<td width="200">����� �̴ϼ�</td>
<td><input type="text" name="init" size="20" maxlength="20" value="${dto.init }"/></td>
</tr>
<td width="200">����� ����</td>
<td><input type="file" size="50" name="upload" />
</td>
</tr>
<tr>
<td width="200">����� ����1</td>
<td><input type="text" name="d_info1" size="100" maxlength="100" value="${dto.d_info1 }"/></td>
</tr>
<tr>
<td width="200">����� ����2</td>
<td><input type="text" name="d_info2" size="100" maxlength="100" value="${dto.d_info2 }"/></td>
</tr>
<tr>
<td width="200">����� ����3</td>
<td><input type="text" name="d_info3" size="100" maxlength="100" value="${dto.d_info3 }"/></td>
</tr>
<tr>
<td width="200">����� ����4</td>
<td><input type="text" name="d_info4" size="100" maxlength="100" value="${dto.d_info4 }"/></td>
</tr>
<tr>
<td width="200">����� ����5</td>
<td><input type="text" name="d_info5" size="100" maxlength="100" value="${dto.d_info5 }"/></td>
</tr>
<tr>
<td width="200">����� ����6</td>
<td><input type="text" name="d_info6" size="100" maxlength="100" value="${dto.d_info6 }"/></td>
</tr>
<tr>
<td width="200">����� ����7</td>
<td><input type="text" name="d_info7" size="100" maxlength="100" value="${dto.d_info7 }"/></td>
</tr>
<tr>
<td width="200">����� ����8</td>
<td><input type="text" name="d_info8" size="100" maxlength="100" value="${dto.d_info8 }"/></td>
</tr>
<tr>
<td width="200">����� ����9</td>
<td><input type="text" name="d_info9" size="100" maxlength="100" value="${dto.d_info9 }"/></td>
</tr>
<tr>
<td width="200">����� ����10</td>
<td><input type="text" name="d_info10" size="100" maxlength="100" value="${dto.d_info10 }"/></td>
</tr>
<tr>
<td colspan="2">
<input type="hidden" value="${dto.depart_id }" name="depart_id" />
<input type="submit" value="�����Ϸ�" />
<input type="reset" value="�ʱ�ȭ" />
<input type="button" value="����� �Խ���" onClick="window.location='/antman/departmentList.do'" />
</td>
</tr>
</table>
</form>
</body>
</html>