<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<% String jinryo = request.getParameter("jinryo"); 
 String dtname = request.getParameter("dtname"); 
 String month = request.getParameter("month"); 
String day = request.getParameter("day"); 
 String time = request.getParameter("time"); %>


진료<input text="text" name="jinryo" value="<%= jinryo%>"/>
선생님<input text="text" name="jinryo" value="<%=dtname%>"/>
달<input text="text" name="month" value="<%=month%>"/>
월<input text="text" name="day" value="<%=day%>"/>
일<input text="text" name="time" value="<%=time%>"/>