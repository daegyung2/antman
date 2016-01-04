<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table width="1400" border="0">
<tr>
<td width="200">
<jsp:include page="d_mypage_sidebar.jsp" flush="true | false"/>
</td>


<td width="1200" >


  <h2>${sessionScope.memname }님 칭찬글 입니다.</h2>  
       

  
  <form action="/antman/praisewrite.do" method="post">
 
 <table width="1000" border="1">
      <tr>
       <td>번호</td>
	   <td>내용</td>
      </tr>
   	  <c:forEach var="dto" items="${list}">
	   <tr>
		<td ><h3>${dto.pid}</h3></td>
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

</div>


    	                   
 <center> ${pagingHtml }</center> <!-- 위에방식으로 하려면 귀차너서 그냥 페이징액션을 활용함 왼쪽 pagingHtml 만 출력해주면 됨.. -->





</td>
</tr>
</table>
