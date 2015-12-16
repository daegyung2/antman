<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>의사 정보 확인 페이지</title>
</head>
<body>
<table border="1" cellpadding="0" cellspacing="0" width="700">
<tr>
<td width="350" height="150" rowspan="3" align="center">
<img src="${dto.drimg1 }" width="150" height="150"/>
</td>
<td height="50">성명: ${dto.drname }</td>
</tr>
<tr>
<td height="50">전공: ${dto.major }</td>
</tr>
<tr>
<td height="50">소속 부서: ${dto.dpname }</td>
</tr>
<tr>
<td align="center">전문 분야</td>
<td> ${dto.exarea }</td>
</tr>
<tr><td rowspan="5" align="center">학위</td>
<td height="20">${dto.degree1 }</td></tr>
<tr><td height="20">${dto.degree2 }</td></tr>
<tr><td height="20">${dto.degree3 }</td></tr>
<tr><td height="20">${dto.degree4 }</td></tr>
<tr><td height="20">${dto.degree5 }</td></tr>
<tr><td rowspan="5" align="center">논문 내역</td>
<td height="20">${dto.report1 }</td></tr>
<tr><td height="20">${dto.report2 }</td></tr>
<tr><td height="20">${dto.report3 }</td></tr>
<tr><td height="20">${dto.report4 }</td></tr>
<tr><td height="20">${dto.report5 }</td></tr>
<tr><td rowspan="5" align="center">등록사진</td>
<td align="center"><img src="${dto.drimg1 }" width="150" height="150" /></td></tr>
<tr><td align="center"><img src="${dto.drimg2 }" width="150" height="150" /></td></tr>
<tr><td align="center"><img src="${dto.drimg3 }" width="150" height="150" /></td></tr>
<tr><td align="center"><img src="${dto.drimg4 }" width="150" height="150" /></td></tr>
<tr><td align="center"><img src="${dto.drimg5 }" width="150" height="150" /></td></tr>
<tr>
<td colspan="2" align="right">
<input type="button" value="게시판" onClick="window.location='/antman/doctorList.do'" />
<input type="button" value="수정하기" onClick="window.location='/antman/updateDoctor.do?drId=${dto.drId}'" />
<input type="button" value="삭제하기" onClick="window.location='/antman/deleteDoctor.do?drId=${dto.drId}'" />
</td></tr>
</table>
</body>
</html>