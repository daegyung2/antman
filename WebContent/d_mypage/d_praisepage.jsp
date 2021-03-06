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
	.container{width:1100px; height:1100px; margin:0 auto;  margin-left:230px; position:relative;}
	.container .sub{width:800px; height:50px; margin-left:80px; top:0px; position:relative;}
	.container .sub b{font-size:22px; color:#000000;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:30px; position:relative;}
	
	#container{width:1100px; height:1247px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:-17px; position:relative}
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
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</div>


<div id="container">
	<div class="main">
		<div id="title"><h2>${sessionScope.memname }님 칭찬글 입니다.</h2></div>
		  <form action="/antman/praisewrite.do" method="post">
 <center>
 <table width="800" border="1">
      <tr>
       <th>번호</th>
	   <th>내용</th>
      </tr>
   	  <c:forEach var="dto" items="${list}">
	   <tr>
		<td align="center"><h3>${dto.pid}</h3></td>
		 <td ><h3><a href="/antman/d_praisepagecontent.do?pid=${dto.pid}">${dto.subject}</a></h3>
				${dto.content } <br/>
				<FONT size="1">
				글쓴이 : ${dto.name } |
				작성자 : ${dto.id } |
				등록일 : ${dto.reg_date} |
				
			</FONT>
		
		</tr>

</c:forEach>
  
  </table>
  </center>
</form>
                   
 <center> ${pagingHtml }</center> <!-- 위에방식으로 하려면 귀차너서 그냥 페이징액션을 활용함 왼쪽 pagingHtml 만 출력해주면 됨.. -->
		
	</div>
</div>

<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>
