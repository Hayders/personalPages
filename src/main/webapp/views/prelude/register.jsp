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

<title>Register</title>

<link rel="stylesheet" href="<%=basePath%>static/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="<%=basePath%>static/css/mycss/prelude.css">
</head>
<body>
	<%-- <img src="<%=basePath%>static/img/background.jpg" width="100%" height="100%"
		style="z-index: -100; position: absolute; left: 0; top: 0"> --%>

	<div class="modal show" id="registerModal" style="bottom: -40px; overflow: auto">
		<div class="modal-dialog">
			<div class="modal-content transparentDiv">
				<div class="modal-header">
					<button type="button" class="close">&times;</button>
					<h1 class="text-center text-primary">Personal Infomation</h1>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" role="form" id="registerForm">
						<div class="form-group form-group-lg" id="userIdDiv">
							<label for="userId" class="col-sm-3 control-label" style="font-size: 15px">UserId</label>
							<div class="dl-horizontal">
								<div class="input-group col-sm-7">
									<input class="form-control" id="userIdInp" name="idNo" type="text" placeholder="UserID"
										required autofocus>
								</div>
								<div class="hidden text-center" id="userIdMsg">
									<span class="glyphicon glyphicon-exclamation-sign"></span>
									<label>UserId can not be empty!</label>
								</div>
							</div>
						</div>
						<div class="form-group form-group-lg" id="userNameDiv">
							<label for="userName" class="col-sm-3 control-label" style="font-size: 15px">UserName</label>
							<div class="input-group col-sm-7">
								<input type="text" class="form-control input-lg" id="userNameInp"
									placeholder="Input UserName...">
							</div>
						</div>
						<div class="form-group form-group-lg" id="passwordDiv">
							<label for="password" class="col-sm-3 control-label" style="font-size: 15px">Password</label>
							<div class="input-group col-sm-7">
								<input type="password" class="form-control input-lg" id="passwordInp"
									placeholder="Input password..." required>
							</div>
							<div class="hidden text-center" id="passwordMsg">
								<span class="glyphicon glyphicon-exclamation-sign"></span>
								<label>Password can not be empty!</label>
							</div>
						</div>
						<div class="form-group form-group-lg" id="verifyPasswordDiv">
							<label for="verifyPassword" class="col-sm-3 control-label" style="font-size: 15px">Verify
								Password</label>
							<div class="input-group col-sm-7">
								<input type="password" class="form-control input-lg" id="verifyPasswordInp"
									placeholder="Input password..." required>
							</div>
							<div class="hidden text-center" id="verifyPasswordMsg">
								<span class="glyphicon glyphicon-exclamation-sign"></span>
								<label>The two passwords are not same!</label>
							</div>
						</div>
						<div class="form-group form-group-lg" id="sexDiv">
							<label for="sex" class="col-sm-3 control-label" style="font-size: 15px">Sex</label>
							<div class="input-group col-sm-7">
								<select class="form-control selectpicker show-tick" id="sexId" data-live-search="flase">
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>
						</div>
						<div class="form-group form-group-lg" id="E-mailDiv">
							<label for="E-mail" class="col-sm-3 control-label" style="font-size: 15px">E-mail</label>
							<div class="input-group col-sm-7">
								<input type="text" class="form-control input-lg" id="E-mailInp"
									placeholder="Input E-mail...">
							</div>
						</div>
						<div class="form-group form-group-lg" id="Tel-numDiv">
							<label for="Tel-number" class="col-sm-3 control-label" style="font-size: 15px">Tel-number</label>
							<div class="input-group col-sm-7">
								<input type="text" class="form-control input-lg" id="Tel-numberInp"
									placeholder="Input Tel-number...">
							</div>
						</div>
						<div class="form-group " id="captchaDiv">
							<label for="Captcha" class="col-sm-3 control-label" style="font-size: 15px">Cpatcha</label>
							<div class="input-group col-sm-7">
								<input type="text" class="form-control input-lg" id="verifyCaptchaInp"
									placeholder="Input Captcha...">
							</div>
							<div class="hidden text-center" id="captchaMsg">
								<span class="glyphicon glyphicon-exclamation-sign"></span>
								<label>Captcha can not be empty!</label>
							</div>
							<div class="hidden text-center" id="verifyCaptchaMsg">
								<span class="glyphicon glyphicon-exclamation-sign"></span>
								<label>Captcha are not correct!</label>
							</div>
							<br>
							<div style="margin-left: 150px">
								<img src="<%=basePath%>prelude/getCaptcha" id="captchaImage" onclick="changeCode()">
							</div>
						</div>
						<div class="form-group text-center">
							<button class="btn btn-default btn-lg " id="btnClear" style="width: 200px" type="button">Clear</button>
							<button class="btn btn-primary btn-lg " id="btnRegister"
								style="width: 200px; margin-left: 30px" type="button">Register</button>
						</div>
					</form>
				</div>
				<div class="modal-footer text-center">
					<a style="color: #888888" href="<%=basePath%>prelude/login">Already register,return to
						login</a>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="registerSuccessModal" tabindex="-1" role="dialog"
		aria-labelledby="registerSuccessModalLabel" aria-hidden="true" style="top: 30%; bottom: 40%">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header text-center">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="registerSuccessModalLabel">Congratulations to successfully
						register!</h4>
				</div>
				<div class="modal-body text-center">Click OK button to back to login!</div>
				<div class="modal-footer text-right">
					<button type="button" class="btn btn-default" data-dismiss="modal">close</button>
					<button id="registerSuccessBtn" type="button" class="btn btn-primary"
						onclick="window.location.href = '<%=basePath%>'">ok</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /container -->
	<script src="<%=basePath%>static/js/bootstrap/jquery-3.1.1.min.js"></script>
	<script src="<%=basePath%>static/js/bootstrap/bootstrap.js"></script>
	<script src="<%=basePath%>static/js/myjs/register.js"></script>
	<script src="<%=basePath%>static/js/myjs/common.js"></script>
</body>
</html>