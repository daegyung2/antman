<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<h2>������ �Ϸ�Ǿ����ϴ�.</h2>


<table width="900">
<tr><
<td>�����ȣ</td><td>���������</td><td>���༱����</td><td>����ð�</td>


</table>



<% String jinryo = request.getParameter("jinryo"); 
 String dtname = request.getParameter("dtname"); 
 String month = request.getParameter("month"); 
String day = request.getParameter("day"); 
 String time = request.getParameter("time"); %>


����<input text="text" name="jinryo" value="<%= jinryo%>"/>
������<input text="text" name="jinryo" value="<%=dtname%>"/>
��<input text="text" name="month" value="<%=month%>"/>
��<input text="text" name="day" value="<%=day%>"/>
��<input text="text" name="time" value="<%=time%>"/>