<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <script language="JavaScript">
    function openUpdate(list){   
    	if(list.bid.value == 0){
    		alert("등록 번호가 없습니다.");
    		return;
    	}
        url = "updateBody_part.do?bid=" + list.bid.value;
        
        open(url,"confirm","toolbar=no,location=no,status=no,width=300,height=200,menuber=no");
        }
    
    </script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>신체부위 목록</title>
</head>
<body>

<table border="1">
<tr><td>신체 부위</td><td>기타</td></tr>
<form name="list">
<c:forEach var="dto" items="${list }" >
<tr><td><input type="hidden" name="bid" id="bid" value="${dto.bid }" />${dto.name }</td>
<td><input type="button" value="수정하기" id="update" onClick="openUpdate(this.form)" /></td></tr>
</c:forEach>
</form>
<tr>
<td colspan="2"><input type="button" value="입력하기" onClick="window.location='/antman/insertBody_part.do'" />
</td>
</tr>
</table>

</body>
</html>