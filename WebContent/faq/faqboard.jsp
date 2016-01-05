<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" >
<head>
<title>FAQ | 자주하는질문</title>

<style type="text/css">
	body, ul, li, div{margin:0px; padding:0px; }
	ul{list-style:none;}
	body{font-size:12px; line-height:1.4; }
	a{text-decoration:none; }
	
	#menutop{width:100%; height:150px; }
	#side{width:200px; float:left; margin-left:0px; }
	
	.container {width:1000px; height:1200px; margin:0 auto; margin-left:220px; position:relative;}
	.container .content{width:800px; height:1200px; margin-left:100px;}
	.container .content h2{text-align:center; font-size:25px; margin-top:20px;}
	.container .content p{text-align:center; font-size:15px; margin-top:5px; margin-right:40px; float:right;}
	
	.container .main{width:800px; height:1000px; margin-top:5px; }
	.tabset{width:800px; height:1000px; margin:20px auto; padding:5px; border:1px solid #333;  }
	.tabset .tabs{padding:0px 0px; overflow:hidden; margin-left:4px;}
	.tabset .tabs li{float:left; margin-right:3px;}
	.tabset .tabs li a{display:block; background:#5586EB; color:#FFFFFF; padding:15px 53px; font-weight:bold; }
	.tabset .tabs li a.on{border:1px solid #DBDBDB; background:#FFFFFF; color:#333;}
	.tabset .panels div{width:750px; height:900px; padding:12px 15px 6px; margin-left:10px; margin-top:20px; align:center; border:1px solid #333;}
	.tabset .panels div .sub{width:750px; height:70px; border:1px solid #333; }
	.tabset .panels div .sub #category{width:315px; height:70px; margin-left:10px; position:relative;}
	.tabset .panels div .sub #title{width:315px; height:70px; margin-left:335px; position:relative;}
</style>

<script type="text/javascript" src="/antman/js/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-1.9.0rc1.js"></script>
<script type="text/javascript">
$(function(){
	var tabDiv = $('.tabset');
	var anchors =  tabDiv.find('ul.tabs a');
	var penels = tabDiv.find('div.panels div');
	penels.hide();
	var currentAnchor = anchors.filter('.on'); 
	/* selector중에서 (~)적용되는 개체 찾기 */
	var currentPanel = $(currentAnchor.attr('href'));
	currentPanel.show();
	
	anchors.click(function(event){
		event.preventDefault(); /* 해당 이벤트 기본동작 해제(방지) */
		var newAnchor = $(this);
		/* 클릭되는 a를 새로운 선택개체(newAnchor)로 지정 */
		var newPanel = $(newAnchor.attr('href'));
		/* 새로운 선택개체의href값을 호출해서 새로운panel 지정 */
		currentAnchor.removeClass('on');
		/* 기존에 선택된 a에서 on클래스를 지워서 회색배경으로 처리 */
		newAnchor.addClass('on');
		/* 새로운 선택a에 on클래서 적용해서 흰색배경으로 처리 */
		currentPanel.hide();
		/* 현재 보여지고 있는 panel 가리기 */
		newPanel.show();
		/* 새롭게 정의된 panel을 보이기 */
		currentAnchor = newAnchor;
		/* 현재선택된 a를 새로 클릭한 a값으로 정의 */
		currentPanel = newPanel;
		/* 현재 보여지고 있는 panel을 새롭게 정의된 panel값으로 정의 */
	})
})

	var isAnswerOpened = false;
	var openAnswerId = 0;
	function clickSubject(str){
		if ( openAnswerId != str ) {
			//이미 열린 다른 답변 숨기기
			$('.viewAaqContent').attr("style","display:none");
			//현재 활성화되어있는 질문 분류를 비활성화 시키기
			$('.qstOn').attr("class","qstOff");
			//현재 활성화되어있는 답변을 비활성화 시키기
			$('.faqOpen').attr("class","faqClose");

			isAnswerOpened = false;
		}

		//현재 클릭한 질문의 답변 보이기
		if (isAnswerOpened == false) {

			fnPost(
					"/asan/custom/faq/faqDownload.do",
					{faqId : str},
					function(data) {
					}
			);

			//현재 클릭한 질문의 답변 보이기
			$('#tr' + str).removeAttr("style");
			//현재 클릭한 질문의 분류를 활성화 시키기
			$('#counselName'+str).attr("class","qstOn");
			//현재 클릭한 질문의 답변을 활성화 시키기
			$('#counselSubject'+str).attr("class","faqOpen");

			isAnswerOpened = true;
			openAnswerId = str;
		} else {
			//이미 열린 다른 답변 숨기기
			$('.viewAaqContent').attr("style","display:none");
			//$('#tr' + str).attr("style","display:none");
			//현재 활성화되어있는 질문 분류를 비활성화 시키기
			$('.qstOn').attr("class","qstOff");
			//현재 활성화되어있는 답변을 비활성화 시키기
			$('.faqOpen').attr("class","faqClose");

			isAnswerOpened = false;
			openAnswerId = 0;
		}
	}
	
</script>

</head>
<body>
<script type="text/javascript"></script>   

<div id="menutop">
	<jsp:include page="/webservice/webtop.jsp" flush="true | false"/>
</div>

<!-- container 시작 -->
<div id="side">
	<jsp:include page="/webservice/websidebar.jsp" flush="true | false"/>
</div>

<div class="container">
	<div class="content">
	<h2>자주하는질문</h2>
	<p><b>총 <font color="#5586EB">${Count}건</font>입니다.</b></p>
	<form action="/antman/faqwrite.do" method="post">
  	<button type="submit" class="btn btn-primary btn-md" onclick=>질문등록하기</button>
  	</form>                    
	<br/>
	<div class="main">
		<div class="tabset">
    		<ul class="tabs">
        	<li><a href="#panel01" class="on">전체</a></li>
        	<li><a href="#panel02">원무정보</a></li>
        	<li><a href="#panel03">진료관련</a></li>
        	<li><a href="#panel04">병원이용</a></li>
        	<li><a href="#panel05">홈페이지 이용</a></li>
        	</ul>   
     	<div class="panels">
    		<div id="panel01">   		
    			<table cellpadding="0" cellspacing="0" border="0" width="100%" class="tableLayout" border="1" >
					<colgroup>
						<col width="150px" />
						<col width="600px" />
					</colgroup>
					<thead>
						<tr>
							<th scope="col" class="bgLine">분류</th>
							<th scope="col">제목</th>
						</tr>
					</thead>
			<c:forEach var="dto" items="${list}">
					<tbody>
						<tr>
							<td class="leftTd"><span>${dto.category}</span></td>
							<td class="titleTd"><a href="#answer2" class="faqClose" id="counselSubject518" onclick="clickSubject('518'); return false;">${dto.subject}</a></td>
						</tr>
						<tr style="display:block " id="tr518" class="viewAaqContent">
							<tr><td class="answer" id="answer2" colspan="2" align="center" color="#10620A">
							<font color="#FF00DD">
							${dto.content}
							</font>
    						</td>
						</tr>
						<tr>
						<td colspan="2">
						<center>
						<button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/faqupdate.do?fid=${dto.fid}'">수정하기</button>
						<button type="button" class="btn btn-primary btn-md" onclick="javascript:window.location='/antman/faqdelete.do?fid=${dto.fid}'">삭제하기</button> 
  						</center>
  						</td>
						</tr>
					</tbody>
			</table>
			</c:forEach>	
        	</div>
        	<div id="panel02">test2
        		
        	</div>
        	<div id="panel03">test3
        		
        	</div>
        	<div id="panel04">test4
        		
        	</div>
        	<div id="panel05">test5
        		
        	</div>
    	</div>
    	</div>
	</div>
	
	</div>
</div>				
				
${pagingHtml }
</body>
</html>