<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


	<jsp:include page="/treatmentteam/treatmentteamtop.jsp" flush="true | false"/>
<br/>
<br/>
<br/>
<br/>
<br/>

<br/>
<br/><br/>


<h2>답변등록</h2>


<form action="/antman/MyQnA_AnswerPro.do">
<textarea size="50" rows="5" cols="50" name="answer"></textarea>
&nbsp;<input type="submit" value="등록">
<input type="text" name="qid" value="${dto.getQid}">

</form>

</div></div>

