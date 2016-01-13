<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<style type="text/css">
	body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#menutop{width:100%; height:50px; }
	#side{width:200px; float:left; margin-left:0px; }
	#footer{width:100%; height:300px; margin-bottom:0px;}
	#container{width:1100px; height:1297px; margin:0 auto;  margin-left:190px; margin-top:50px; position:relative;}
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
	<jsp:include page="/e_mypage/e_mypage_sidebar.jsp" flush="true | false"/>
</div>


<div id="container">
	<div class="main"><br/><br/>
		<div id="title"><center><h2>나의 칭찬 내역 </h2></center></div>

  <div>
   
  <c:if test="${sessionScope.memauth eq 'P'}">
  <form action="/antman/praisewrite.do" method="post">
  <center><button type="submit" class="btn btn-primary btn-md" onclick=>칭찬하기</button></center>
  </form>
  </c:if>
  <br/><br/>
  <table width="900" align="center" border="1">
    <thead>
      <tr>
       <th data-field="id" >번호</th>
	<th data-field="name">내용</th>
      </tr>
    </thead>
   <input type="hidden" name="pid" value="${dto.pid}"/>
   
                <c:forEach var="dto" items="${list}" >
                
		<tr>
			
		     <td><h3>${dto.pid}</h3></td>
			 <td><h3><a href="/antman/e_praisecontent.do?pid=${dto.pid}&name=${dto.name}&id=${dto.id}">${dto.subject}</a></h3>
				${dto.content } <br/>
				<FONT size="2">
				글쓴이 : ${dto.name } |
				작성자 : ${dto.id } |
				등록일 : ${dto.reg_date} |
				
			</FONT>
		
		</tr>

</c:forEach>
   
   
	
  </table>

</div>
</center>

   <!--   <c:if test="${count > 0 }">
    	<c:set var="pageCount" value="${count/pageSize+(count%pageSize == 0 ? 0 : 1) }"/>
    	<c:set var="pageBlock" value="${10}"/>
    	
    	<fmt:parseNumber var="result" value="${currPage / 10 }" integerOnly="true"/>
    	<c:set var="startPage" value="${result * 10 + 1}" />
    	<c:set var="endPage" value="${startPage + pageBlock-1}" />
    	
    	<c:if test="${endPage > pageCount }">
    		<c:set var="endPage" value="${pageCount}"/>
    		</c:if>
    		
    		<c:if test="${StartPage >10 }">
    			<a href="/antman/praiseboard.do?pageNum=${startPage -10 }">[Prev]</a>
    		</c:if>
    		
    		<c:forEach var="i" begin="${startPage }" end="${endPage }">
    			<a href="/antman/praiseboard.do?pageNum=${i}">[${i}]]</a>
    		</c:forEach>
    		
    		<c:if test="${endPage < pageCount }">
    			<a href="/antman/praiseboard.do?pageNum=${startPage + 10 }">[Next]</a>
    		</c:if>
    		
    		</c:if>-->
    
    <!-- 페이징 출력  -->
    	                   
 <center> ${pagingHtml }</center> <!-- 위에방식으로 하려면 귀차너서 그냥 페이징액션을 활용함 왼쪽 pagingHtml 만 출력해주면 됨.. -->

</div></div>
<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>
<script type="text/javascript">
</script>
</body>
    