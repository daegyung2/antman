<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	
	<c:if test="${!empty dto && empty edto}">

  
    <table width="600" border="1">
          <tr><td>Ī������</td><td>
        <form action="/antman/praisedoctorupdate.do" method="post">
         <c:if test="${empty drid }">
    <input type="text" name="drid" value="${dto.drid}"/></c:if>
        <c:if test="${!empty drid }">
    <input type="text" name="drid" value="${drid}"/></c:if>
        <input type="text" name="pid" value="${dto.pid}"/>
    <select name="dpname">
	<c:forEach var="dto" items="${dplist}" >
	<option value="${dto.dpname }">${dto.dpname}</option>
	</c:forEach>
	</select>&nbsp;&nbsp;<input type="submit" value="�����Ժ���">   
 	</form>
</td></tr>

<c:if test="${!empty drlist}">
<tr><td>Ī���Ҽ�����</td><td>
 <form action="/antman/praisedoctorupdate.do" method="post">  
 <input type="text" name="pid" value="${dto.pid}"/>
    <select name="drid">
	<c:forEach var="dto" items="${drlist}" >
	<option value="${dto.drid }">${dto.drname}</option>
	</c:forEach>	
</select>&nbsp;&nbsp;<input type="submit" value="�����Լ���">


</form>
</td>
</tr>
</c:if>
    <form action="/antman/praiseupdatepro.do" method="post">
    <tr>
        <c:if test="${empty drid }">
    <input type="text" name="drid" value="${dto.drid}"/></c:if>
        <c:if test="${!empty drid }">
    <input type="text" name="drid" value="${drid}"/></c:if>
    
    <input type="text" name="pid" value="${dto.pid}"/></td></tr>
    <td>���̵�</td><td><input name="id" value="${dto.id}"/></td></tr>
    <tr><td>�۾���</td><td><input name="name" value="${dto.name}"/></td></tr>
    <tr><td>������</td><td><input type="text" name="subject" value="${dto.subject}"/></td></tr>


    <tr><td>Ī���Ҽ�����</td><td>
    <c:if test="${empty drname}">
    <input type="text" name="drname" value="${dto.drname}"/>
    </c:if>
        <c:if test="${!empty drname }">
    <input type="text" name="drname" value="${drname}"/>
    </c:if>
    </td>
    
    </tr>
    <tr><td>�۳���</td><td><textarea name="content" rows="2" ROWS="5" COLS="40"/>${dto.content}</textarea></td></tr>
    <tr><td colspan="2"><input type="submit" value="�����ϱ�"/>
    <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseboard.do'">�������</button></td></tr>
    </table></form>
    </c:if>
    
    
    	
    	
  	<c:if test="${empty dto && !empty edto}">
  	
    <table width="600" border="1">
          <tr><td>Ī������</td><td>
        <form action="/antman/praiseupdate.do" method="post">
            <c:if test="${empty eid }">
    <input type="text" name="eid" value="${edto.eid}"/></c:if>
        <c:if test="${!empty eid }">
    <input type="text" name="eid" value="${eid}"/></c:if>
        <input type="text" name="pid" value="${edto.pid}"/>
    <select name="dpname">
	<c:forEach var="dto" items="${dplist}" >
	<option value="${dto.dpname }">${dto.dpname}</option>
	</c:forEach>
	</select>&nbsp;&nbsp;<input type="submit" value="��������">   
 	</form>
</td></tr>


<c:if test="${!empty delist}">
<tr><td>Ī��������</td><td>
<form action="/antman/praiseupdate.do" method="post">  
 <input type="text" name="pid" value="${edto.pid}"/>
    <select name="eid">
	<c:forEach var="dto" items="${delist}" >
	<option value="${dto.eid }">${dto.name}</option>
	</c:forEach>	
</select>&nbsp;&nbsp;<input type="submit" value="��������">
</form>

 </td>
</tr>
 </c:if>
    <tr>
    <form action="/antman/praiseupdatepro.do" method="post">
    <c:if test="${empty eid }">
    <input type="text" name="eid" value="${edto.eid}"/></c:if>
        <c:if test="${!empty eid }">
    <input type="text" name="eid" value="${eid}"/></c:if>
    
    <input type="hidden" name="pid" value="${edto.pid}"/></td></tr>
    <td>���̵�</td><td><input name="id" value="${edto.id}"/></td></tr>
    <tr><td>�۾���</td><td><input name="name" value="${edto.name}"/></td></tr>
    <tr><td>������</td><td><input type="text" name="subject" value="${edto.subject}"/></td></tr>
    <tr><td>Ī��������</td><td>
    <c:if test="${empty name}">
    <input type="text" name="ename" value="${edto.name}"/>
    </c:if>
        <c:if test="${!empty name }">
    <input type="text" name="ename" value="${name}"/>
    </c:if>
    </td></tr>
    <tr><td>�۳���</td><td><textarea name="content" rows="2" ROWS="5" COLS="40"/>${edto.content}</textarea></td></tr>
    <tr><td colspan="2"><input type="submit" value="�����ϱ�"/>
    <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseboard.do'">�������</button></td></tr>
    </table></form>
    </c:if>