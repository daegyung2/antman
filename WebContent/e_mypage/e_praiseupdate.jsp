<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	#container{width:1100px; height:1241px; margin:0 auto;  margin-left:190px; margin-top:-50px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:0px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65); text-align:center; }
	#container .main td{padding:5px 5px 5px 5px; }
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>


<div id="side">
<jsp:include page="e_mypage_sidebar.jsp" flush="true | false"/>
</div>
</br></br>

<div id="container">
	<div class="main">
		<div id="title"><h2>Ī���սô�</h2></div>
	
	
	
	<c:if test="${!empty dto && empty edto}">

  
    <table width="750" border="1" align="center">
          <tr><td>Ī������</td><td>
        <form action="/antman/e_praisedoctorupdate.do" method="post">
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
 <form action="/antman/e_praisedoctorupdate.do" method="post">  
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
    <form action="/antman/e_praiseupdatepro.do" method="post">
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
    <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/e_praiseboard.do'">�������</button></td></tr>
    </table></form>
    </c:if>
    
    
    	
    	
  	<c:if test="${empty dto && !empty edto}">
  	
    <table width="750" border="1" align="center">
          <tr><td>Ī������</td><td>
        <form action="/antman/e_praiseupdate.do" method="post">
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
<form action="/antman/e_praiseupdate.do" method="post">  
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
    <form action="/antman/e_praiseupdatepro.do" method="post">
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
    
    </div></div>
    
    <div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>