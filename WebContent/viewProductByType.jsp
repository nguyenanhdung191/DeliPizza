<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="Model.Product" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8" />
    <link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond&amp;subset=cyrillic,latin-ext,vietnamese" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:900&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Baloo&amp;subset=devanagari,latin-ext,vietnamese" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/home.css">
    <link rel="stylesheet" type="text/css" href="css/navigation.css">
    <link rel="stylesheet" type="text/css" href="css/homeContent.css">
    <link rel="stylesheet" type="text/css" href="css/product.css">
    <link rel="stylesheet" type="text/css" href="css/dropdown.css">
    <link rel="stylesheet" type="text/css" href="css/modal.css">
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
				<a class="link-3" href="#">TRANG CHỦ</a>
				<a class="link-3" href="#">THỰC ĐƠN</a>
				<a class="link-3" href="#">HƯỚNG DẪN</a>
				<a class="link-3" href="#">GIỎ HÀNG</a>
				<a class="link-3" href="#">GIỚI THIỆU</a>
				<a class="link-3" href="#">CỬA HÀNG</a>
			</nav>
		</div>
		<div class="contentContainer">
			<div class="darkBackground">
				<div class="productListContainer">
				<%
					ArrayList<Product> list = (ArrayList)request.getAttribute("products");
					for(Product p : list){%>
						<div class="productContainer">
							<div class="productTypeID" id="<%=p.getProductID()%>-productTypeID"><%=p.getProductTypeID()%></div>
							<div class="productStartingPrice" id="<%=p.getProductID()%>-startingPrice"><%= p.getProductPrice()%></div>
							<div class="productImage" id="<%=p.getProductID()%>-productImage"><img src="img/menu/<%= p.getProductImageUrl() %>" /></div>
							<div class="productName" id="<%=p.getProductID()%>-productName"><%= p.getProductName() %></div>
							<div class="productDescription"><%= p.getProductDescription() %></div>
							<div class="productPrice" id="<%= p.getProductID()%>-productPrice"><%=String.format("%,d", p.getProductPrice())%> VNĐ</div>
							<%	if(p.getProductTypeID() == 1){%>
							<div class="productActionContainer">
								<div class="leftAction">
									<span class="custom-dropdown">
									    <select id="<%=p.getProductID()%>-crustSelection" name="crustSelection">
									        <option value="0">Chọn vỏ bánh</option>
									        <option value="1-0">Vỏ bánh mỏng</option>  
									        <option value="2-0">Vỏ bánh dày</option>
									        <option value="3-0">Vỏ bánh truyền thống</option>
									        <option value="4-45000">Vỏ bánh viền phô mai</option>
									    </select>
									</span>
									<span class="custom-dropdown">
									    <select id="<%=p.getProductID()%>-sizeSelection" name="sizeSelection">
									        <option value="0">Chọn kích thước</option>
									        <option value="1-0">Nhỏ (7-inch)</option>
									        <option value="3-50000">Vừa (9-inch)</option>
									        <option value="4-85000">To (12-inch)</option>
									    </select>
									</span>
								</div>
								<div class="rightAction"><img class="addToCartButton" name="addToCart" id="<%=p.getProductID()%>-addToCart" title="Thêm vào giỏ hàng" src ="img/addtocart.png" onmouseout="this.src='img/addtocart.png';" onmouseover="this.src='img/addtocarthover.png'"/></div>
							</div>
							<% } else{ %>
							<div class="productActionContainer">
								<img class="addToCartButton" name="addToCart" id="<%=p.getProductID()%>-addToCart" style="height:60px; width: auto;" title="Thêm vào giỏ hàng" src ="img/addtocart.png" onmouseout="this.src='img/addtocart.png';" onmouseover="this.src='img/addtocarthover.png'"/>
							</div>
							<%}%>
							<hr class="seperator"/>
						</div>
					<%}%>
				</div>
			</div>
		</div>
    </div>
<div id="shoppingCartModel" class="modal">
	<div class="modal-content">
		<span class="close">x</span><br />
		<div class="addToCartLeft"></div>
		<div class="addToCartRIght">
			<span class="cartProductName"></span><br/>
			<span class="cartProductCrust"></span><br/>
			<span class="cartProductSize"></span><br/>
			<span class="cartQuantity">Số lượng: 
				<input type="button" value="-" id="minus" />
				<input type="text" value="1" id="quantity" readonly="readonly" />
				<input type="button" value="+" id="plus"/>
			</span><br/>
			<span class="cartProductPrice"></span>
			<span class="cartProductPriceHidden"></span>
		</div>
	</div>
</div>
</body>
<script src="script/viewProductByType.js"></script>
</html>