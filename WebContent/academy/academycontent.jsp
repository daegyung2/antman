<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<table width="600" border="1">
<tr>
<td>����</td><td>${dto.assubject }</td>
</tr>

<tr>
<td>��û�Ⱓ</td><td>${dto.asstart}-${dto.asend}</td>
</tr>

<tr>
<td colspan="2"><img src="${dto.asimg}">
<br/>
${dto.ascontent}</td>
</tr>

<tr>
<td colspan="2">Infomation <br/>
�Ͻ�&nbsp;&nbsp;${dto.astime}-${dto.astimeend}<br/>
���&nbsp;&nbsp;${dto.place}<br/>
����&nbsp;&nbsp;${dto.host}<br/>
��Ϲ��&nbsp;&nbsp;${dto.register}<br/>
������ȭ&nbsp;&nbsp;${dto.asphone}<br/>
���Ǹ���&nbsp;&nbsp;${dto.asemail}<br/>
</td>
</tr>

</table>