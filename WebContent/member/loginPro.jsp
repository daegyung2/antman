<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
    <h2>${sessionScope.memId} �� �α��� ����..!! </h2><br/>
       �ȳ��ϼ��� ${sessionScope.memname }��!  ����� ������ ${sessionScope.memauth }�Դϴ�. <br/>
    <input type="button" value="�α׾ƿ�" onclick="javascript:window.location='logout.do'">
    <input type="button" value="ȸ����������" onclick="javascript:window.location='modifyForm.do'">
    <input type="button" value="�Խ���" onclick="javascript:window.location='newsboard.do'">
	
    <c:if test="${sessionScope.memauth eq 'D'}"> 
    <input type="button" value="�ǻ縶��������" onclick="javascript:window.location='scheduleform.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memname}'">
    <br/>
    </c:if>
    
     <c:if test="${sessionScope.memauth eq 'D'}">
      <input type="button" value="�ǻ�qna" onclick="javascript:window.location='MyQnAanswer.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memname}'">
   	  </c:if>
   	  
    <input type="button" value="��������" onclick="javascript:window.location='mainboard.do'">
   
    <c:if test="${sessionScope.memauth eq 'P'}"> 
     <input type="button" value="ȯ�ڸ���������" onclick="javascript:window.location='p_mypage.do?id=${sessionScope.memId}'">
     </c:if>
     
   	  <c:if test="${sessionScope.memauth eq 'P'}">
      <input type="button" value="���Ό���ϱ�" onclick="javascript:window.location='appointmentmain.do?id=${sessionScope.memId}'">
   	  </c:if>
   	 
   	  <c:if test="${sessionScope.memauth eq 'P' || sessionScope.memauth eq 'D'}">
      <input type="button" value="Ī���Խ���" onclick="javascript:window.location='praiseboard.do?id=${sessionScope.memId}'">
   	  </c:if>
   	  
   	  
   	  
   	  <c:if test="${sessionScope.memauth eq 'G'}">
      <input type="button" value="������������" onclick="javascript:window.location='/antman/admin/adminsidebar.jsp'">
   	  </c:if>
   	 
   	  <input type="button" value="" onclick="javascript:window.location='praiseboard.do?id=${sessionScope.memId}'">
   	 
   	  <c:if test="${sessionScope.memauth eq 'P'}">
   	  <h3>���� ���� ���</h3>
   	  
   	  <table width="730" border="1">
<tr>
<td width="70">�����ȣ</td>
<td width="100">����id</td>
<td width="100">���༺��</td>
<td width="100">���������</td>
<td width="100">���༱����</td>
<td width="170">����ð�</td>
<td width="70">����ȸ��</td>
</tr>
<tr>
<c:forEach var="dto" items="${alist}">
<td >${dto.aid }</td>
<td >${dto.id }</td>
<td >${dto.name }</td>
<td >${dto.dpname }</td>
<td >${dto.drname }</td>
<td >${dto.adate }</td>
<td >${dto.nextadate }</td></tr>
</c:forEach>
</table>
</c:if>