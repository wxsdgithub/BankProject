<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Home</title>

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
               <!--  <li class="active">
                    <a href="Home.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>用户管理</p>
                    </a>
                </li> -->
                
                <li>
                    <a href="userInfo.jsp">
                        <i class="pe-7s-user"></i>
                        <p>查看用户</p>
                    </a>
                </li>
                
                <li>
                    <a href="user.jsp">
                        <i class="pe-7s-user"></i>
                        <p>管理员</p>
                    </a>
                </li>
                
				<li class="active-pro">
                    <a href="logout">
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
                       <!--  <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                            </a>
                        </li>      -->                
                        <!-- <li>
                           <a href="#">
                                <i class="fa fa-search"></i>
                            </a>
                        </li> -->
                        <li>
                           	<a class="navbar-brand" href="#">管理员</a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                   		用户中心
                                    <b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">查看所有用户</a></li>
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
		
		
		<!-- <div class="content">
            <div class="container-fluid">
							<div id="container" style="height: 550% " style="width: 100%"></div>
							<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@5/dist/echarts.min.js"></script>
							<script type="text/javascript">
								var dom = document.getElementById("container");
								var myChart = echarts.init(dom);
								var app = {};
								var option;
								option = {
									title: {
										text: '余额波动图' 
									},
									tooltip: {
										trigger: 'axis',
										axisPointer: {
											type: 'cross',
											label: {
												backgroundColor: '#6a7985'
											}
										}
									},
									legend: {
										data: ['余额', '存款', '取款', '转账', '其他']
									},
									toolbox: {
										feature: {
											saveAsImage: {}
										}
									},
									grid: {
										left: '3%',
										right: '4%',
										bottom: '3%',
										containLabel: true
									},
									xAxis: [
										{
											type: 'category',
											boundaryGap: false,
											data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
										}
									],
									yAxis: [
										{
											type: 'value'
										}
									],
									series: [
										{
											name: '余额',
											type: 'line',
											stack: '总量',
											areaStyle: {},
											emphasis: {
												focus: 'series'
											},
											data: [120, 132, 101, 134, 90, 230, 210]
										},
										{
											name: '取款',
											type: 'line',
											stack: '总量',
											areaStyle: {},
											emphasis: {
												focus: 'series'
											},
											data: [220, 182, 191, 234, 290, 330, 310]
										},
										{
											name: '存款',
											type: 'line',
											stack: '总量',
											areaStyle: {},
											emphasis: {
												focus: 'series'
											},
											data: [150, 232, 201, 154, 190, 330, 410]
										},
										{
											name: '转账',
											type: 'line',
											stack: '总量',
											areaStyle: {},
											emphasis: {
												focus: 'series'
											},
											data: [320, 332, 301, 334, 390, 330, 320]
										},
										{
											name: '其他',
											type: 'line',
											stack: '总量',
											label: {
												show: true,
												position: 'top'
											},
											areaStyle: {},
											emphasis: {
												focus: 'series'
											},
											data: [820, 932, 901, 934, 1290, 1330, 1320]
										}
									]
								};

								if (option && typeof option === 'object') {
									myChart.setOption(option);
					}

							</script>
                            
            </div>
        </div> -->
        
        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="index.jsp">
                                	主页
                            </a>
                        </li>
                        <li>
                            <a href="withdrawal.jsp">
                                	取款
                            </a>
                        </li>
                        <li>
                            <a href="deposit.jsp">
                                	存款
                            </a>
                        </li>
                        <li>
                            <a href="transfer.jsp">
									转账
                            </a>
                        </li>
                        <li>
                            <a href="Frozen.jsp">
									申请冻结
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

    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>

	<script src="assets/js/chartist.min.js"></script>

    <script src="assets/js/bootstrap-notify.js"></script>

	<script src="assets/js/light-bootstrap-dashboard.js"></script>

	<script src="assets/js/demo.js"></script>

	<script type="text/javascript">
    	$(document).ready(function(){

        	demo.initChartist();

        	$.notify({
            	icon: 'pe-7s-gift',
            	message: "Welcome to <b>Bank operating system</b> - The banking system that everyone is using."

            },{
                type: 'info',
                timer: 4000
            });

    	});
	</script>

</html>
