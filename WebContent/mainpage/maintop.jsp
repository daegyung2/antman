<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>BS3 Mega Menu - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        /* Mega Menu */

.navbar-default{
    color: #fff;
    background-color: #ccc6c6;
    border-color: #aca1a2;
}
.navbar-default .navbar-nav > li > a{
    color:#fff;
}
.navbar-default .navbar-nav > .dropdown > a .caret{
    border-top-color: #fff;
    border-bottom-color: #fff;
}
.navbar-default .navbar-brand{
    color:#fff;
}
.menu-large {
    position: static !important;
}
.megamenu{
    padding: 20px 0px;
    width:40%;
}
.megamenu> li > ul {
    padding: 0;
    margin: 0;
}
.megamenu> li > ul > li {
    list-style: none;
}
.megamenu> li > ul > li > a {
    display: block;
    padding: 3px 20px;
    clear: both;
    font-weight: normal;
    line-height: 1.428571429;
    color: #333333;
    white-space: normal;
}
.megamenu> li ul > li > a:hover,
.megamenu> li ul > li > a:focus {
    text-decoration: none;
    color: #262626;
    background-color: #f5f5f5;
}
.megamenu.disabled > a,
.megamenu.disabled > a:hover,
.megamenu.disabled > a:focus {
    color: #999999;
}
.megamenu.disabled > a:hover,
.megamenu.disabled > a:focus {
    text-decoration: none;
    background-color: transparent;
    background-image: none;
    filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
    cursor: not-allowed;
}
.megamenu.dropdown-header {
    color: #428bca;
    font-size: 18px;
}
@media (max-width: 768px) {
    .megamenu{
        margin-left: 0 ;
        margin-right: 0 ;
    }
    .megamenu> li {
        margin-bottom: 30px;
    }
    .megamenu> li:last-child {
        margin-bottom: 0;
    }
    .megamenu.dropdown-header {
        padding: 3px 15px !important;

    }
    .navbar-nav .open .dropdown-menu .dropdown-header{
        color:#fff;
    }
}


/*
 * Dropdown on hover 
 */

@media (min-width:480px) {

    .dropdown:hover .dropdown-menu {
        display: block;
    }

}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container nav-container">

            <!-- Static navbar -->
            <div class="navbar navbar-static-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!--          <a class="navbar-brand" href="#">Project name</a>-->
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#"><h4>DB hospital</h4></a></li>
                            <li class="dropdown menu-large">
                                <a href="/antman/treatmentsearch.do" class="dropdown-toggle" data-toggle="dropdown"><h4>의료진/진료과</h4></a>
                                <ul class="dropdown-menu megamenu row">
                                    <li class="col-sm-6">
                                        <ul>
                                            <li><a href="/antman/treatmentsearch.do" class="nav-child">의료진</a></li>
                                            <li><a href="/antman/treatmentchoice.do?p_depart_id=1">진료과</a></li>
                                            <li><a href="/antman/treatmentchoice.do?p_depart_id=3">암병원</a></li>
                                            <li><a href="/antman/treatmentchoice.do?p_depart_id=4">어린이병원</a></li>
                                            <li><a href="/antman/treatmentchoice.do?p_depart_id=5">심장병원</a></li>
                                            <li><a href="/antman/treatmentchoice.do?p_depart_id=6">센터</a></li>
                                            <li><a href="/antman/treatmentchoice.do?p_depart_id=7">클리닉</a></li>
                                            <li><a href="/antman/treatmentchoice.do?p_depart_id=8">기타</a></li>
                                        </ul>
                                    </li>
                                   
                                </ul>
                            </li>
                              
                                                          <li class="dropdown menu-large">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><h4>이용안내</h4></a>
                                <ul class="dropdown-menu megamenu row">
                                    <li class="col-sm-6">
                                        <ul>
                                            <li><a href="#" class="nav-child">병원안내</a></li>
                                         
                                            <li><a href="#">외래진료안내</a></li>
                                            <li><a href="#">응급진료안내</a></li>
                                            <li><a href="#">입원진료안내</a></li>
                                            <li><a href="#">가정간호안내</a></li>
                                            <li><a href="#">검사실안내</a></li>
                                         
                                        </ul>
                                    </li>
                                   
                                </ul>
                            </li>
                           
                             <li class="dropdown menu-large">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><h4>건강정보</h4></a>
                                <ul class="dropdown-menu megamenu row">
                                    <li class="col-sm-6">
                                        <ul>
                                            <li><a href="#" class="nav-child">병원안내</a></li>
                                         
                                            <li><a href="#">건강정보</a></li>
                                     
                                         
                                        </ul>
                                    </li>
                                   
                                </ul>
                            </li>                          
                            
                                     <li class="dropdown menu-large">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><h4>웹서비스</h4></a>
                                <ul class="dropdown-menu megamenu row">
                                    <li class="col-sm-6">
                                        <ul>
                                            <li><a href="#" class="nav-child">발급안내</a></li>
                                         
                                            <li><a href="#">고객서비스</a></li>
                                     
                                         
                                        </ul>
                                    </li>
                                   
                                </ul>
                            </li>  
                            
                                     <li class="dropdown menu-large">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><h4>의학교육</h4></a>
                                <ul class="dropdown-menu megamenu row">
                                    <li class="col-sm-6">
                                        <ul>
                                            <li><a href="#" class="nav-child">학술행사일정</a></li>
             
                                            <li><a href="#">학술영상다시보기</a></li>
                                     
                                         
                                        </ul>
                                    </li>
                                   
                                </ul>
                            </li>  
                            
                                           <li class="dropdown menu-large">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><h4>병원소개</h4></a>
                                <ul class="dropdown-menu megamenu row">
                                    <li class="col-sm-6">
                                        <ul>
                                            <li><a href="#" class="nav-child">재단소개</a></li>
             
                                            <li><a href="#">병원소개</a></li>
                                     		<li><a href="#">소식</a></li>
                                     		<li><a href="#">정기간행물</a></li>
                                     		<li><a href="#">병원소개</a></li>
                                     		<li><a href="#">교육장안내</a></li>
                                         
                                        </ul>
                                    </li>
                                   
                                </ul>
                            </li>  
                                   
                            <!-- <li><a href="#contact"><h4>이용안내</h4></a></li> -->
                          <!--   <li><a href="#contact"><h4>건강정보</h4></a></li> -->
           <!--                  <li><a href="#contact"><h4>웹서비스</h4></a></li>
                            <li><a href="#contact"><h4>의학정보</h4></a></li>
                            <li><a href="#contact"><h4>병원이야기</h4></a></li>
                            <li><a href="#contact" class="last"><h4>병원소개</h4></a></li> -->

                        </ul>


                        <ul class="nav navbar-nav navbar-right hidden-sm hidden-md hidden-lg">
                            <li><a href=""><i class="fa fa-lock"></i>
                                    Tenant login</a></li>

                        </ul>

                    </div><!--/.nav-collapse -->
                </div>
            </div>

        </div>
<script type="text/javascript">
jQuery(document).ready(function(){
    $(".dropdown").hover(
        function() { $('.dropdown-menu', this).stop().fadeIn("fast");
        },
        function() { $('.dropdown-menu', this).stop().fadeOut("fast");
    });
});
</script>
</body>
</html>

<input type="submit" value="로그인">