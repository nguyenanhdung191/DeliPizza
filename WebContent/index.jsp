<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8" />
    <link href="https://fonts.googleapis.com/css?family=Baloo&amp;subset=devanagari,latin-ext,vietnamese" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/home.css">
    <link rel="stylesheet" type="text/css" href="css/navigation.css">
    <link rel="stylesheet" type="text/css" href="css/homeContent.css">
    <link href="css/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="script/js-image-slider.js" type="text/javascript"></script>
    <title>Deli Pizza</title>
	<style type="text/css">
	</style>
</head>
<body>
	<div class="pageContainer">
    	<div class="bannerContainer">
    		<div class="logoContainer">DELI PIZZA</div>
    		<div class="sloganContainer">
    			<img src="img/delivery.png" />
    		</div>
    	</div>
        <div class="menubarContainer">
			<ul class="nav">
				<li><a href="index.jsp">TRANG CHỦ</a></li>
				<li>
					<a href="#">THỰC ĐƠN</a>
					<ul>
						<li><a href="ViewProductByType?productTypeID=1">PIZZA</a></li>
						<li><a href="ViewProductByType?productTypeID=2">MÌ Ý</a></li>
						<li><a href="ViewProductByType?productTypeID=3">CƠM</a></li>
		                <li><a href="ViewProductByType?productTypeID=4">THỨC UỐNG</a></li>
					</ul>
				</li>
				<li><a href="#">GIỚI THIỆU</a></li>
		        <li><a href="#">CỬA HÀNG</a></li>
		        <li><a href="#">HƯỚNG DẪN</a></li>
		        <li><a href="#">GIỎ HÀNG</a></li>
			</ul>
		</div>
		<div class="contentContainer">
			<div id="sliderFrame">
		        <div id="slider">
		            <img src="img/promotion/km1.jpg" />
		            <img src="img/promotion/km2.jpg" />
		            <img src="img/promotion/km3.png" />
		            <img src="img/promotion/km4.png" />
		        </div>
		    </div>
		</div>
    </div>
</body>
</html>