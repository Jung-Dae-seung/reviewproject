<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="veiwport" content="width=device-width", initial-scale="1.0"/>
<link rel="stylesheet" href="resources/community/css/bootstrap.css" />
<link rel="stylesheet" href="resources/community/css/custom.css" />
<!-- font awesome CSS -->
<link rel="stylesheet" href="resources/css/all.css">
<!-- font awesome CSS -->
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<!-- style CSS -->
<link rel="stylesheet" href="resources/css/style.css">
<title>EatAtLine4</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/community">커뮤니티</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="/freeBoard">자유 게시판</a></li>
				<li><a href="/proBoard">홍보 게시판</a></li>
				<li><a href="/InqBoard">문의 게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/">Home</a></li>
						
						 <!-- 인증된 정보가 있으면 Logout 보여주기 -->
                        <sec:authorize access="isAuthenticated()">
	                        <li>
	                        	<a href="#" id="logout"><i class=""></i>로그아웃</a>
	                        </li>
							</sec:authorize>
	                        <sec:authorize access="!isAuthenticated()">
		                        <li>
									<a href="/login"><i class="" ></i>로그인</a>
								</li>	
							</sec:authorize>		
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	
	<%-- 로그아웃을 클릭하면 전송할 폼 --%>
        <form action="/logout" method="post" id="logoutForm">
        	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
        </form>
	
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>Community</h1>
				<p> Life is short! Don't waste your time looking for Restaurants outside. We do that job for you! <br /> Feel free to explore our website and take a look at the reviews other diners have given.  <br /> You're welcome to share your dining experiences to recommend places for other food enthusiasts. </p>
				<p><a class="btn btn-primary btn-pull" href="/freeBoard">Learn more</a></p>
			</div>
		</div>
	</div>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="resources/community/image/coffee.jpg" alt="" />
				</div>
				<div class="item">
					<img src="resources/community/image/dining_table.jpg" alt="" />
				</div>
				<div class="item">
					<img src="resources/community/image/restaurant2.jpg" alt="" />
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	
	
<!-- footer부분	 -->
<!-- 	<section class="feature_part padding_top"> -->
	<div class="container">
		<div class="row align-items-center justify-content-between">
		</div>	
	
	
<!--::footer_part start::-->
<footer class="footer_top footer_part">
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-lg-3">
				<div class="footer_img">
					<a href="#"><img src="img/footer_img/footer_1.png" alt=""></a>
					<a href="#"><img src="img/footer_img/footer_2.png" alt=""></a>
					<a href="#"><img src="img/footer_img/footer_3.png" alt=""></a>
					<a href="#"><img src="img/footer_img/footer_4.png" alt=""></a>
					<a href="#"><img src="img/footer_img/footer_5.png" alt=""></a>
					<a href="#"><img src="img/footer_img/footer_6.png" alt=""></a>
					<a href="#"><img src="img/footer_img/footer_7.png" alt=""></a>
					<a href="#"><img src="img/footer_img/footer_8.png" alt=""></a>
				</div>
			</div>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-lg-8">
			<div class="copyright_text">
				<P>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
		Copyright &copy;
		<script>
			document.write(new Date().getFullYear());
		</script>
		All rights reserved | <a
			href="https://colorlib.com" target="_blank">EatAtLine4</a>
		<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
		</P>
	</div>
</div>
<div class="col-lg-4">
	<div class="footer_icon social_icon">
		<ul class="list-unstyled">
			<li><a href="#" class="single_social_icon"><i
					class="fab fa-facebook-f"></i></a></li>
			<li><a href="#" class="single_social_icon"><i
					class="fab fa-twitter"></i></a></li>
			<li><a href="#" class="single_social_icon"><i
					class="fas fa-globe"></i></a></li>
			<!--                             <li><a href="#" class="single_social_icon"><i class="fab fa-behance"></i></a></li> -->
				</ul>
			</div>
		</div>
	</div>
</div>
</footer>
<!--::footer_part end::-->

<!-- jquery plugins here-->
<!-- jquery
<script src="resources/js/waypoints.min.js"></script>
<script src="resources/js/jquery-1.12.1.min.js"></script>-->

 
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="resources/community/js/bootstrap.js"></script>
<!-- popper js -->
<script src="resources/js/popper.min.js"></script>
<!-- bootstrap js -->
<script src="resources/js/bootstrap.min.js"></script>
<!-- easing js -->
<script src="resources/js/jquery.magnific-popup.js"></script>
<!-- particles js -->
<script src="resources/js/owl.carousel.min.js"></script>
<script src="resources/js/jquery.nice-select.min.js"></script>
<!-- slick js -->
<script src="resources/js/slick.min.js"></script>
<script src="resources/js/jquery.counterup.min.js"></script>
<script src="resources/js/contact.js"></script>
<script src="resources/js/jquery.ajaxchimp.min.js"></script>
<script src="resources/js/jquery.form.js"></script>
<script src="resources/js/jquery.validate.min.js"></script>
<script src="resources/js/mail-script.js"></script>

 <script>
$(function(){
	$("#logout").click(function(e){
		//a 태그 동작 막기
		e.preventDefault();
		
		//form을 보낼때 csrf 값 포함해서 전송
		$('#logoutForm').submit();
	})
})
</script>
<!-- custom js -->
<script src="resources/js/custom.js"></script>	
</body>
</html>