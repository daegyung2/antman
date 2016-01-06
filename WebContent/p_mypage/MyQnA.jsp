<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:100px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65); text-align:left; }
	#container .main td{padding:5px 5px 5px 5px; }
</style>

<div id="side">
<jsp:include page="p_mypage_sidebar.jsp" flush="true | false"/>
</div>

<div id="container">
	<div class="main">
		<div id="title"><h2>���ǹ��ǳ���</h2></div>

 
    <table width="600" border="1" align="center">
    
    <tr><td>������ ����</td><td>
    <form action="/antman/MyQnA.do" method="post">
    <select name="dpname">
	<c:forEach var="dto" items="${dplist}" >
	<option value="${dto.dpname }">${dto.dpname}</option>
	</c:forEach>
	</select><input type="submit" value="�����Ժ���">   
 	</form>

 
 <form action="/antman/MyQnA.do" method="post">  
 
    <select name="drname">
	<c:forEach var="dto" items="${drlist}" >
	<option value="${dto.drname }">${dto.drname}</option>
	</c:forEach>	
</select>
<input type="submit" value="�����Լ���">

</form>

 </td>
	<form action="/antman/MyQnAPro.do" method="post">	
    <tr>
    <td>���̵�</td><td><input type="text" name="id" value="${sessionScope.memId}"/> </td></tr>
    
    <tr><td>�۾���</td><td><input type="text" name="name" value="${sessionScope.memname}"/></td></tr>
    <tr><td>������</td><td><input type="text" name="subject"/></td></tr>
    <tr><td>������</td><td><input type="text" name="drname" value="${drname}"/></td></tr>
    </td></tr>
    <tr><td>�۳���</td><td><textarea name="content" rows="5" ROWS="10" COLS="50"/></textarea></td></tr>
    <tr><td colspan="2"><input type="submit" value="�۾���"/><button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/mypage.jsp'">�������</button></td></tr>
    
   
    </table>
    </form>
    <br/><br/>
    
<table width="800" border="1" align="center">
       
        <c:if test="${list == null }" >
        <h2>���� ������ ������ �����ϴ�.</h2>
        </c:if>
        
        <tr align="center">
        <td>���̵�</td>
        <td>�̸�</td>
        <td>����</td>
        <td>�Ƿ���</td>
        </tr>
        <c:if test="${list != null }" >
        <c:forEach var="dto" items="${list}">
		<tr align="cnenter">
		     <td><h3>${dto.id}</h3></td>
			 <td><h3>${dto.name}</h3></td>
			 <td><h3>${dto.content}</h3></td>
			 <td><h3>${dto.drname}</h3></td>
		</tr>

</c:forEach>
</c:if>

   
</table>
</div>
</div>



   

    
    

   

    
  
 
 
 