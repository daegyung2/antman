<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

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