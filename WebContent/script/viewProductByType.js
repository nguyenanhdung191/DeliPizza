$("[name*=crustSelection]").each(function(index, element){
	$(element).on("change", function(){
		var productID = $(this).attr("name").split("-")[0];
		var productStartingPrice = testNull($("#" + productID + "-startingPrice").text());
		var crustPrice = testNull($(this).val().split("-")[1]);
		var sizePrice = testNull($(this).parent().next().children().eq(0).val().split("-")[1]);
		console.log(productID + "-" + productStartingPrice + "-" + crustPrice + "-" + sizePrice);
		$("#" + productID + "-price").text(format(productStartingPrice + crustPrice + sizePrice) + " VNĐ");
	});
});

$("[name*=sizeSelection]").each(function(index, element){
	$(element).on("change", function(){
		var productID = $(this).attr("name").split("-")[0];
		var productStartingPrice = parseInt($("#" + productID + "-startingPrice").text());
		var sizePrice = testNull($(this).val().split("-")[1]);
		var crustPrice = testNull($(this).parent().prev().children().eq(0).val().split("-")[1]);
		console.log(productID + "-" + productStartingPrice + "-" + crustPrice + "-" + sizePrice);
		$("#" + productID + "-price").text(format(productStartingPrice + crustPrice + sizePrice) + " VNĐ");
	});
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