
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>   
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px;}
	#footer{width:100%; height:300px; margin-bottom:0px;}
	#container{width:1100px; height:1100px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:-20px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65); text-align:left; }
	#container .main td{padding:5px 5px 5px 5px; }
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>


<div id="side">
<jsp:include page="p_mypage_sidebar.jsp" flush="true | false"/>
</div>

<br/><br/><br/>
<div id="container">
	<div class="main">
		<div id="title"><h2>ȸ����������</h2></div>
		<center>
	<table width="700" border="1">
  		<form action="modifyPro.do" method="post">    
 		<tr>
        	<th width="170">���̵�</th>
        	<td><input type="text" name="id" value="${sessionScope.memId}"></td>
      	</tr>
	    <tr>
        	<th width="170">��й�ȣ</th>
        	<td><input type="password" name="passwd"/></td>
      	</tr>
      	<tr>
        	<th width="170">�̸�</th>
        	<td><input type="text" name="name" value="${sessionScope.memname}"/></td>
      	</tr>
       	<tr>
        	<th width="170">�޴�����ȣ</th>
        	<td><input type="text" name="phone" value="${sessionScope.memphone}"/></td>
      	</tr>             
      	<tr>
        	<th width="170">�̸���</th>
        	<td><input type="text" name="e_mail" value="${sessionScope.meme_mail}"/></td>
      	</tr>
   		<tr>
    		<td colspan = "2" align ="center"><input type="submit" value="�����ϱ�"/>
    		<input type="button" value="���ư���" onclick="javascript:window.location='loginPro.do'"/></td>
    	</tr>
		</form>             
	</table>
  		</center>
	</div>
</div>

<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>


    