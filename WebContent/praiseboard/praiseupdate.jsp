<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <style type="text/css">
	body{margin:0px; padding:0px;}
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px;}
	li{ margin:0px; padding:0px; }
	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container ���� -->
<div id="side">
	<jsp:include page="/webservice/websidebar.jsp" flush="true | false"/>
</div>
  <div><form action="/antman/praiseupdatepro.do" method="post">
  
    <table width="600" border="1">
    <tr>
    <input type="text" name="pid" value="${dto.pid}"/></td></tr>
    <td>���̵�</td><td><input name="id" value="${dto.id}"/></td></tr>
    <tr><td>�۾���</td><td><input name="name" value="${dto.name}"/></td></tr>
    <tr><td>������</td><td><input type="text" name="subject" value="${dto.subject}"/></td></tr>
    <tr><td>Ī���Ҽ�����</td><td><input type="text" name="drname" value="${dto.drname}"/></td></tr>
    <tr><td>�۳���</td><td><textarea name="content" rows="2" ROWS="5" COLS="40"/>${dto.content}</textarea></td></tr>
    <tr><td colspan="2"><input type="submit" value="�����ϱ�"/>
    <button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/praiseboard.do'">�������</button></td></tr>
    
   
    </table>
    </form>
    </div>
    