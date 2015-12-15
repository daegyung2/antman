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
    width:100%;
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
                            <li class="active"><a href="#"><h4>Apply for a home</h4></a></li>
                            <li class="dropdown menu-large">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><h4>의료진/진료과</h4></a>
                                <ul class="dropdown-menu megamenu row">
                                    <li class="col-sm-3">
                                        <ul>
                                            <li><a href="#" class="nav-child">Tenant community</a></li>
                                            <li><a href="#">Central West</a></li>
                                            <li><a href="#">City & East</a></li>
                                            <li><a href="#">Inner West </a></li>
                                            <li><a href="#">Canterbury Bankstown</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-sm-3">
                                        <ul>
                                            <li><a href="#" class="nav-child">Living in my home</a></li>
                                            <li><a href="#">Rent & Payments</a></li>
                                            <li><a href="#">Block Meetings</a></li>
                                            <li><a href="#">Complaints & Appeals</a></li>
                                            <li><a href="#">Neighbour Disputes</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-sm-3">
                                        <ul>
                                            <li><a href="#" class="nav-child">Getting involved</a></li>
                                            <li><a href="#">Building bridges</a></li>
                                            <li><a href="#">TAG</a></li>
                                            <li><a href="#">Tenants workshops</a></li>
                                            <li><a href="#">Aboriginal working group</a></li>
                                            <li><a href="#">Tenant survey</a></li>
                                            <li><a href="#">Your views</a></li>
                                            <li><a href="#">What’s on</a></li>
                                            <li><a href="#">Photos</a></li>
                                            <li><a href="#">Stories</a></li>
                                            <li><a href="#">Community gardens </a></li>
                                        </ul>
                                    </li>
                                    <li class="col-sm-3">
                                        <ul>
                                            <li><a href="#" class="nav-child">I Need Help</a></li>
                                            <li><a href="#">Services</a></li>
                                            <li><a href="#">Housing team</a></li>
                                            <li><a href="#">Jobs</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="#contact"><h4>이용안내</h4></a></li>
                            <li><a href="#contact"><h4>건강정보</h4></a></li>
                            <li><a href="#contact"><h4>웹서비스</h4></a></li>
                            <li><a href="#contact"><h4>의학정보</h4></a></li>
                            <li><a href="#contact"><h4>병원이야기</h4></a></li>
                            <li><a href="#contact" class="last"><h4>병원소개</h4></a></li>

                        </ul>

                        <div class="col-sm-2 col-md-2">
                            <form class="navbar-form" role="search">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search" name="q">
                                    <div class="input-group-btn">
                                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>

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


<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! 
    <title>Vertical Sidebar with Pointy Nav Pills - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        h1 {
    margin-left: 15px;
    margin-bottom: 20px;
}

@media (min-width: 768px) {

    .brand-pills > li > a {
        border-top-right-radius: 0px;
    	border-bottom-right-radius: 0px;
    }
    
    li.brand-nav.active a:after{
    	content: " ";
    	display: block;
    	width: 0;
    	height: 0;
    	border-top: 20px solid transparent;
    	border-bottom: 20px solid transparent;
    	border-left: 9px solid #428bca;
    	position: absolute;
    	top: 50%;
    	margin-top: -20px;
    	left: 100%;
    	z-index: 2;
    }
}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
		<h1>Ipsum</h1>
        <div role="tabpanel">
            <div class="col-sm-3">
                <ul class="nav nav-pills brand-pills nav-stacked" role="tablist">
                    <li role="presentation" class="brand-nav active"><a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab">Lorem ipsum</a></li>
                    <li role="presentation" class="brand-nav"><a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab">Zombie ipsum</a></li>
                    <li role="presentation" class="brand-nav"><a href="#tab3" aria-controls="tab3" role="tab" data-toggle="tab">Gansta ipsum</a></li>
                    <li role="presentation" class="brand-nav"><a href="#tab4" aria-controls="tab4" role="tab" data-toggle="tab">Corporate ipsum</a></li>
                </ul>
            </div>
            <div class="col-sm-9">
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="tab1">
                      
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab2">
                    


                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab3">
                        <p>
                            Lorem ipsizzle dolor away amizzle, consectetuer pizzle elizzle. Nullizzle yo velizzle, check it out volutpizzle, quis, gravida vel, yo.
                            Ma nizzle eget tortor. Sizzle eros. My shizz izzle dolizzle gizzle turpis tempizzle fo shizzle mah nizzle fo rizzle, mah home g-dizzle.
                            Maurizzle pellentesque nibh izzle own yo'. Check it out in tortor. Pellentesque fizzle rhoncizzle nisi. 
                        </p>
                        <p>
                            In hac habitasse platea dictumst. Shizzlin dizzle dapibus. You son of a bizzle tellizzle urna, pretizzle fo shizzle mah nizzle fo rizzle, mah home g-dizzle,
                            ghetto ac, check it out vitae, nunc. Shizzlin dizzle suscipizzle. Integizzle sempizzle velit sizzle dizzle.
                        </p>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab4">
                        <p>
                            Collaboratively administrate empowered markets via plug-and-play networks. 
                            Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without 
                            revolutionary ROI.
                        </p>
                        <p>
                            Efficiently unleash cross-media information without cross-media value. 
                            Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar 
                            solutions without functional solutions.
                        </p>
                        <p>
                            Completely synergize resource sucking relationships via premier niche markets. Professionally cultivate 
                            one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service 
                            for state of the art customer service.
                        </p>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>
