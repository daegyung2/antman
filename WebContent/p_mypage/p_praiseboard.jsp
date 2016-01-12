<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

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
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65); text-align:center; }
	#container .main td{padding:5px 5px 5px 5px; }
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<div id="side">
	<jsp:include page="/p_mypage/p_mypage_sidebar.jsp" flush="true | false"/>
</div>


<div id="container">
	<div class="main"><br/><br/>
		<div id="title"><center><h2>���� Ī�� ���� </h2></center></div>

  <div>
   
  <c:if test="${sessionScope.memauth eq 'P'}">
  <form action="/antman/p_praisewrite.do" method="post">
  <center><button type="submit" class="btn btn-primary btn-md" onclick=>Ī���ϱ�</button></center>
  </form>
  </c:if>
   Ī���Ϸ��� �α����� ���ּ���!
  <br/><br/>
  <table width="900" align="center" border="1">
    <thead>
      <tr>
       <th data-field="id" >��ȣ</th>
	<th data-field="name">����</th>
      </tr>
    </thead>
   <input type="hidden" name="pid" value="${dto.pid}"/>
   
                <c:forEach var="dto" items="${list}" >
                
		<tr>
			
		     <td><h3>${dto.pid}</h3></td>
			 <td><h3><a href="/antman/p_praisecontent.do?pid=${dto.pid}&name=${dto.name}&id=${dto.id}">${dto.subject}</a></h3>
				${dto.content } <br/>
				<FONT size="2">
				�۾��� : ${dto.name } |
				�ۼ��� : ${dto.id } |
				����� : ${dto.reg_date} |
				
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
    
    <!-- ����¡ ���  -->
    	                   
 <center> ${pagingHtml }</center> <!-- ����������� �Ϸ��� �����ʼ� �׳� ����¡�׼��� Ȱ���� ���� pagingHtml �� ������ָ� ��.. -->

<script type="text/javascript">
</script>
</body>
    