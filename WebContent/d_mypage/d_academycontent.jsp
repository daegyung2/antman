<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }

	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	.container{width:1100px; height:1100px; margin:0 auto;  margin-left:230px; position:relative;}
	.container .sub{width:800px; height:50px; margin-left:80px; top:0px; position:relative;}
	.container .sub b{font-size:22px; color:#000000;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:30px; position:relative;}
	
	#container{width:1100px; height:1247px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:-17px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>


<div id="side">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</div>


<div id="container">
	<div class="main">
		<div id="title">
<table width="600" border="1" class="academy">
<tr>
<th>제목</th><td>${dto.assubject }</td>
</tr>

<tr>
<th>신청기간</th><td>${dto.asstart} ~ ${dto.asend}</td>
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
일시&nbsp;&nbsp;${dto.astime} ~ ${dto.astimeend}<br/>
장소&nbsp;&nbsp;${dto.place}<br/>
주최&nbsp;&nbsp;${dto.host}<br/>
등록방법&nbsp;&nbsp;${dto.register}<br/>
문의전화&nbsp;&nbsp;${dto.asphone}<br/>
문의메일&nbsp;&nbsp;${dto.asemail}<br/>
</td>
</tr>
<tr align ="center">
<td colspan ="2">

<c:if test="${check == 0 && asendcheck == 1 && sessionScope.memauth != 'D'}"> 

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
</td><td><input type="button" value="수정" onclick="javascript:window.location='/antman/dacademyupdate.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memname }&asid=${dto.asid}'">
</td><td><input type="button" value="삭제" onclick="javascript:window.location='/antman/dacademydelete.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memname }&asid=${dto.asid}'">


</table>
	</div>
</div>

<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>

