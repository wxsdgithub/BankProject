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
	    <div class="sidebar" data-color="blue" data-image="assets/img/sidebar-5.jpg">
	
	
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
	                <li class="active">
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
	                <li>
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
	                           	<a class="navbar-brand" href="#">余额：${money.yuan}元</a>
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
	                                <li><a href="login.jsp">切换用户</a></li>
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
	                <div class="row">
	                    <div class="col-md-8">
	                        <div class="card">
	                            <div class="header">
	                                <h4 class="title">用户信息</h4>
	                            </div>
	                            <div class="content">
	                                <form action="DepositServlet" method="post">
	                                    
	                                    <div class="row">
	                                        <div class="col-md-12">
	                                            <div class="form-group">
	                                                <label>用户名</label>
	                                                <input type="text" class="form-control" placeholder="userName" name="uName" id="textfield" value="${user.username}">
	                                            </div>
	                                        </div>
	                                    </div>
	
	                                    <div class="row">
	                                        <div class="col-md-12">
	                                            <div class="form-group">
	                                                <label>存入金额</label>
	                                                <input type="text" class="form-control" placeholder="输入你要存入的金额"  name="money" id="textfield">
	                                            </div>
	                                        </div>
	                                    </div>
	
	                                    <!-- <div class="row">
	                                        <div class="col-md-4">
	                                            <div class="form-group">
	                                                <label>现居住城市</label>
	                                                <input type="text" class="form-control" placeholder="City" value="深圳">
	                                            </div>
	                                        </div>
	                                        <div class="col-md-4">
	                                            <div class="form-group">
	                                                <label>所属国家</label>
	                                                <input type="text" class="form-control" placeholder="Country" value="中国">
	                                            </div>
	                                        </div>
	                                        <div class="col-md-4">
	                                            <div class="form-group">
	                                                <label>邮政编码</label>
	                                                <input type="number" class="form-control" placeholder="邮政编码是六位数哦~" >
	                                            </div>
	                                        </div>
	                                    </div> -->
	
	                                    <button type="submit" class="btn btn-info btn-fill pull-right">存入</button>
	                                    <div class="clearfix"></div>
	                                </form>
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
	
		<script type="text/javascript">
	    	$(document).ready(function(){
	
	        	demo.initChartist();
	
	        	$.notify({
	            	icon: 'pe-7s-gift',
	            	message: "${message}"
	            },{
	                type: 'info',
	                timer: 4000
	            });
	
	    	});
		</script>
		
	</html>
