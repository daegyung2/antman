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
<td colspan="2"><img src="${dto.asimg} ">
<br/>
${dto.ascontent}</td>
</tr>

<tr>
<td>���Ǽ�����:${ddto.drname}</td><td><img src="${ddto.drimg1}" width="181" height="236"></td>


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
<tr align ="center">
<td colspan ="2">

<c:if test="${check == 0 && asendcheck == 1 }"> 

<script language="javascript">

function popup()
{
	var yn = window.confirm("��û�Ͻðڽ��ϱ�?");
	
	if(yn) {
		document.ggform.submit();
	}
	
  
  }
</script>

<form name="ggform" action="/antman/appointacademy.do" method="post">
<input type="hidden" value="${dto.drid }" name="drid">
<input type="hidden" value="${dto.drname}" name="drname">
<input type="hidden" value="${dto.asid}" name="asid">
<input type="hidden" value="${dto.asmin}" name="asmin">
<input type="hidden" value="${dto.asmax}" name="asmax">
<input type="hidden" value="${sessionScope.memname}" name="name">
<input type="hidden" value="${sessionScope.memphone}" name="phone">
<input type="hidden" value="${sessionScope.memId }" name="id">
<input type="hidden" value="${sessionScope.meme_mail }" name="email">
<input type="hidden" value="${dto.assubject}" name="aasubject">
 <input type="button"  value="��û�ϱ�" onclick="javascript:popup();"></td>
 </form>


 </c:if>
 
 
<c:if test="${check == 1 && asendcheck==1}">

<script language="javascript">

function popups()
{
	var yn = window.confirm("��� �Ͻðڽ��ϱ�?");
	
	if(yn) {
		document.deleteform.submit();
	}
	
	
 
  }
</script>
<form name="deleteform" action="/antman/deleteacademy.do" method="post">
<input type="hidden" value="${dto.asid }" name="asid">
<input type="hidden" value="${sessionScope.memId}" name="id">
</form>
<input type="button" value = "����ϱ�" onclick="javascript:popups();" >
</c:if>

<c:if test="${asendcheck == 0 }">
��û�Ⱓ�� ����Ǿ����ϴ�.
</c:if>
</td>
</tr>



</table>