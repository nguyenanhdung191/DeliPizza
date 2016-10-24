<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="Model.Product" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8" />
    <link href="https://fonts.googleapis.com/css?family=Mitr:700&amp;subset=latin-ext,thai,vietnamese" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond&amp;subset=cyrillic,latin-ext,vietnamese" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:900&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Baloo&amp;subset=devanagari,latin-ext,vietnamese" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/home.css">
    <link rel="stylesheet" type="text/css" href="css/navigation.css">
    <link rel="stylesheet" type="text/css" href="css/viewmenu.css">
    <title>Deli Pizza</title>
	<style type="text/css">
	</style>
</head>
<body>
	<div class="pageContainer">
    	<div class="bannerContainer">
    		<div class="logoContainer">DELI PIZZA</div>
    		<div class="sloganContainer"><img src="img/delivery.png" /></div>
    	</div>
         <div class="menubarContainer">
			<nav id="nav-3">
				<a class="link-3" href="index.jsp">TRANG CHỦ</a>
				<a class="link-3" href="viewMenu.jsp">THỰC ĐƠN</a>
				<a class="link-3" href="#">HƯỚNG DẪN</a>
				<a class="link-3" href="#">GIỎ HÀNG</a>
				<a class="link-3" href="#">GIỚI THIỆU</a>
				<a class="link-3" href="#">CỬA HÀNG</a>
			</nav>
		</div>
		<div class="contentContainer">
			<div class="darkBackground">
				<div class="menuItemContainer">
					<a href="products?productTypeID=1">
					<div class="menuItemIconContainer">
						<img class="menuItemIcon" src="img/pizzaicon.png" />
					</div>
					<div class="menuItemNameContainer">PIZZA</div></a>
				</div>
				<div class="menuItemContainer">
					<a href="products?productTypeID=3">
					<div class="menuItemIconContainer">
						<img class="menuItemIcon" src="img/risottoicon.png" />
					</div>
					<div class="menuItemNameContainer">CƠM Ý</div></a>
				</div>
				<div class="menuItemContainer">
					<a href="products?productTypeID=2">
					<div class="menuItemIconContainer">
						<img class="menuItemIcon" src="img/pastaicon.png" />
					</div>
					<div class="menuItemNameContainer">MÌ Ý</div></a>
				</div>
					<div class="menuItemContainer">
					<a href="products?productTypeID=4">
					<div class="menuItemIconContainer">
						<img class="menuItemIcon" src="img/drinkicon.png" />
					</div>
					<div class="menuItemNameContainer">THỨC UỐNG</div></a>
				</div>
				
			</div>
		</div>
	</div>
</body>
<script src="script/viewProductByType.js"></script>
</html>