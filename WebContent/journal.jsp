<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title></title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="bule" data-image="assets/img/sidebar-5.jpg">

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="Home.jsp" class="simple-text">
                    	银行操作系统
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="Home.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>主页</p>
                    </a>
                </li>
                <li>
                    <a href="user.jsp">
                        <i class="pe-7s-user"></i>
                        <p>账户</p>
                    </a>
                </li>
                <li>
                    <a href="withdrawal.jsp">
                        <i class="pe-7s-note2"></i>
                        <p>取款</p>
                    </a>
                </li>
                <li>
                    <a href="deposit.jsp">
                        <i class="pe-7s-news-paper"></i>
                        <p>存款</p>
                    </a>
                </li>
                <li>
                    <a href="transfer.jsp">
                        <i class="pe-7s-science"></i>
                        <p>转账</p>
                    </a>
                </li>
                <li class="active">
                    <a href="journal.jsp">
                        <i class="pe-7s-bell"></i>
                        <p>日志</p>
                    </a>
                </li>
				<li class="active-pro">
                    <a href="logout.jsp">
                        <i class="pe-7s-rocket"></i>
                        <p>退出系统</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">主页</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                            </a>
                        </li>                     
                        <li>
                           <a href="#">
                                <i class="fa fa-search"></i>
                            </a>
                        </li>
                        <li>
                           	<a class="navbar-brand" href="#">余额：${man.inquiry()}</a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                   		用户中心
                                    <b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">个人中心</a></li>
                                <li><a href="#">系统设置</a></li>
                                <li><a href="#">高级设置</a></li>
                                <li class="divider"></li>
                                <li><a href="#">切换用户</a></li>
                              </ul>
                        </li>
                        <li>
                            <a href="logout.jsp">
                               	 注销
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
		


        <div class="content">
            <div class="container-fluid">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Notifications</h4>
                        <p class="category">Handcrafted by our friend <a target="_blank" href="https://github.com/mouse0270">Robert McIntosh</a>. Please checkout the <a href="http://bootstrap-notify.remabledesigns.com/" target="_blank">full documentation.</a></p>

                    </div>
                    <div class="content">
                        <div class="row">
                            <div class="col-md-6">
                                <h5>Notifications Style</h5>
                                <div class="alert alert-info">
                                    <span>1</span>
                                </div>
                                <div class="alert alert-info">
                                    <button type="button" aria-hidden="true" class="close">×</button>
                                    <span>2</span>
                                </div>
                                <div class="alert alert-info alert-with-icon" data-notify="container">
                                    <button type="button" aria-hidden="true" class="close">×</button>
                                    <span data-notify="icon" class="pe-7s-bell"></span>
                                    <span data-notify="message">3</span>
                                </div>
                                <div class="alert alert-info alert-with-icon" data-notify="container">
                                    <button type="button" aria-hidden="true" class="close">×</button>
                                    <span data-notify="icon" class="pe-7s-bell"></span>
                                    <span data-notify="message">4</span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <h5>Notification states</h5>
                                <div class="alert alert-info">
                                    <button type="button" aria-hidden="true" class="close">×</button>
                                    <span><b> 5 - </b> This is a regular notification made with ".alert-info"</span>
                                </div>
                                <div class="alert alert-success">
                                    <button type="button" aria-hidden="true" class="close">×</button>
                                    <span><b> 6 - </b> This is a regular notification made with ".alert-success"</span>
                                </div>
                                <div class="alert alert-warning">
                                    <button type="button" aria-hidden="true" class="close">×</button>
                                    <span><b> 7 - </b> This is a regular notification made with ".alert-warning"</span>
                                </div>
                                <div class="alert alert-danger">
                                    <button type="button" aria-hidden="true" class="close">×</button>
                                    <span><b> 8 - </b> This is a regular notification made with ".alert-danger"</span>
                                </div>
                            </div>
                        </div>
                        <br>
                        <br>
                        <div class="places-buttons">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3 text-center">
                                    <h5>Notifications Places
                                        <p class="category">Click to view notifications</p>
                                    </h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2 col-md-offset-3">
                                    <button class="btn btn-default btn-block" onclick="demo.showNotification('top','left')">Top Left</button>
                                </div>
                                <div class="col-md-2">
                                    <button class="btn btn-default btn-block" onclick="demo.showNotification('top','center')">Top Center</button>
                                </div>
                                <div class="col-md-2">
                                    <button class="btn btn-default btn-block" onclick="demo.showNotification('top','right')">Top Right</button>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2 col-md-offset-3">
                                    <button class="btn btn-default btn-block" onclick="demo.showNotification('bottom','left')">Bottom Left</button>
                                </div>
                                <div class="col-md-2">
                                    <button class="btn btn-default btn-block" onclick="demo.showNotification('bottom','center')">Bottom Center</button>
                                </div>
                                <div class="col-md-2">
                                    <button class="btn btn-default btn-block" onclick="demo.showNotification('bottom','right')">Bottom Right</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
	<footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="index.html">
                                	主页
                            </a>
                        </li>
                        <li>
                            <a href="withdrawal.html">
                                	取款
                            </a>
                        </li>
                        <li>
                            <a href="deposit.html">
                                	存款
                            </a>
                        </li>
                        <li>
                            <a href="transfer.html">
									转账
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    Copyright &copy; 2017.Company name All rights reserved.
                </p>
            </div>
        </footer>
	

    </div>
</div>


</body>

        <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <!---<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>--->

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets/js/light-bootstrap-dashboard.js"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>

</html>
