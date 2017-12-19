<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Home Page</title>
<%@ include file="header.jsp" %>
</head>
<body>
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
</body>
</html>