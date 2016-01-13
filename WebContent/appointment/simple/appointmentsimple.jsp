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
	#top{width:200px; float:top; margin-left:100px; }
	.container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	.container .sub{width:800px; height:50px; margin-left:80px; top:0px; position:relative;}
	.container .sub b{font-size:22px; color:#000000;}
	.container .main{width:1000px; height:1100px; margin-left:50px; top:30px; position:relative;}
    body{margin:0px; padding:0px; }
	a{ text-decoration:none; }
	ul{ list-style:none; margin:0px; padding:0px; }
	li{ margin:0px; padding:0px; }
	
	
	#side{width:200px; float:left; margin-left:0px;}
	#container{width:1100px; height:1200px; margin:0 auto;  margin-left:230px; position:relative;}
	#container .main{width:1000px; height:1100px; margin-left:50px; margin-top:-17px; position:relative}
	#container .main #title{width:800px; margin-left:0px; text-align:left;}
	#container .main table{border:1px solid #BDBDBD;  border-collapse:collapse; border-top:2px solid #5586EB; }
	#container .main tr{padding:5px 5px;}
	#container .main th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
	#container .main td{padding:5px 5px 5px 5px;}
</style>

<div id="menutop">
	<jsp:include page="/mainpage/main_top.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->
<div id="side">
	<jsp:include page="/appointment/appointmentsidebar.jsp" flush="true | false"/>
</div>

<div id="container">
	<div class="main">
		<div id="title">

 <h2>첫방문 고객 간편 진료예약 서비스</h2>
       
    <h4>아래 사항을 입력해주시면, 상담 간호사가 확인 후 상담 시간내에 전화를 드려 예약을 도와드리겠습니다.</h4>
    <br/>
    
    <h5>상담시간 : 평일 08:30 ~ 17:30 / 토요일 08:30 ~ 12:30(공휴일 제외)<br/>
※ 상담 전화 연결 3회 이상 실패 시 간편예약접수가 자동으로 취소 되오니, 이점 양해하여 주시기 바랍니다.</h5>
<br/>
<br/>
<link href="style.css" rel="stylesheet" type="text/css">

<script language="JavaScript">
    
var pattern1 = /[0-9]/; // 숫자만 입력
var pattern2 = /[a-zA-Z]/; // 문자만 입력
var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자 입력
var pattern4 = /[0-9a-zA-Z.;\-]/;   // 문자+숫자+특문  가능한 정규식

    function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.phone1.value  || !userinput.phone2.value || !userinput.phone3.value )
        {
            alert("전화번호를 입력하세요");
            return false;
        }else if(!userinput.symptom.value ){
        	
            alert("증상을 입력하세요");
            return false;
        }
        }
       
    </script>
<form action="/antman/appointmentsimplepro.do" method="post" name="userinput"  onSubmit="return checkIt()">
<input type="hidden" name="jumin1" value="${jumin1 }"/>
<input type="hidden" name="jumin2" value="${jumin2 }"/>
<input type="hidden" name="name" value="${name}"/>
<input type="hidden" name="id" value="${sessionScope.memId}"/>
<table width="900" border="1">

<tr>
<td width="500">성명</td><td width="400">${sessionScope.memname}</td></tr>
<tr>
<td width="500">휴대전화</td><td width="400">
<input type="text" name="phone1" maxlength="3">-<input type="text" name="phone2" maxlength="4">-<input type="text" name="phone3" maxlength="4">
</td>
</tr>
<tr>
<td width="500">주요증상</td><td width="400">
<TEXTAREA name="symptom" rows="5" cols="100" placeholder="증상을 입력해주세요"></TEXTAREA><BR/>
* 0 byte / 최대 200 byte(한글 100자, 영문 200자)
</td>
</tr>
<tr>
<td width="500">남기고 싶은말</td><td width="400">
<TEXTAREA name="talk" rows="5" cols="100" placeholder="남기고싶은말을 입력해주세요" ></TEXTAREA><BR/>
* 0 byte / 최대 200 byte(한글 100자, 영문 200자)
</td>
</tr>

</table>
<br/>

<input type="submit" value="확인"/><input type="button" value="취소"/>


</form>
</div>
</div>
</div>

<div id="footer">
	<jsp:include page="/webservice/footer.jsp" flush="true | false"/>
</div>
