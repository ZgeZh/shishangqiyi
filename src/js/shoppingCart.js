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
	});

	//主页左边导航栏
	$.post("../php/leftNav.php",function(response){
		var res = JSON.parse(response);
		// console.log(res);
		res.forEach(function(item, idx, arr){
			var $aLi = $('<li/>');
			var $oA = $('<a/>').html(item.title).appendTo($aLi);

			if (item.indexId == 1) {
				$aLi.appendTo($('.nav1'));
				if (item.iconSrc) {
					var $oImg = $('<img/>').attr("src","../"+item.iconSrc).appendTo($oA);
				}
			};
			if (item.indexId >= 2 && item.indexId <= 5) {
				$aLi.appendTo($('.nav2'));
				$aLi.clone().appendTo($(".tNav"));				
				if (item.iconSrc) {
					var $oImg = $('<img/>').attr("src","../"+item.iconSrc).appendTo($oA);
				}
			};
			if (item.indexId >= 6 && item.indexId <= 16) {
				$aLi.appendTo($('.nav3'));
				$aLi.clone().appendTo($(".tNav"));
				if (item.iconSrc) {
					var $oImg = $('<img/>').attr("src","../"+item.iconSrc).appendTo($oA);
				}
			};
			if (item.indexId > 16) {
				$aLi.appendTo($('.nav4'));
			}
		})
	});

	//登录注册
	$(".register").on("click",function(){
		window.location.href = "register.html";
	});

	$(".login").on("click",function(){
			window.location.href = "login.html";
	});
	
	$.post("../php/index.php",function(respones){
		var res = JSON.parse(respones);
		if (res.state == "true") {
			$('.login').html(res.username).unbind();
			$(".register").html("退出").unbind().on("click",function(){
				$.post("../php/logout.php",function(respones){
					var res = JSON.parse(respones);
					if (res.state) {
						window.location.href = "goodsDetails.html";
					}
				})
			});

			$(".userInfo").html("我的账户").unbind();
			console.log("已登录");        
		} else {
			console.log("未登录");
		}		
	});

	//添加商品到购物车
	

})