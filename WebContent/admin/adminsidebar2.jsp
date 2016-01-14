<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<style type="text/css">
   body{margin:0px; padding:0px; }
   a{ text-decoration:none; }
   ul{ list-style:none; margin:0px; padding:0px; }
   li{ margin:0px; padding:0px; }
   
   .sidebar{width:200px; height:1750px; float:left; margin-left:35px; top:95px; position:absolute; border:1px solid #BDBDBD; border-top:1px solid transparent; border-bottom:1px solid transparent;}
   .sidebar #sidebar_top{ width:200px; height:120px; font-size:22px; margin-top:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD; text-align:center;}
   .sidebar #sidebar_top b{padding-right:0px;}
   .sidebar #sidebar_top a{text-decoration:none; color:#5586EB;}
   .sidebar #sidebar_top th{padding:5px 5px; color:#5586EB; background:rgba(233,233,233,0.65);}
   #nav{width:200px; margin:30px auto; text-indent:10px; float:left; margin-top:25px; margin-bottom:25px; border-top:1px solid #BDBDBD; border-bottom:1px solid #BDBDBD;}
   #nav .title{display:block; height:50px; line-height:3em; font-size:17px; background:#FFFFFF; color:#000000; text-align:center; padding-right:10px; border-top:1px solid #BDBDBD; z-index:300;}
   #nav .title:hover{text-decoration:underline; }
   #nav li.on{background:#5586EB;}
   #nav li.on a{font-weight:bold; color:#FFFFFF; }
   #nav li:first-child a.title{border-top:none;}
   
</style>

<div class="sidebar">
   <div id="sidebar_top" >
      <td><h3>관리자</h3><font size="4"></font><font color="#5586EB"><b>${sessionScope.memId}</b></font></td>
   </div>
<ul id="nav">
   <li><a href="#" class="title">관리자모드</a></li>
   <li><a href="/antman/adminmain.do?drid=${sessionScope.memdrid }&drname=${sessionScope.memname}" class="title">최근업데이트항목</a></li>
   <li><a href="/antman/doctorList.do" class="title">의사등록</a></li>
   <li><a href="/antman/employeeList.do" class="title">직원등록</a></li>
   <li><a href="/antman/departmentList.do" class="title">부서등록</a></li>
   <li><a href="/antman/p_departmentList.do" class="title">상위부서등록</a></li>
   <li><a href="/antman/memberinfo.do" class="title">가입자통계</a></li>
   <li><a href="/antman/appointinfo.do" class="title">예약통계</a></li>
   <li><a href="/antman/doctorinfo.do" class="title">스케쥴통계</a></li>
   <li><a href="/antman/resultinfo.do" class="title">의료결과통계</a></li>
   
   
  
   
</ul>
</div>