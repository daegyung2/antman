<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
    <h2>${sessionScope.memId} �� �α��� ����..!! </h2><br/>
       �ȳ��ϼ��� ${sessionScope.memname }��!  ����� ������ ${sessionScope.memauth }�Դϴ�. <br/>
    <input type="button" value="�α׾ƿ�" onclick="javascript:window.location='logout.do'">
    <input type="button" value="ȸ����������" onclick="javascript:window.location='modifyForm.do'">
    <input type="button" value="�Խ���" onclick="javascript:window.location='newsboard.do'">

  
    <c:if test="${sessionScope.memauth eq 'D'}"> 
    <input type="button" value="����������" onclick="javascript:window.location='scheduleform.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memname}'">
    <br/>
    </c:if>
    
    <input type="button" value="��������" onclick="javascript:window.location='mainboard.do'">
     <input type="button" value="����qna" onclick="javascript:window.location='MyQnA.do?id=${sessionScope.memId}'">
     
      <c:if test="${sessionScope.memauth eq 'D'}">
      <input type="button" value="�ǻ�qna" onclick="javascript:window.location='doctorAnswer.do?id=${sessionScope.memId}'">
   	  </c:if>