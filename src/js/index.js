$(function(){
	//头部导航栏 动画
	$(window).scroll(function(){
		if ($(window).scrollTop() > 60) {
			$(".headNav").slideDown("fast");
		} else {
			$(".headNav").slideUp("fast");
		}
	});
	
	//主页左边导航栏
	$.post("php/leftNav.php",function(response){
		var res = JSON.parse(response);
		// console.log(res);
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
				$aLi.clone().appendTo($(".tNav"));				
				if (item.iconSrc) {
					var $oImg = $('<img/>').attr("src",item.iconSrc).appendTo($oA);
				}
			};
			if (item.indexId >= 6 && item.indexId <= 16) {
				$aLi.appendTo($('.nav3'));
				$aLi.clone().appendTo($(".tNav"));
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
	$.post("php/centerBanner.php",function(response){
		var res = JSON.parse(response);
		// console.log(res);
		res.forEach(function(item,idx,arr){
			// console.log(item);
			var divClass = "."+"g"+item.indexId;
			// console.log(divClass);
			var $span = $('<span/>').html(item.korean).appendTo($(divClass));
			var $span = $('<span/>').html(item.chinese).appendTo($(divClass));
			var $span = $('<span/>').html(item.english).appendTo($(divClass));
			var $span = $('<span/>').html(item.price).appendTo($(divClass));
		})
	})







	//顶部导航栏
	
})