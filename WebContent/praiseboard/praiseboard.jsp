<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>

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

<!-- container 시작 -->
<div id="side">
	<jsp:include page="/webservice/websidebar.jsp" flush="true | false"/>
</div>
  <div>
  <center>
  <h2>칭찬합시다 </h2>  
       
  <br/>
  칭찬은 하는 사람과 받는 사람, 모두를 즐겁게 합니다.<br/>
하나의 칭찬이 또 다른 칭찬을 만들어 갈 수 있도록<br/>
친절함이 돋보인 직원을 칭찬해 주세요.              <br/>                     
  <br/>
  
  <c:if test="${sessionScope.memauth eq 'P'}">
  <form action="/antman/praisewrite.do" method="post">
  <button type="submit" class="btn btn-primary btn-md" onclick=>칭찬하기</button>
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
   
                <c:forEach var="dto" items="${list}">
		<tr>
		     <td ><h3>${dto.pid}</h3></td>
			 <td ><h3><a href="/antman/praisecontent.do?pid=${dto.pid}">${dto.subject}</a></h3>
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

<script type="text/javascript">
</script>
</body>
</html>