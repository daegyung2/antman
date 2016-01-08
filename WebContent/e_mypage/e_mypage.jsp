<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	.sidebar{width:200px; height:1350px; float:left; margin-left:35px; top:95px; position:absolute; border:1px solid #BDBDBD; border-top:1px solid transparent;}
	.sidebar #sidebar_top{ width:200px; height:120px; font-size:22px; margin-top:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD; text-align:center;}
	.sidebar #sidebar_top b{padding-right:0px;}
	.sidebar #sidebar_top a{text-decoration:none; color:#5586EB;}
	.sidebar #sidebar_top th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#nav{width:200px; margin:30px auto; text-indent:10px; float:left; margin-top:25px; margin-bottom:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD;}
	#nav .title{display:block; height:50px; line-height:3em; font-size:17px; background:#FFFFFF; color:#000000; text-align:center; padding-right:10px; border-top:1px solid #BDBDBD;}
	#nav .title:hover{text-decoration:underline; }
	#nav li.on{background:#5586EB;}
	#nav li.on a{font-weight:bold; color:#FFFFFF; }
	#nav li:first-child a.title{border-top:none;}
	
</style>


<div id="side">
<jsp:include page="e_mypage_sidebar.jsp" flush="true | false"/>
</div>
<table width="1400" border="0">
<tr>
<td width="200">

</td>


<td width="1200" align ="center">
<h2>의료진 스케줄 현황</h2>

    

<table width="700" border="1" align="center">
       
        <c:if test="${list == null }">
        <h2>현재 의료진 스케줄이 없습니다.</h2>
        </c:if>
        
       
        <tr align="center"> 
		<td>아이디</td>
		<td>이름</td>
		<td>의료진</td>
		<td>날짜</td>
		</tr>
	
       
        <c:if test="${list != null }" >
        <c:forEach var="dto" items="${list}">
	<td><h2>${dto.drid}<input type="hidden"  name="drid" value="${dto.drid}"></h2>
		<tr>
		     <td><h2>${dto.id}</h2></td>
			 <td><h2>${dto.drmane}</h2></td>
			 <td><h2>${dto.dpname}</h2></td>
			 <td><h2>${dto.sdate}</h2></td>
		</tr>

</c:forEach>
</c:if>

   
</table>






