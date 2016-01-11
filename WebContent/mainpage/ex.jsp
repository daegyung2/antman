<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <table  width="900" align="center" border="1" data-toggle="table" data-url="data2.json" data-show-columns="true" data-search="true" data-show-refresh="true" data-show-toggle="true" data-pagination="true">
    <thead>
      <tr>
      
      </tr>
    </thead>
   
                <c:forEach var="dto" items="${listA}">
		<tr>
		     <td ><h3>${dto.subject}</h3></td>
			
		
		</tr>

</c:forEach>
