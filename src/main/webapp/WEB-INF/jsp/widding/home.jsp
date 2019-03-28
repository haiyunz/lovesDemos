<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Home</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content=""
	/>
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link rel="stylesheet" href="/wedding/css/bootstrap.css" type="text/css" media="all">
	<link rel="stylesheet" href="/wedding/css/font-awesome.css" type="text/css" media="all">
	<link rel="stylesheet" href="/wedding/css/lightbox.css" type="text/css" media="all">
	<link href="/wedding/css/easy-responsive-tabs.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="/wedding/css/style.css" type="text/css" media="all" />
	<link href="http://fonts.googleapis.com/css?family=Arizonia&amp;subset=latin-ext" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
</head>

<body>
	<div class="w3l-main" id="home">
		<div class="header-w3">
			<div class="header-top-agile">
				<div class="social-icons-agileits">
					<ul>
						<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>${sessionScope.userIdName},欢迎您!</li>
						<li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span> 电话</li>
					</ul>
				</div>
				<div class="social">
					<ul>
						<li><a href="#" class="link facebook" target="_parent"><span class="fa fa-facebook-square"></span></a></li>
						<li><a href="#" class="link twitter" target="_parent"><span class="fa fa-twitter"></span></a></li>
						<li><a href="#" class="link google-plus" target="_parent"><span class="fa fa-google-plus-square"></span></a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="header-bottom-agile">
				<div class=" navigation">
					<nav class="navbar navbar-default cl-effect-16" id="cl-effect-16">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
						<div class="logo-agileinfo">
							<h1><a href="index.html">wc</a></h1>
						</div>

						<div id="navbar" class="navbar-collapse navbar-right collapse hover-effect">
							<ul class="nav navbar-nav">
								<li class="active"><a href="index.html" data-hover="首页">首页</a></li>
								<li><a href="#about" data-hover="关于我们" class="scroll">关于我们</a></li>
								<li><a href="#contact" data-hover="联系我们" class="scroll">联系我们</a></li>
							</ul>
						</div>
					</nav>
				</div>
				<div class="w3ls_search">
					<div class="cd-main-header">
						<ul class="cd-header-buttons">
							<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
						</ul>
					</div>
					<div id="cd-search" class="cd-search">
						<form action="#" method="post">
							<input name="Search" type="search" placeholder="Search..." required="">
						</form>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="banner">
			<div data-vide-bg="video/marriage">
				<div class="center-container">
					<div class="banner-text">
						<div id="top" class="callbacks_container">
							<ul class="rslides" id="slider3">
								<li>
									<div class="banner-text-info">
										<h3 class="bnr-title">Our Wedding!</h3>
										<p> welcome to the best day in our lives</p>
									</div>
								</li>
								<li>
									<div class="banner-text-info">
										<h3 class="bnr-title">Happy Couple</h3>
										<p>We create Your Special day</p>
									</div>
								</li>
								<li>
									<div class="banner-text-info">
										<h3 class="bnr-title">Quality Bridal</h3>
										<p>Express your love in the most special way </p>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="we-po-head">
				<img src="/wedding/images/m1.png" alt=" ">
			</div>
		</div>
	</div>
	<div class="about_section" id="about">
		<div class="container">
			<h2 class="wthree_title_agile"><span>O</span>ur <span>S</span>tory</h2>
			<div class="inner_w3l_agile_grids">
				<div class="col-md-5 team-grid">
					<!-- normal -->
					<div class="ih-item circle effect10 bottom_to_top">
						<div class="img"><img src="/wedding/images/a2.png" alt="img" /></div>
					</div>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur velit ac fringilla fermentum.</p>
					<div class="icons">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li class="team-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-2 team-grid">
					<div class="info">
						<h3>Smith</h3>
						<div class="arrow-container animated fadeInDown">
							<a href="#home" class="arrow-2 scroll">
							<i class="fa fa-heart-o" aria-hidden="true"></i>
						</a>
							<div class="arrow-1 animated hinge infinite zoomIn"></div>
						</div>
						<h4>Rosee</h4>
					</div>
				</div>
				<div class="col-md-5 team-grid">
					<div class="ih-item circle effect10 bottom_to_top">
						<div class="img"><img src="/wedding/images/a1.png" alt="img" /></div>
					</div>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed efficitur velit ac fringilla fermentum.</p>
					<div class="icons">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li class="team-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="banner-bottom">
			<!--//screen-gallery-->
			<div class="inner_w3l_agile_grids">
				<div class="sreen-gallery-cursual">
					<div id="owl-demo" class="owl-carousel">
						<div class="item-owl">
							<div class="test-review">
								<img src="/wedding/images/s2.jpg" alt="" />
							</div>
						</div>
						<div class="item-owl">
							<div class="test-review">
								<img src="/wedding/images/s1.jpg" alt="" />
							</div>
						</div>
						<div class="item-owl">
							<div class="test-review">
								<img src="/wedding/images/s3.jpg" alt="" />
							</div>
						</div>
						<div class="item-owl">
							<div class="test-review">
								<img src="/wedding/images/s7.jpg" alt="" />
							</div>
						</div>
						<div class="item-owl">
							<div class="test-review">
								<img src="/wedding/images/s5.jpg" alt="" />
							</div>
						</div>
						<div class="item-owl">
							<div class="test-review">
								<img src="/wedding/images/s8.jpg" alt="" />
							</div>
						</div>
						<div class="item-owl">
							<div class="test-review">
								<img src="/wedding/images/s6.jpg" alt="" />
							</div>
						</div>
						<div class="item-owl">
							<div class="test-review">
								<img src="/wedding/images/s4.jpg" alt="" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //story -->
		<div class="w3l-poi">
			<img src="/wedding/images/a3.png" alt=" ">
		</div>
	</div>
	<div class="sect-main-con">
		<h3 class="wthree_title_agile"><span>W</span>ho <span>W</span>e <span>A</span>re</h3>
		<div class="w3l-mo">
			<div class="col-md-5 service-1">
				<h4>Few Words About WC</h4>
				<h6>WC</h6>
				<p>adipiscing elit, sed do eiusmod tempor incididunt ut Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit labore et dolore magna aliqua</p>
				<img src="/wedding/images/well.jpg" alt=" ">
				<h5><a href="#" class="view rew3" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span>Learn More</a></h5>
			</div>
			<div class="col-md-2 service-2">
				<h4>We Best In</h4>
				<a href="#">Bridal boudoir</a>
				<a href="#">Wedding Cakes</a>
				<a href="#">Wedding favors</a>
				<a href="#">Guest services</a>
				<a href="#">Hair &amp; beauty</a>
				<a href="#">Music</a>
				<a href="#">Fireworks</a>
			</div>
			<div class="col-md-5 service" id="services">
				<h4>Services</h4>
				<div class="serve-grids-top">
					<div class="service-box wow fadeInDown" data-wow-duration=".8s" data-wow-delay=".3s">
						<div class="hi-icon-effect-6">
							<a href="#set-6" class="hi-icon fa fa-briefcase"></a>
						</div>
						<div class="hi-text">
							<h5>wedding management</h5>
							<p>Sed ut perspiciis iste natus error sit voluptatem accusantium.</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="service-box wow fadeInDown" data-wow-duration=".8s" data-wow-delay=".3s">
						<div class=" hi-icon-effect-6">
							<a href="#set-6" class="hi-icon fa fa-map"></a>
						</div>
						<div class="hi-text">
							<h5>Wedding venues</h5>
							<p>Sed ut perspiciis iste natus error sit voluptatem accusantium.</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="service-box wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
						<div class=" hi-icon-effect-6">
							<a href="#set-6" class="hi-icon fa fa-glass"></a>
						</div>
						<div class="hi-text">
							<h5>celebrations</h5>
							<p>Sed ut perspiciis iste natus error sit voluptatem accusantium.</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="service-box wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
						<div class=" hi-icon-effect-6">
							<a href="#set-6" class="hi-icon fa fa-music"></a>
						</div>
						<div class="hi-text">
							<h5>Wedding Music</h5>
							<p>Sed ut perspiciis iste natus error sit voluptatem accusantium.</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4>Wedding Ceremony</h4>
							<img src="/wedding/images/n1.jpg" alt="blog-image" />
							<span>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem , eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.accusantium doloremque laudantium, totam rem aperiamconsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span>
						</div>
					</div>
				</div>
			</div>
			<!-- //Modal5 -->
		</div>
	</div>
	<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >建站模板</a></div>
	<div class="news" id="events">
		<div class="container">
			<h3 class="wthree_title_agile"><span>L</span>atest <span>E</span>vents</h3>
			<div class="wthree-news-grids">
				<div class="col-md-4 agile-news-left">
					<img src="/wedding/images/n1.jpg" alt="">
					<div class="agile-news-right">
						<div class="date-grid">
							<div class="time">
								<p><i class="fa fa-calendar" aria-hidden="true"></i> June 12,2017</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="w3-agile-news-info">
							<a href="#" data-toggle="modal" data-target="#myModal1">Aenean id lorem efficitur, porttitor eros dapibus</a>
							<p>Phasellus vestibulum velit sed nisi ultricies scelerisque. Vivamus ligula mauris, euismod in dictum id, tempus ac
								odio. Etiam tristique felis eros, tincidunt interdum elit gravida et.</p>
						</div>
						<div class="w3l-button">
							<a href="#" data-toggle="modal" data-target="#myModal1">More</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 agile-news-left">
					<div class="agile-news-right w3l-newsw">
						<div class="date-grid">
							<div class="time">
								<p><i class="fa fa-calendar" aria-hidden="true"></i> June 13,2017</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="w3-agile-news-info">
							<a href="#" data-toggle="modal" data-target="#myModal2">Aenean id lorem efficitur, porttitor eros dapibus</a>
							<p>Phasellus vestibulum velit sed nisi ultricies scelerisque. Vivamus ligula mauris, euismod in dictum id, tempus ac
								odio. Etiam tristique felis eros, tincidunt interdum elit gravida et.</p>
						</div>
						<div class="w3l-button">
							<a href="#" data-toggle="modal" data-target="#myModal2">More</a>
						</div>
					</div>
					<img src="/wedding/images/n2.jpg" alt="">
				</div>
				<div class="col-md-4 agile-news-left">
					<img src="/wedding/images/n3.jpg" alt="">
					<div class="agile-news-right">
						<div class="date-grid">
							<div class="time">
								<p><i class="fa fa-calendar" aria-hidden="true"></i> July 14,2017</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="w3-agile-news-info">
							<a href="#" data-toggle="modal" data-target="#myModal3">Aenean id lorem efficitur, porttitor eros dapibus</a>
							<p>Phasellus vestibulum velit sed nisi ultricies scelerisque. Vivamus ligula mauris, euismod in dictum id, tempus ac
								odio. Etiam tristique felis eros, tincidunt interdum elit gravida et.</p>
						</div>
						<div class="w3l-button">
							<a href="#" data-toggle="modal" data-target="#myModal3">More</a>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4>Latest Event</h4>
					<img src="/wedding/images/n1.jpg" alt="blog-image" />
					<span>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem , eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.accusantium doloremque laudantium, totam rem aperiamconsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4>Latest Event</h4>
					<img src="/wedding/images/n2.jpg" alt="blog-image" />
					<span>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem , eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.accusantium doloremque laudantium, totam rem aperiamconsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4>Latest Event</h4>
					<img src="/wedding/images/n3.jpg" alt="blog-image" />
					<span>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem , eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.accusantium doloremque laudantium, totam rem aperiamconsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span>
				</div>
			</div>
		</div>
	</div>
	<div id="gallery" class="gallery">
		<div class="container">
			<h3 class="wthree_title_agile"><span>O</span>ur <span>G</span>allery</h3>
			<div class="gallery-w3lsrow">
				<div class="col-sm-3 col-xs-4 gallery-grids">
					<div class="w3ls-hover">
						<a href="/wedding/images/g1.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
						<img src="/wedding/images/g1.jpg" class="img-responsive zoom-img" alt=""/>
						<div class="view-caption">
							<h5>Wedding Ceremony</h5>
							<span class="fa fa-heart"></span>
						</div>
					</a>
					</div>
				</div>
				<div class="col-sm-3 col-xs-4 gallery-grids">
					<div class="w3ls-hover">
						<a href="/wedding/images/g2.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
						<img src="/wedding/images/g2.jpg" class="img-responsive zoom-img" alt=""/>
						<div class="view-caption">
							<h5>Wedding Ceremony</h5>
							<span class="fa fa-heart"></span>
						</div>
					</a>
					</div>
				</div>
				<div class="col-sm-3 col-xs-4 gallery-grids">
					<div class="w3ls-hover">
						<a href="/wedding/images/g4.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
						<img src="/wedding/images/g4.jpg" class="img-responsive zoom-img" alt=""/>
						<div class="view-caption">
							<h5>Wedding Ceremony</h5>
							<span class="fa fa-heart"></span>
						</div>
					</a>
					</div>
				</div>
				<div class="col-sm-3 col-xs-4 gallery-grids">
					<div class="w3ls-hover">
						<a href="/wedding/images/g3.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
						<img src="/wedding/images/g3.jpg" class="img-responsive zoom-img" alt=""/>
						<div class="view-caption">
							<h5>Wedding Ceremony</h5>
							<span class="fa fa-heart"></span>
						</div>
					</a>
					</div>
				</div>
				<div class="col-sm-3 col-xs-4 gallery-grids">
					<div class="w3ls-hover">
						<a href="/wedding/images/g5.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
						<img src="/wedding/images/g5.jpg" class="img-responsive zoom-img" alt=""/>
						<div class="view-caption">
							<h5>Wedding Ceremony</h5>
							<span class="fa fa-heart"></span>
						</div>
					</a>
					</div>
				</div>
				<div class="col-sm-3 col-xs-4 gallery-grids">
					<div class="w3ls-hover">
						<a href="/wedding/images/g6.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
						<img src="/wedding/images/g6.jpg" class="img-responsive zoom-img" alt=""/>
						<div class="view-caption">
							<h5>Wedding Ceremony</h5>
							<span class="fa fa-heart"></span>
						</div>
					</a>
					</div>
				</div>
				<div class="col-sm-3 col-xs-4 gallery-grids">
					<div class="w3ls-hover">
						<a href="/wedding/images/g7.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
						<img src="/wedding/images/g7.jpg" class="img-responsive zoom-img" alt=""/>
						<div class="view-caption">
							<h5>Wedding Ceremony</h5>
							<span class="fa fa-heart"></span>
						</div>
					</a>
					</div>
				</div>
				<div class="col-sm-3 col-xs-4 gallery-grids">
					<div class="w3ls-hover">
						<a href="/wedding/images/g8.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
						<img src="/wedding/images/g8.jpg" class="img-responsive zoom-img" alt=""/>
						<div class="view-caption">
							<h5>Wedding Ceremony</h5>
							<span class="fa fa-heart"></span>
						</div>
					</a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="team" id="team">
		<div class="container">
			<h3 class="wthree_title_agile"><span>O</span>ur <span>P</span>lanners</h3>
			<div class="agile_team_grids">
				<div class="col-md-3 agile_team_grid team-left-w3l-agile">
					<div class="agile_team_grid_main">
						<img src="/wedding/images/t1.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<ul class="social-icons">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li> <a href="#"><i class="fa fa-twitter"></i></a> </li>

								<li><a href="#"><i class="fa fa-dribbble"></i></a> </li>

							</ul>
						</div>
					</div>
					<div class="agile_team_grid1">
						<h3>Kane Doe</h3>
						<p>Nam id urna ipsum</p>
					</div>
				</div>
				<div class="col-md-3 agile_team_grid team-left-w3l-agile">
					<div class="agile_team_grid_main">
						<img src="/wedding/images/t2.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<ul class="social-icons">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li> <a href="#"><i class="fa fa-twitter"></i></a> </li>

								<li><a href="#"><i class="fa fa-dribbble"></i></a> </li>

							</ul>
						</div>
					</div>
					<div class="agile_team_grid1">
						<h3>Mdaline</h3>
						<p>Nam id urna ipsum</p>
					</div>
				</div>
				<div class="col-md-3 agile_team_grid team-left-w3l-agile">
					<div class="agile_team_grid_main">
						<img src="/wedding/images/t3.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<ul class="social-icons">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li> <a href="#"><i class="fa fa-twitter"></i></a> </li>

								<li><a href="#"><i class="fa fa-dribbble"></i></a> </li>

							</ul>
						</div>
					</div>
					<div class="agile_team_grid1">
						<h3>Laura Crisp</h3>
						<p>Nam id urna ipsum</p>
					</div>
				</div>
				<div class="col-md-3 agile_team_grid team-left-w3l-agile">
					<div class="agile_team_grid_main">
						<img src="/wedding/images/t4.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<ul class="social-icons">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li> <a href="#"><i class="fa fa-twitter"></i></a> </li>

								<li><a href="#"><i class="fa fa-dribbble"></i></a> </li>

							</ul>
						</div>
					</div>
					<div class="agile_team_grid1">
						<h3>Rosy Paul</h3>
						<p>Nam id urna ipsum</p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="agileinfo_counter_section">
		<div class="container">
			<h3>Wedding Ceremony</h3>
			<p class="sub_para two">consectetur adipiscing elit, sed do eiusmod</p>
			<h5><a href="#contact" class="view rew3 scroll"><span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span>Contact Us</a></h5>
		</div>
	</div>
	<div class="contact-w3l" id="contact">
		<h3 class="wthree_title_agile"><span>C</span>ontact</h3>
		<div class="container">
			<div class="col-md-6 contact-agileits-w3layouts">
				<div id="horizontalTab">
					<ul class="resp-tabs-list">
						<li>
							<h6>New Jersey</h6>
						</li>
						<li>
							<h6>Canada</h6>
						</li>
						<li>
							<h6>UK</h6>
						</li>
					</ul>
					<div class="resp-tabs-container">

						<div class="tab2">
							<p class="para-agileits-w3layouts"><i class="fa fa-map-marker" aria-hidden="true"></i>25095 Blue Ravine Rd, Folsom, CA 95630, USA</p>
							<p class="para-agileits-w3layouts"><i class="fa fa-phone" aria-hidden="true"></i>032 625 4592</p>
							<p class="para-agileits-w3layouts"><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="mailto:mail@example.com">info@example.com</a></p>
							<div class="agileits-social">
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
									<li><a href="#"><i class="fa fa-vk"></i></a></li>
								</ul>
							</div>
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1859251.8642025779!2d-76.08274894689792!3d40.06224332601239!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c0fb959e00409f%3A0x2cd27b07f83f6d8d!2sNew+Jersey%2C+USA!5e0!3m2!1sen!2sin!4v1474436926209"
							    allowfullscreen></iframe>

						</div>
						<div class="tab3">
							<p class="para-agileits-w3layouts"><i class="fa fa-map-marker" aria-hidden="true"></i>123 San Sebastian, New York City USA.</p>
							<p class="para-agileits-w3layouts"><i class="fa fa-phone" aria-hidden="true"></i>333 222 3333</p>
							<p class="para-agileits-w3layouts"><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="mailto:mail@example.com">info@example.com</a></p>
							<div class="agileits-social">
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
									<li><a href="#"><i class="fa fa-vk"></i></a></li>
								</ul>
							</div>
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3023.9503398796587!2d-73.9940307!3d40.719109700000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a27e2f24131%3A0x64ffc98d24069f02!2sCANADA!5e0!3m2!1sen!2sin!4v1441710758555"
							    allowfullscreen></iframe>
						</div>
						<div class="tab4">
							<p class="para-agileits-w3layouts"><i class="fa fa-map-marker" aria-hidden="true"></i>8921 California Long Beach PO Box 8921</p>
							<p class="para-agileits-w3layouts"><i class="fa fa-phone" aria-hidden="true"></i>012 345 6789</p>
							<p class="para-agileits-w3layouts"><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="mailto:mail@example.com">info@example.com</a></p>
							<div class="agileits-social">
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
									<li><a href="#"><i class="fa fa-vk"></i></a></li>
								</ul>
							</div>
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26370863.006641828!2d-113.70834778640587!3d36.212776709411365!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited+States!5e0!3m2!1sen!2sin!4v1497420724957"
							    allowfullscreen></iframe>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6 regstr-r-w3-agileits">
				<div class="form-bg-w3ls">
					<h3 class="subhead-agileits white-w3ls">Get in Touch</h3>
					<form action="#" method="post">
						<input type="text" name="Name" placeholder="Name" required="">
						<input type="email" name="Email" placeholder="Email" required="">
						<input type="text" name="Subject" placeholder="Subject" required="">
						<textarea name="Message" placeholder="Message" required></textarea>
						<input type="submit" value="Submit" class="button-w3layouts hvr-rectangle-out">
					</form>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="footer-w3layouts">
		<div class="container">
			<div class="agile-logo">
				<a href="index.html">WC</a>
			</div>
			<div class="agile-copy">
				<p>Copyright &copy; 2017.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="thim-click-to-bottom">
			<a href="#home" class="scroll">
			<i class="fa fa-long-arrow-up" aria-hidden="true"></i>
		</a>
		</div>
	</div>
	<script type="text/javascript" src="/wedding/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="/wedding/js/bootstrap.js"></script>
	<script src="/wedding/js/lightbox-plus-jquery.min.js">
	</script>
	<script src="/wedding/js/jquery.vide.min.js"></script>
	<script src="/wedding/js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 3
			$("#slider3").responsiveSlides({
				auto: true,
				pager: false,
				nav: true,
				speed: 500,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<script src="/wedding/js/main.js"></script>
	<link href="/wedding/css/owl.carousel.css" rel="stylesheet">
	<script src="/wedding/js/owl.carousel.js"></script>
	<script>
		$(document).ready(function () {
			$("#owl-demo").owlCarousel({
				items: 1,
				itemsDesktop: [768, 4],
				itemsDesktopSmall: [414, 3],
				lazyLoad: true,
				autoPlay: true,
				navigation: true,

				navigationText: false,
				pagination: true,

			});

		});
	</script>
	<script src="/wedding/js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true, // 100% fit in a container
				closed: 'accordion', // Start closed if in accordion view
				activate: function (event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type: 'vertical',
				width: 'auto',
				fit: true
			});
		});
	</script>
	<script type="text/javascript" src="/wedding/js/move-top.js"></script>
	<script type="text/javascript" src="/wedding/js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<script src="/wedding/js/SmoothScroll.min.js"></script>
</body>
</html>