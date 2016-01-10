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
<td colspan="2"><img src="${dto.asimg} ">
<br/>
${dto.ascontent}</td>
</tr>

<tr>
<td>강의선생님:${ddto.drname}</td><td><img src="${ddto.drimg1}" width="181" height="236"></td>


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
<tr align ="center">
<td colspan ="2">

<c:if test="${check == 0 && asendcheck == 1 }"> 

<script language="javascript">

function popup()
{
	var yn = window.confirm("신청하시겠습니까?");
	
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
 <input type="button"  value="신청하기" onclick="javascript:popup();"></td>
 </form>


 </c:if>
 
 
<c:if test="${check == 1 && asendcheck==1}">

<script language="javascript">

function popups()
{
	var yn = window.confirm("취소 하시겠습니까?");
	
	if(yn) {
		document.deleteform.submit();
	}
	
	
 
  }
</script>
<form name="deleteform" action="/antman/deleteacademy.do" method="post">
<input type="hidden" value="${dto.asid }" name="asid">
<input type="hidden" value="${sessionScope.memId}" name="id">
</form>
<input type="button" value = "취소하기" onclick="javascript:popups();" >
</c:if>

<c:if test="${asendcheck == 0 }">
신청기간이 종료되었습니다.
</c:if>
</td>
</tr>



</table>