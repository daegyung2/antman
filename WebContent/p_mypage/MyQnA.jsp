<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


 
    <table width="600" border="1">
    
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
    
<table width="700" border="1" align="center">
       
        <c:if test="${list == null }" >
        <h2>���� ������ ������ �����ϴ�.</h2>
        </c:if>
        
        <c:if test="${list != null }" >
        <c:forEach var="dto" items="${list}">
		<tr>
		     <td><h2>${dto.id}</h2></td>
			 <td><h2>${dto.name}</h2></td>
			 <td><h2>${dto.content}</h2></td>
			 <td><h2>${dto.drname}</h2></td>
		</tr>

</c:forEach>
</c:if>

   
</table>



   
</table>
    
    

   

    
  
 
 
 