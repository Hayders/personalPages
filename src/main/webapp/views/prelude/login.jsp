<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Login</title>

<link rel="stylesheet" href="<%=basePath%>static/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="<%=basePath%>static/css/mycss/prelude.css">
</head>
<body onkeydown="keyLogin()">
	<%-- <img src="<%=basePath%>static/img/background.jpg" width="100%" height="100%"
		style="z-index: -100; position: absolute; left: 0; top: 0"> --%>
	<!--使用模态框的方式模拟一个登陆框-->
	<div class="modal show" id="loginModal" style="bottom: -43px; top: 20%">
		<div class="modal-dialog">
			<div class="modal-content transparentDiv">
				<div class="modal-header">
					<button type="button" class="close">&times;</button>
					<h1 class="text-center text-primary">Login</h1>
				</div>
				<div class="modal-body" style="height: 260px">
					<form class="form col-md-12 center-block" id="loginForm">
						<div class="form-group-lg" id="accountDiv">
							<label class="sr-only" for="inputAccount">UserID</label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								</div>
								<input class="form-control" id="inputAccount" name="accountNo" type="text"
									placeholder="UserID" required autofocus>
							</div>
							<div class="hidden text-center" id="accountMsg">
								<span class="glyphicon glyphicon-exclamation-sign"></span>
								<label>UserId is not exist!</label>
							</div>
						</div>
						<br>
						<div class="form-group-lg" id="pwdDiv">
							<label class="sr-only" for="inputPassword">Password</label>
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-lock"></span>
								</div>
								<input class="form-control" id="inputPassword" name="pwd" type="password"
									placeholder="Password" required>
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-eye-open"></span>
								</div>
							</div>
							<div class="hidden text-center" id="pwdMsg">
								<span class="glyphicon glyphicon-exclamation-sign"></span>
								<label>Password is not correct!</label>
							</div>
						</div>
						<div class="checkbox">
							<label>
								<input type="checkbox" value="remember-me">
								remember
							</label>
							<a style="float: right; color: #888888" href="">forget password?</a>
						</div>
						<div class="form-group text-center">
							<button class="btn btn-default btn-lg" id="btn_register" style="width: 250px" type="button">Register</button>
							<button class="btn btn-primary btn-lg" id="btn_login" style="width: 250px; margin-left: 30px"
								type="button">Login</button>
						</div>
					</form>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<!-- /container -->
	<script src="<%=basePath%>static/js/bootstrap/jquery-3.1.1.min.js"></script>
	<script src="<%=basePath%>static/js/bootstrap/bootstrap.js"></script>
	<script src="<%=basePath%>static/js/myjs/login.js"></script>
	<script src="<%=basePath%>static/js/myjs/common.js"></script>
</body>
</html>