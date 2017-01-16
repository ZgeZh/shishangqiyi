$(function(){
	//主页左边导航栏
	$.post("php/nav.php",function(response){
		var res = JSON.parse(response);
		res.forEach(function(item, idx, arr){
			if (item.indexId == 1) {
				var $aLi = $('<li/>').appendTo($('.nav1'));
				var $oA = $('<a/>').addClass('LNavFirst').html(item.title).appendTo($aLi);

				if (item.iconSrc) {
					var $oImg = $('<img/>').attr("src",item.iconSrc).appendTo($oA);
				}
			};

			if (item.indexId >= 2 && item.indexId <= 5) {
				var $aLi = $('<li/>').appendTo($('.nav2'));
				var $oA = $('<a/>').addClass('LNavSecond').html(item.title).appendTo($aLi);
			};

			if (item.indexId >= 6 && item.indexId <= 16) {
				var $aLi = $('<li/>').appendTo($('.nav3'));
				var $oA = $('<a/>').addClass('LNavThree').html(item.title).appendTo($aLi);

				if (item.iconSrc) {
					var $oImg = $('<img/>').attr("src",item.iconSrc).appendTo($oA);
				}
			};

			if (item.indexId > 16) {
				var $aLi = $('<li/>').appendTo($('.nav4'));
				var $oA = $('<a/>').addClass('LNavFour').html(item.title).appendTo($aLi);
			}

		})
	});

	//主页中间商品图片
	$.post()


})