<script type="text/javascript">

</script>
</body>
</html>-->

				
				
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>DB Hospital</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        h1.page-header {
    margin-top: -5px;
    

}
   .profile-usertitle-name {
  color: #5a7391;
  font-size: 16px;
  font-weight: 600;
  margin-bottom: 7px;
}

.sidebar {
    padding-left: 0;
}

.main-container { 
    background: #FFF;
    padding-top: 15px;
    margin-top: -20px;
}

.footer {
    width: 100%;
}  

<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Custom Search input - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        #custom-search-input{
    padding: 3px;
    border: solid 1px #E4E4E4;
    border-radius: 6px;
    background-color: #fff;
}

#custom-search-input input{
    border: 0;
    box-shadow: none;
}

#custom-search-input button{
    margin: 2px 0 0 0;
    background: none;
    box-shadow: none;
    border: 0;
    color: #666666;
    padding: 0 8px 0 10px;
    border-left: solid 1px #ccc;
}

#custom-search-input button:hover{
    border: 0;
    box-shadow: none;
    border-left: solid 1px #ccc;
}

#custom-search-input .glyphicon-search{
    font-size: 23px;
}
    </style>
    
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default navbar-static-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">
				Brand
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">			
			<form class="navbar-form navbar-left" method="GET" role="search">
				<div class="form-group">
					<input type="text" name="q" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="http://www.pingpong-labs.com" target="_blank">Visit Site</a></li>
				<li class="dropdown ">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
						Account
						<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li class="dropdown-header">SETTINGS</li>
							<li class=""><a href="#">Other Link</a></li>
							<li class=""><a href="#">Other Link</a></li>
							<li class=""><a href="#">Other Link</a></li>
							<li class="divider"></li>
							<li><a href="#">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
	    			
	<div class="container-fluid main-container">
		<div class="col-md-2 sidebar">
			<ul class="nav nav-pills nav-stacked">
				<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						의료진/진료과
					</div>
					
					<div class="profile-usertitle-job">
						Developer
					</div>
				</div>
				<br/>
				<li class="active"><a href="#">의료진</a></li>
				<li><a href="#">진료과</a></li>
				<li><a href="#">암병원</a></li>
				<li><a href="#">어린이병원</a></li>
				<li><a href="#">심장병원</a></li>
				<li><a href="#">센터</a></li>
				<li><a href="#">클리닉</a></li>
				<li><a href="#">기타</a></li>
			</ul>
		</div>
		
		
		<div class="col-md-10 content">
		
		
		<!DOCTYPE html>
	<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Custom Search input - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        #custom-search-input{
    padding: 3px;
    border: solid 1px #E4E4E4;
    border-radius: 6px;
    background-color: #fff;
}

#custom-search-input input{
    border: 0;
    box-shadow: none;
}

#custom-search-input button{
    margin: 2px 0 0 0;
    background: none;
    box-shadow: none;
    border: 0;
    color: #666666;
    padding: 0 8px 0 10px;
    border-left: solid 1px #ccc;
}

#custom-search-input button:hover{
    border: 0;
    box-shadow: none;
    border-left: solid 1px #ccc;
}

#custom-search-input .glyphicon-search{
    font-size: 23px;
}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
        <div class="col-md-6">
    		<h2>의료진 검색</h2>
            <div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-lg" placeholder="의료진 성명 검색" />
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </div>
        </div>
	</div>
</div>
<script type="text/javascript">

</script>
</body>
</html>
<br/>
	
 <div class="panel panel-default">
 	
       <div class="panel-heading">
          Dashboard
        </div>
        <div class="panel-body">
         Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
    	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        </div>
        </div>
		</div>
		<footer class="pull-left footer">
			<p class="col-md-12">
				<hr class="divider">
				Copyright &COPY; 2015 <a href="http://www.pingpong-labs.com">Gravitano</a>
			</p>
		</footer>
	</div>
<script type="text/javascript">

</script>
</body>
</html>
