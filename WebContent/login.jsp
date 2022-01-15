	
	<%@ page language="java" contentType="text/html; charset=UTF-8" %>
	<html lang="zh-CN">
	<head>
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Bank Login Interface</title>

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
	<style>
	    *, *:before, *:after {
	    box-sizing: border-box;
	    margin: 0;
	    padding: 0;
	}
	
	body {
	    font-family: 'Open Sans', Helvetica, Arial, sans-serif;
	    background: #ededed;
	}
	
	input, button {
	    border: none;
	    outline: none;
	    background: none;
	    font-family: 'Open Sans', Helvetica, Arial, sans-serif;
	}
	
	.tip {
	    font-size: 20px;
	    margin: 40px auto 50px;
	    text-align: center;
	}
	
	.content {
	    overflow: hidden;
	    position: absolute;
	    left: 50%;
	    top: 50%;
	    width: 900px;
	    height: 550px;
	    margin: -300px 0 0 -450px;
	    background: #FFFFFF;
	}
	
	.form {
	    position: relative;
	    width: 640px;
	    height: 100%;
	    transition: -webkit-transform 0.6s ease-in-out;
	    transition: transform 0.6s ease-in-out;
	    transition: transform 0.6s ease-in-out, -webkit-transform 0.6s ease-in-out;
	    padding: 50px 30px 0;
	}
	
	.sub-cont {
	    overflow: hidden;
	    position: absolute;
	    left: 640px;
	    top: 0;
	    width: 900px;
	    height: 100%;
	    padding-left: 260px;
	    background: #fff;
	    transition: -webkit-transform 0.6s ease-in-out;
	    transition: transform 0.6s ease-in-out;
	    transition: transform 0.6s ease-in-out, -webkit-transform 0.6s ease-in-out;
	}
	
	.content.s--signup .sub-cont {
	    -webkit-transform: translate3d(-640px, 0, 0);
	    transform: translate3d(-640px, 0, 0);
	}
	
	button {
	    display: block;
	    margin: 0 auto;
	    width: 260px;
	    height: 36px;
	    border-radius: 30px;
	    color: #fff;
	    font-size: 15px;
	    cursor: pointer;
	}
	
	.img {
	    overflow: hidden;
	    z-index: 2;
	    position: absolute;
	    left: 0;
	    top: 0;
	    width: 260px;
	    height: 100%;
	    padding-top: 360px;
	}
	
	.img:before {
	    content: '';
	    position: absolute;
	    right: 0;
	    top: 0;
	    width: 900px;
	    height: 100%;
	    /* 更换小窗口背景图片 */
	    background-image: url(./image/login.jpg);
	    background-size: cover;
	    transition: -webkit-transform 0.6s ease-in-out;
	    transition: transform 0.6s ease-in-out;
	    transition: transform 0.6s ease-in-out, -webkit-transform 0.6s ease-in-out;
	}
	
	.img:after {
	    content: '';
	    position: absolute;
	    left: 0;
	    top: 0;
	    width: 100%;
	    height: 100%;
	    background: rgba(0, 0, 0, 0.6);
	}
	
	.content.s--signup .img:before {
	    -webkit-transform: translate3d(640px, 0, 0);
	    transform: translate3d(640px, 0, 0);
	}
	
	.img__text {
	    z-index: 2;
	    position: absolute;
	    left: 0;
	    top: 50px;
	    width: 100%;
	    padding: 0 20px;
	    text-align: center;
	    color: #fff;
	    transition: -webkit-transform 0.6s ease-in-out;
	    transition: transform 0.6s ease-in-out;
	    transition: transform 0.6s ease-in-out, -webkit-transform 0.6s ease-in-out;
	}
	
	.img__text h2 {
	    margin-bottom: 10px;
	    font-weight: normal;
	}
	
	.img__text p {
	    font-size: 14px;
	    line-height: 1.5;
	}
	
	.content.s--signup .img__text.m--up {
	    -webkit-transform: translateX(520px);
	    transform: translateX(520px);
	}
	.img__text.m--in {
	    -webkit-transform: translateX(-520px);
	    transform: translateX(-520px);
	}
	
	.content.s--signup .img__text.m--in {
	    -webkit-transform: translateX(0);
	    transform: translateX(0);
	}
	
	.img__btn {
	    overflow: hidden;
	    z-index: 2;
	    position: relative;
	    width: 100px;
	    height: 36px;
	    margin: 0 auto;
	    background: transparent;
	    color: #fff;
	    text-transform: uppercase;
	    font-size: 15px;
	    cursor: pointer;
	}
	.img__btn:after {
	    content: '';
	    z-index: 2;
	    position: absolute;
	    left: 0;
	    top: 0;
	    width: 100%;
	    height: 100%;
	    border: 2px solid #fff;
	    border-radius: 30px;
	}
	
	.img__btn span {
	    position: absolute;
	    left: 0;
	    top: 0;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    width: 100%;
	    height: 100%;
	    transition: -webkit-transform 0.6s;
	    transition: transform 0.6s;
	    transition: transform 0.6s, -webkit-transform 0.6s;
	}
	
	.img__btn span.m--in {
	    -webkit-transform: translateY(-72px);
	    transform: translateY(-72px);
	}
	
	.content.s--signup .img__btn span.m--in {
	    -webkit-transform: translateY(0);
	    transform: translateY(0);
	}
	
	.content.s--signup .img__btn span.m--up {
	    -webkit-transform: translateY(72px);
	    transform: translateY(72px);
	}
	
	h2 {
	    width: 100%;
	    font-size: 26px;
	    text-align: center;
	}
	
	label {
	    display: block;
	    width: 260px;
	    margin: 25px auto 0;
	    text-align: center;
	}
	
	label span {
	    font-size: 12px;
	    color: #909399;
	    text-transform: uppercase;
	}
	
	input {
	    display: block;
	    width: 100%;
	    margin-top: 5px;
	    padding-bottom: 5px;
	    font-size: 16px;
	    border-bottom: 1px solid rgba(0, 0, 0, 0.4);
	    text-align: center;
	}
	
	.forgot-pass {
	    margin-top: 15px;
	    text-align: center;
	    font-size: 12px;
	    color: #cfcfcf;
	}
	
	.forgot-pass a {
	    color: #cfcfcf;
	}
	
	.submit {
	    margin-top: 40px;
	    margin-bottom: 20px;
	    background: #d4af7a;
	    text-transform: uppercase;
	}
	
	.fb-btn {
	    border: 2px solid #d3dae9;
	    color: #8fa1c7;
	}
	.fb-btn span {
	    font-weight: bold;
	    color: #455a81;
	}
	
	.sign-in {
	    transition-timing-function: ease-out;
	}
	.content.s--signup .sign-in {
	    transition-timing-function: ease-in-out;
	    transition-duration: 0.6s;
	    -webkit-transform: translate3d(640px, 0, 0);
	    transform: translate3d(640px, 0, 0);
	}
	
	.sign-up {
	    -webkit-transform: translate3d(-900px, 0, 0);
	    transform: translate3d(-900px, 0, 0);
	}
	.content.s--signup .sign-up {
	    -webkit-transform: translate3d(0, 0, 0);
	    transform: translate3d(0, 0, 0);
	}
	</style>
	<style>
	    
	    body{
	        width: 100%;
	        height: 100%;
	        /* 换背景图片 */
	        background: url(./image/login.jpg) no-repeat ;
	    }
	</style>
	</head>
	
	<body>
	        <div class="content">
	            <form action="login" method="post">
	            <div class="form sign-in">
	                <h2>登录界面</h2>
	                <label>
	                    <span>用户id</span>
	                    <input type="text" name="username"/>
	                </label>
	                <label>
	                    <span>密码</span>
	                    <input type="password"  name="password"/>
	                </label>
	                <button type="submit" class="submit">登 录</button>
	               
	            </div>
	            </form>
	            <div class="sub-cont">
	                <div class="img">
	                    <div class="img__text m--up">
	                        <h2>还未注册？</h2>
	                        <p>立即注册</p>
	                    </div>
	                    <div class="img__text m--in">
	                        <h2>已有帐号？</h2>
	                        <p>有帐号就登录吧，好久不见了！</p>
	                    </div>
	                    <div class="img__btn">
	                        <span class="m--up">注 册</span>
	                        <span class="m--in">登 录</span>
	                    </div>
	                </div>
	                <form action="register" method="post">
	                    <div class="form sign-up">
	                        <h2>注册界面</h2>
	                      
	                        
	                        <label>
	                            <span>用户名</span>
	                            <input type="text" name="username" />
	                        </label>
	                        <label>
	                            <span>密码</span>
	                            <input type="password" name="password" />
	                        </label>
	                        <button type="submit" class="submit">注 册</button>   
	                    </div>
	                </form>
	            </div>
	        </div>
	
	
	    <script>
	        document.querySelector('.img__btn').addEventListener('click', function() {
	    document.querySelector('.content').classList.toggle('s--signup')
	})
	    </script>
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
	            	message: "${message}" 
	            },{
	                type: 'info',
	                timer: 4000
	            });
	
	    	});
		</script>
	
	</html>