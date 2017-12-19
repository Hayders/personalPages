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

<link rel="stylesheet" href="<%=basePath%>static/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="<%=basePath%>static/css/mycss/climax.css">
<link rel="stylesheet" href="<%=basePath%>static/css/mycss/animation.css">
</head>
<body>
	<!-- header begin -->
	<header>
		<!-- ------------------------导航栏设计开始---------------------------------- -->
		<nav class="navbar navbar-inverse navbar-fixed-top" style="height: 50px">
			<div class="container-fluid" style="height: 50px">
				<div class="navbar-header" style="margin-left: 20px">
					<!------button为实现响应式布局，如果在手机上查看，点击button就可以弹出菜单---->
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<%=basePath%>climax/homepage/">Hayder</a>
					<!---方log的地方-->
				</div>
				<div id="bs-example-navbar-collapse-1" style="margin-left: 120px">
					<ul class="nav navbar-nav menu">
						<li>
							<a href="<%=basePath%>climax/homepage/">
								博客首页
								<span class="sr-only"></span>
							</a>
						</li>
						<li>
							<a href="#" id="dropdownMenu1">
								技术探讨
								<span class="caret"></span>
							</a>
							<ul class="submenu subli">
								<li>
									<a href="#">UI</a>
								</li>
								<li>
									<a href="#">HCP</a>
								</li>
								<li>
									<a href="#">JAVA</a>
								</li>
								<li>
									<a href="#">SWIFT</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="<%=basePath%>climax/moives/">电影赏析</a>
						</li>
						<li>
							<a href="#">生活杂谈</a>
						</li>
						<li>
							<a href="#">微工具</a>
						</li>
						<li>
							<a href="#">关于我</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right" id = "RegLog">
						<li>
							<a href="<%=basePath%>prelude/login/" id="loginUserId">登录</a>
						</li>
						<li>
							<a href="<%=basePath%>prelude/register/">注册</a>
						</li>
					</ul>
					
					<ul class="nav navbar-nav navbar-right" id = "PersonalCenter">
						<li>
							<a id="UserPersonalCenter">个人中心</a>
						</li>
						<li>
							<a href="<%=basePath%>" id="Logout">退出</a>
						</li>
					</ul>
					<div style="text-align: right; padding-right: 120px; padding-top: 9px">
						<form class="searchform" method="get" action="#">
							<input type="text" name="search" value="Search" onfocus="this.value=''"
								onblur="this.value='Search'">
						</form>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<!-- header end -->

	<script src="<%=basePath%>static/js/bootstrap/jquery-3.1.1.min.js"></script>
	<script src="<%=basePath%>static/js/bootstrap/bootstrap.js"></script>
	<script src="<%=basePath%>static/js/myjs/loginValidation.js"></script>
	<script src="<%=basePath%>static/js/myjs/common.js"></script>
</body>
</html>