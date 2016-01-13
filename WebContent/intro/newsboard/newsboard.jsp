<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:14px; line-height:1.4; overflow-x:hidden;}
	a{text-decoration:none; }

	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	.container{width:1100px; height:1150px; margin:0 auto;  margin-left:-60px; position:relative;}
	.container .main{width:1000px; height:1100px; margin-left:0px; top:30px; position:relative;}
	
	#container{width:1100px; height:1146px; margin:0 auto;  margin-left:100px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:0px; margin-top:-17px; position:relative}
	#container .main #title{width:800px; margin-left:100px; text-align:center;}
	#container .main table{border:1px solid #BDBDBD; border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>


<div id="side">
<jsp:include page="/intro/intro_mainsidebar.jsp" flush="true | false"/>
</div>


<div id="container">
	<div class="main">
		<div id="title">
<center><h2>News! </h2></center></div>
		
<c:if test="${sessionScope.memauth eq 'E'}">
<center>
  <form action="/antman/newsboardwrite.do" method="post">
  <button type="submit" class="btn btn-primary btn-md" onclick=>글 쓰기</button>
  </form>
  </center>
  </c:if>
  <br/>
  <table width="900" align="center" border="1" data-toggle="table" data-url="data2.json" data-show-columns="true" data-search="true" data-show-refresh="true" data-show-toggle="true" data-pagination="true">
    <thead>
      <tr>
       <th data-field="id" >번호</th>
<th data-field="name">내용</th>
      </tr>
    </thead>
   
                <c:forEach var="dto" items="${list}">
		<tr>
		     <td ><h3>${dto.NEid}</h3></td>
			 <td ><h3><a href="/antman/newsboardcontent.do?NEid=${dto.NEid}">${dto.subject}</a></h3>
				 <br/>
				<FONT size="2">
			
				
				등록일 : ${dto.reg_date} |
				아이디 : ${sessionScope.LoginDataBean.id}
			</FONT>
		
		</tr>

</c:forEach>
   
   
	
  </table>

</div>


<script type="text/javascript">

</script>
</body>
</html>
</div>


<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>
    