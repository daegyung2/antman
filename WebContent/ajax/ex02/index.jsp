<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<p>
<% 
 String number = request.getParameter("number");
 String id = request.getParameter("id");
 String comment = request.getParameter("comment");
 
%>
  �۹�ȣ:<%=number%><br>
  ���̵�:<%=id%><br>
  �ڸ�Ʈ:<%=comment%><br>
</p>
