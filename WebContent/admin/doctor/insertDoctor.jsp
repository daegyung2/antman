<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
		<div id="title"><title>�ǻ����� �Է¶�</title>
</head>
<body>
<table border="1"  >
<tr>
<td colspan="2" align="center">
<font size="3" color="orange" >�ǻ� ������ �Է��ϴ� ���Դϴ�. �� ���� �Է� ��Ź �帳�ϴ�. </font>
</td>
</tr>
<form action="/antman/insertDoctorPro.do" method="post" enctype="multipart/form-data" >
<tr>
<td >�ǻ� ����</td>
<td><input type="text" maxlength="15" name="drname" placeholder="�ǻ��̸��� �Է��ϼ���"/></td>
</tr>
<tr>
<td>�ǻ� ��Ϲ�ȣ</td>
<td><input type="text" size="20" maxlength="30" name="dreg_num" placeholder="�ǻ� ��Ϲ�ȣ�� �Է��ϼ���"/></td>
</tr>
<tr>
<td>���� ����</td>
<td ><input type="text" size="20" maxlength="30" name="major" placeholder="������ �Է��ϼ���"/></td>
</tr>
<tr>
<td>���� �о�(,��ǥ�� ����)</td>
<td>
<textarea rows="5" cols="50" name="exarea" placeholder="�����о߸� �Է��ϼ���" >
</textarea>
</td>
</tr>
<tr>
<td>�Ҽ� �μ�</td>
<td ><select name="dpname">
<c:forEach var="dto" items="${list}" >
<option value="${dto.dpname }">${dto.dpname}</option>
</c:forEach>
</select>

</td>
</tr>
<tr>
<td>���� ���</td>
<td height="200">
<input type="text" size="50" maxlength="50" name="degree1" placeholder="������ �Է��ϼ���" /><br/>
<input type="text" size="50" maxlength="50" name="degree2" placeholder="������ �Է��ϼ���" /><br/>
<input type="text" size="50" maxlength="50" name="degree3" placeholder="������ �Է��ϼ���" /><br/>
<input type="text" size="50" maxlength="50" name="degree4" placeholder="������ �Է��ϼ���" /><br/>
<input type="text" size="50" maxlength="50" name="degree5" placeholder="������ �Է��ϼ���" /><br/>
</td>
</tr>
<tr>
<td>�� ���</td>
<td>
<input type="text" size="50" maxlength="50" name="report1" placeholder="���� �Է��ϼ���" /><br />
<input type="text" size="50" maxlength="50" name="report2" placeholder="���� �Է��ϼ���"/><br />
<input type="text" size="50" maxlength="50" name="report3" placeholder="���� �Է��ϼ���" /><br />
<input type="text" size="50" maxlength="50" name="report4" placeholder="���� �Է��ϼ���"/><br />
<input type="text" size="50" maxlength="50" name="report5" placeholder="���� �Է��ϼ���"/><br />
</td>
</tr>
<tr>
<td>���� ���ε�</td>
<td>
<input type="file" size="50" name="drimg" /> <br />
<input type="file" size="50" name="drimg" /> <br />
<input type="file" size="50" name="drimg" /> <br />
<input type="file" size="50" name="drimg" /> <br />
<input type="file" size="50" name="drimg" /> <br />
</td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="���" />
<input type="reset" value="�ٽ��ۼ�" />
<input type="button" value="��� �Խ���" onclick="window.location='/antman/doctorList.do'" />
</td>
</tr>
</form>
</table>

</body>
</html>