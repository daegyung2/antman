<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }

	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#top{width:200px; float:top; margin-left:100px; }
	.container{width:1100px; height:1300px; margin:0 auto;  margin-left:230px; position:relative;}
	.container .sub{width:800px; height:50px; margin-left:80px; top:0px; position:relative;}
	.container .sub b{font-size:22px; color:#000000;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:30px; position:relative;}
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>
<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:100px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>

<div id="side">
<jsp:include page="/admin/adminsidebar.jsp" flush="true | false"/>
</div>

<div id="container">
	<div class="main">
		<div id="title"><title>�μ����</title>
</head>
<body>
<form action="/antman/insertDepartPro.do" method="post" name="depart"  enctype="multipart/form-data">
<table width="400" border="1" >
<tr>
<th width="200">�θ� �μ�</th>
<td width="200">
<select name="p_depart_id" >
<c:forEach var="dto" items="${list}" >
<option value="${dto.p_depart_id }">${dto.p_dpname }</option>
</c:forEach>
<input type="button" value="����" />
<!-- <input type="text" size="10" maxlength="10" name="p_dpname" /> -->
</select>
</td>
</tr>
<tr>
<th width="100">����� �̸�</th>
<td width="200"><input type="text" name="dpname" /></td>
</tr>
<tr >
<th width="100">����� �̴ϼ�</th>
<td width="200"><input type="text" name="init" /></td>
</tr>
<tr>
<th width="100">����� ����</th>
<td><input type="file" size="50" name="upload" />
</td>
</tr>
<tr>
<th width="100">����� ����1</th>
<td width="200"><input type="text" name="d_info1"  /></td>
</tr>
<tr>
<th width="100">����� ����2</th>
<td width="200"><input type="text" name="d_info2"  /></td>
</tr>
<tr>
<th width="100">����� ����3</th>
<td width="200"><input type="text" name="d_info3" /></td>
</tr>
<tr>
<th width="100">����� ����4</th>
<td width="200"><input type="text" name="d_info4"  /></td>
</tr>
<tr>
<th width="100">����� ����5</th>
<td width="200"><input type="text" name="d_info5"  /></td>
</tr>
<tr>
<th width="100">����� ����6</th>
<td width="200"><input type="text" name="d_info6"  /></td>
</tr>
<tr>
<th width="100">����� ����7</th>
<td width="200"><input type="text" name="d_info7" /></td>
</tr>
<tr>
<th width="100">����� ����8</th>
<td width="200"><input type="text" name="d_info8" /></td>
</tr>
<tr>
<th width="100">����� ����9</th>
<td width="200"><input type="text" name="d_info9" /></td>
</tr>
<tr>
<th width="100">����� ����10</th>
<td width="200"><input type="text" name="d_info10" /></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="���" />
<input type="reset" value="�ʱ�ȭ" />
<input type="button" value="����� �Խ���" onClick="window.location='/antman/departmentList.do'" />
</td>
</tr>
</table>
</form>
</body>
</html>