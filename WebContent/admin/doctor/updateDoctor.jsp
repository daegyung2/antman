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
<table border="1" cellspacing="0" cellpadding="0" >
<tr>
<td colspan="2" align="center">
<font size="3" color="orange" >�ǻ� ������ �����մϴ�. </font>
</td>
</tr>
<form action="/antman/updateDoctorPro.do" method="post" enctype="multipart/form-data" >
<tr>
<td>�ǻ� ����</td>
<td><input type="text" size="10" maxlength="15" name="drname" value="${dto.drname }"/></td>
</tr>
<tr>
<td>�ǻ� ��Ϲ�ȣ</td>
<td><input type="text" size="20" maxlength="30" name="dreg_num" value="${dto.dreg_num }"/></td>
</tr>
<tr>
<td>���� ����</td>
<td ><input type="text" size="20" maxlength="30" name="major" value="${dto.major }"/></td>
</tr>
<tr>
<td>�Ҽ� �μ�(����)</td>
<td ><select name="dpname">
<c:forEach var="dto" items="${list}" >
<option value="${dto.dpname }">${dto.dpname}</option>
</c:forEach>
</select>

</td>
</tr>
<tr>
<td>���� ���</td>
<td height="300">
<input type="text" size="50" maxlength="50" name="degree1" value="${dto.degree1 }" /><br />
<input type="text" size="50" maxlength="50" name="degree2" value="${dto.degree2 }" /><br />
<input type="text" size="50" maxlength="50" name="degree3" value="${dto.degree3 }" /><br />
<input type="text" size="50" maxlength="50" name="degree4" value="${dto.degree4 }" /><br />
<input type="text" size="50" maxlength="50" name="degree5" value="${dto.degree5 }" /><br />
</td>
</tr>
<tr>
<td>�� ���</td>
<td>
<input type="text" size="50" maxlength="50" name="report1" value="${dto.report1 }" /><br />
<input type="text" size="50" maxlength="50" name="report2" value="${dto.report2 }" /><br />
<input type="text" size="50" maxlength="50" name="report3" value="${dto.report3 }" /><br />
<input type="text" size="50" maxlength="50" name="report4" value="${dto.report4 }" /><br />
<input type="text" size="50" maxlength="50" name="report5" value="${dto.report5 }" /><br />
</td>
</tr>
<tr>
<td>���� ���ε�</td>
<td>
<input type="file" size="50" name="drimg" /> <br />
<input type="file" size="50" name="drimg" /> <br />
<input type="file" size="50" name="drimg" /> <br />
<input type="file" size="50" name="drimg" /> <br />
<input type="file" size="50" name="drimg" /> <br />
</td>
</tr>
<tr>
<td colspan="2">
<input type="hidden" name="drId" value="${dto.drId}" />
<input type="submit" value="����" />
<input type="reset" value="�ٽ��ۼ�" />
<input type="button" value="��� �Խ���" onclick="window.location='/antman/doctorList.do'" />
</td>
</tr>
</form>
</table>
</body>
</html>