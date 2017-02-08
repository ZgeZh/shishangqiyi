$(function(){
	//头部导航栏 右边登录注册栏 动画
	$(window).scroll(function(){
		if ($(window).scrollTop() > 40) {
			$(".headNav").slideDown("fast");			
			$(".rightBar").css({top: "40px"});
		} else {
			$(".headNav").slideUp("fast");
			$(".rightBar").css({top: "142px"});
		}
	});
	
	//返回顶部按钮
	$(".topBtn").on("click",function(){
		$('body,html').animate({scrollTop:0},300);  
	});

	//右边登录注册
	var isTrue = true;
	$(".rightBar .menuBtn").on("click",function(){
		if (isTrue) {
			$(".rightBar").animate({right: "-100px"},300);
			$(".menuBtn").html("&lt;");
			$(".contact").show();
			isTrue = false;
		} else {
			$(".rightBar").animate({right: 0},300);
			$(".menuBtn").html("&gt;");
			$(".contact").hide();
			isTrue = true;
		}		
	})

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

	//主页主要商品信息
	$.post("php/goodsInfo.php",function(response){
		var res = JSON.parse(response);
		res.forEach(function(item,idx,arr){
			if (idx <= 11) {
				var $aLi = $("<li/>").appendTo($(".goodsInfo1")).on("click",function(){
					window.location.href = "html/goodsDetails.html?indexId="+item.indexId;
				})
				var $aA = $("<a/>").appendTo($aLi);
				var $aImg = $("<img/>").attr("src",item.image).appendTo($aA);

				var $aP = $("<p/>").appendTo($aLi);
				var url = "url("+item.icon+") no-repeat 0 0"; 
				var $aSpan = $("<span/>").css({background: url,display: "inline-block",width: "35px",height: "22px"}).appendTo($aP);
				
				var $aP = $("<p/>").html(item.korean).appendTo($aLi);
				var $aP = $("<p/>").html(item.chinese).appendTo($aLi);
				var $aP = $("<p/>").html(item.english).appendTo($aLi);
				var $aP = $("<p/>").html(item.price).appendTo($aLi);
			}
			if (idx > 11) {
				var $aLi = $("<li/>").appendTo($(".goodsInfo2")).on("click",function(){
					window.location.href = "html/goodsDetails.html?indexId="+item.indexId;
				})
				var $aA = $("<a/>").appendTo($aLi);
				var $aImg = $("<img/>").attr("src",item.image).appendTo($aA);

				var $aP = $("<p/>").appendTo($aLi);
				var url = "url("+item.icon+") no-repeat 0 0"; 
				var $aSpan = $("<span/>").css({background: url,display: "inline-block",width: "35px",height: "22px"}).appendTo($aP);
				
				var $aP = $("<p/>").html(item.korean).appendTo($aLi);
				var $aP = $("<p/>").html(item.chinese).appendTo($aLi);
				var $aP = $("<p/>").html(item.english).appendTo($aLi);
				var $aP = $("<p/>").html(item.price).appendTo($aLi);
			}
		})
	})

	//登录注册
	$(".register").on("click",function(){
		window.location.href = "html/register.html";
	});

	$(".login").on("click",function(){
			window.location.href = "html/login.html";
	});
	
	//登录状态
	$.post("php/index.php",function(respones){
		var res = JSON.parse(respones);
		if (res.state == "true") {
			$('.login').html(res.username).unbind();
			$(".register").html("退出").unbind().on("click",function(){
				$.post("php/logout.php",function(respones){
					var res = JSON.parse(respones);
					if (res.state) {
						window.location.href = "index.html";
					}
				})
			});

			$(".userInfo").html("我的账户").unbind();
			console.log("已登录");        
		} else {
			console.log("未登录");
		}		
	});

	//购物车
	$(".cart").on("click",function(){
		window.location.href = "html/shoppingCart.html";
	});

})