$(function(){
	//主页左边导航栏
	$.post("php/nav.php",function(response){
		var res = JSON.parse(response);
		res.forEach(function(item, idx, arr){
			var $aLi = $('<li/>');
			var $oA = $('<a/>').html(item.title).appendTo($aLi);
			if (item.indexId == 1) {
				$aLi.appendTo($('.nav1'));
				if (item.iconSrc) {
					var $oImg = $('<img/>').attr("src",item.iconSrc).appendTo($oA);
				}
			};

			if (item.indexId >= 2 && item.indexId <= 5) {
				$aLi.appendTo($('.nav2'));
				if (item.iconSrc) {
					var $oImg = $('<img/>').attr("src",item.iconSrc).appendTo($oA);
				}
			};

			if (item.indexId >= 6 && item.indexId <= 16) {
				$aLi.appendTo($('.nav3'));
				if (item.iconSrc) {
					var $oImg = $('<img/>').attr("src",item.iconSrc).appendTo($oA);
				}
			};

			if (item.indexId > 16) {
				$aLi.appendTo($('.nav4'));
			}
		})
	});

	//主页中间商品图片
	// $.post()


})