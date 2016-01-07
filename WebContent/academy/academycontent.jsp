<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<table width="600" border="1">
<tr>
<td>제목</td><td>${dto.assubject }</td>
</tr>

<tr>
<td>신청기간</td><td>${dto.asstart}-${dto.asend}</td>
</tr>

<tr>
<td colspan="2"><img src="${dto.asimg}">
<br/>
${dto.ascontent}</td>
</tr>

<tr>
<td colspan="2">Infomation <br/>
일시&nbsp;&nbsp;${dto.astime}-${dto.astimeend}<br/>
장소&nbsp;&nbsp;${dto.place}<br/>
주최&nbsp;&nbsp;${dto.host}<br/>
등록방법&nbsp;&nbsp;${dto.register}<br/>
문의전화&nbsp;&nbsp;${dto.asphone}<br/>
문의메일&nbsp;&nbsp;${dto.asemail}<br/>
</td>
</tr>

</table>