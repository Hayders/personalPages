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
<title>Home Page</title>

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


	<!-- mainbody begin -->
	<div id="mainbody">
		<div class="info">
			<div id="myCarousel" class="carousel slide">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
				</ol>
				<div id="slide-runner" class="carousel-inner">
					<div class="item active">
						<figure>
							<img id="slide-img-0" src="<%=basePath%>static/img/slide-1.jpg" alt="Hayder Han -- SAP">
							<figcaption>
								<strong>渡人如渡己，渡已，亦是渡</strong>"当我们被误解时，会花很多时间去辩白。
								但没有用，没人愿意听，大家习惯按自己的所闻、理解做出判别，每个人其实都很固执。与其努力且痛苦的试图扭转别人的评判，
								不如默默承受，给大家多一点时间和空间去了解。而我们省下辩解的功夫，去实现自身更久远的人生价值。其实，渡人如渡己，渡已，亦是渡人。"
							</figcaption>
						</figure>
					</div>
					<div class="item">
						<figure>
							<img id="slide-img-1" src="<%=basePath%>static/img/slide-2.jpg" alt="Hayder Han -- SAP">
							<figcaption>
								<strong>我希望我的爱情是这样的</strong>"我希望我的爱情是这样的，相濡以沫，举案齐眉，平淡如水。
								我在岁月中找到他，依靠他，将一生交付给他。做他的妻子，他孩子的母亲，为他做饭，洗衣服，缝一颗掉了的纽扣。然后，我们一起在时光中变老。"
							</figcaption>
						</figure>
					</div>
					<div class="item">
						<figure>
							<img id="slide-img-2" src="<%=basePath%>static/img/slide-3.jpg" alt="Hayder Han -- SAP">
							<figcaption>
								<strong>谁更心软，谁就先长大</strong>"男人都是孩子，需要用一生时间来长大。女人都想当孩子，却最擅长的角色是妈妈。
								恋爱一开始，是两个孩子之间的游戏，到后来，成了大人和孩子之间的游戏。恋爱这回事，总要有一个人先长大，对另一半多些包容和宠溺。 而通常来看：谁更心软，谁就先长大..."
							</figcaption>
						</figure>
					</div>
					<div class="item">
						<figure>
							<img id="slide-img-3" src="<%=basePath%>static/img/slide-4.jpg" alt="Hayder Han -- SAP">
							<figcaption>
								<strong>Nothing is as sweet as you</strong>"有时候不是我不理你，其实我也想你了，只是我不知道该对你说什么。
								不管过去如何，过去的已经过去，最好的总在未来等着你。当我们懂得珍惜平凡的幸福的时候，就已经成了人生的赢家。 Nothing is as sweet as
								you再没什么，能甜蜜如你。我以为只要很认真的喜欢就能打动一个人..."
							</figcaption>
						</figure>
					</div>
					<a class="carousel-control left" href="#myCarousel" data-slide="prev" style="text-align:left">&lsaquo; </a>
					<a class="carousel-control right" href="#myCarousel" data-slide="next" style="text-align:right">&rsaquo; </a>
				</div>

			</div>

			<div class="card">
				<h1>我的名片</h1>
				<p>英文名：Hayder Han</p>
				<p>职业：研发工程师</p>
				<p>电话：13564462999</p>
				<p>Email：hxspossible@qq.com</p>
				<ul class="linkmore">
					<li>
						<a href="/" class="talk" title="给我留言"></a>
					</li>
					<li>
						<a href="/" class="address" title="联系地址"></a>
					</li>
					<li>
						<a href="/" class="email" title="给我写信"></a>
					</li>
					<li>
						<a href="/" class="photos" title="生活照片"></a>
					</li>
					<li>
						<a href="/" class="heart" title="关注我"></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- info end -->
	<div class="blank"></div>

	<!-- mainbody end -->

	<!-- fotter begin -->
	<footer> </footer>
	<!-- fotter end -->
	<script src="<%=basePath%>static/js/bootstrap/jquery-3.1.1.min.js"></script>
	<script src="<%=basePath%>static/js/bootstrap/bootstrap.js"></script>
	<script src="<%=basePath%>static/js/myjs/loginValidation.js"></script> 
	<script src="<%=basePath%>static/js/myjs/common.js"></script>
</body>
</html>