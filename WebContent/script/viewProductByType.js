$("[name=crustSelection]").each(function(index, element){
	$(element).on("change", function(){
		var productID = $(this).attr("id").split("-")[0];
		var productStartingPrice = testNull($("#" + productID + "-startingPrice").text());
		var crustPrice = testNull($(this).val().split("-")[1]);
		var sizePrice = testNull($(this).parent().next().children().eq(0).val().split("-")[1]);
		$("#" + productID + "-productPrice").text(format(productStartingPrice + crustPrice + sizePrice) + " VNĐ");
	});
});

$("[name=sizeSelection]").each(function(index, element){
	$(element).on("change", function(){
		var productID = $(this).attr("id").split("-")[0];
		var productStartingPrice = parseInt($("#" + productID + "-startingPrice").text());
		var sizePrice = testNull($(this).val().split("-")[1]);
		var crustPrice = testNull($(this).parent().prev().children().eq(0).val().split("-")[1]);
		$("#" + productID + "-productPrice").text(format(productStartingPrice + crustPrice + sizePrice) + " VNĐ");
	});
});

$("[name=addToCart]").each(function(index, img){
	$(img).on("click", function(){
		var productID = $(img).attr("id").split("-")[0];
		var productName = $("#" + productID + "-productName").text();
		var productTypeID = $("#" + productID + "-productTypeID").text();
		if(productTypeID == "1"){
			var productSizePrice = parseInt($("#" + productID + "-sizeSelection").val().split("-")[1]);
			var productCrustPrice = parseInt($("#" + productID + "-crustSelection").val().split("-")[1]);
		}
		else{
			var productSizePrice = 0;
			var productCrustPrice = 0;
		}
		var productCrust = $("#" + productID + "-crustSelection option:selected").text();
		var productSize = $("#" + productID + "-sizeSelection option:selected").text();
		var productStartingPrice = parseInt($("#" + productID + "-startingPrice").text());
		var productImage = $("#" + productID + "-productImage").html();
		var productPrice = productStartingPrice + productCrustPrice + productSizePrice;
		if(productCrust == "Chọn vỏ bánh" || productSize == "Chọn kích thước"){
			alert("Vui lòng chọn vỏ bánh và kích thước bánh");
			return;
		}
		$(".addToCartLeft").html(productImage);
		$(".cartProductName").text(productName);
		
		if(productTypeID == "1"){
			$(".cartProductCrust").text("Vỏ bánh: " + productCrust);
			$(".cartProductSize").text("Kích thước bánh: " + productSize);
		}
		else{
			$(".cartProductCrust").text("");
			$(".cartProductSize").text("");
		}
		$(".cartProductPrice").text("Giá: " + format(productPrice) +" VNĐ");
		$(".cartProductPriceHidden").text(productPrice);
		$("#quantity").val("1");
		$(".modal").show();
	});
});

$(".close").on("click", function(){
	$(".modal").hide();
});

$("#minus").on("click", function(){
	var currentQuantity = parseInt($("#quantity").val());
	if(currentQuantity == 1){
		return;
	}
	var quantity = currentQuantity - 1;
	$("#quantity").val(quantity);
	var price = parseInt($(".cartProductPriceHidden").text()) * quantity;
	$(".cartProductPrice").text("Giá: " + format(price) + " VNĐ");
});

$("#plus").on("click", function(){
	var currentQuantity = parseInt($("#quantity").val());
	var quantity = currentQuantity + 1;
	$("#quantity").val(quantity);
	var price = parseInt($(".cartProductPriceHidden").text()) * quantity;
	$(".cartProductPrice").text("Giá: " + format(price) + " VNĐ");
});

function testNull(value){
	if(value == "" || isNaN(value) == true){
		return 0;
	}
	
	else{
		return parseInt(value)
	}
}

function format(num){
    var n = num.toString(), p = n.indexOf('.');
    return n.replace(/\d(?=(?:\d{3})+(?:\.|$))/g, function($0, i){
        return p<0 || i<p ? ($0+'.') : $0;
    });
}



















