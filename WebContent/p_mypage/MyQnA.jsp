<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="p_mypage_sidebar.jsp" flush="true | false"/>


 
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



   

    
    

   

    
  
 
 
 