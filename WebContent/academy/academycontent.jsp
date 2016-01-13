<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>�м�������� | ���б���</title>

<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:12px; line-height:1.4; }
	a{text-decoration:none; }
	
	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	
	.container {width:1000px; height:1300px; margin:0 auto; margin-left:220px; position:relative;}
	.container .main{width:800px; height:1200px; margin-top:5px; }
	.container .main .academy{margin-left:100px; width:900px; border:1px solid #BDBDBD; border-top:2px solid #5586EB; border-collapse:collapse;}
	.container .main .academy th{text-align:center; padding:5px 0; color:#5586EB; background:rgba(233,233,233,0.65);}
	.container .main .academy td{padding:5px 0 5px 10px;}

</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container ���� -->
<div id="side">
	<jsp:include page="academysidebar.jsp" flush="true | false"/>
</div>

<div class="container">
	<div class="main">
	
<table width="600" border="1" class="academy">
<tr>
<th>����</th><td>${dto.assubject }</td>
</tr>

<tr>
<th>��û�Ⱓ</th><td>${dto.asstart} ~ ${dto.asend}</td>
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
�Ͻ�&nbsp;&nbsp;${dto.astime} ~ ${dto.astimeend}<br/>
���&nbsp;&nbsp;${dto.place}<br/>
����&nbsp;&nbsp;${dto.host}<br/>
��Ϲ��&nbsp;&nbsp;${dto.register}<br/>
������ȭ&nbsp;&nbsp;${dto.asphone}<br/>
���Ǹ���&nbsp;&nbsp;${dto.asemail}<br/>
</td>
</tr>
<tr align ="center">
<td colspan ="2">
<c:if test="${sessionScope.memId eq null && dto.asmin ne dto.asmax} "> 
�α����Ŀ� ��û�����մϴ�.

</c:if>

<c:if test="${check == 0 && asendcheck == 1 && sessionScope.memId ne null && dto.asmin ne dto.asmax}"> 

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
 
 
<c:if test="${check == 1 && asendcheck==1 && sessionScope.memId ne null && dto.asmin ne dto.asmax}">

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

<c:if test="${asendcheck == 0 && dto.asmin ne dto.asmax}">
��û�Ⱓ�� ����Ǿ����ϴ�.
</td>
</tr>
</c:if>


<c:if test="${dto.asmin eq dto.asmax}">
��û�ο��� �� á���ϴ�.
</td>
</tr>
</c:if>

</table>
	</div>
</div>

<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>

