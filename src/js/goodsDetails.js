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
		var resNav = JSON.parse(response);
		// console.log(res);
		resNav.forEach(function(item, idx, arr){
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
	
	//商品详情
	var indexId = window.location.href.split("=")[1];
	if (indexId && indexId.length != 0) {
		var index = "indexId="+indexId;
		$.post("../php/goodsDetails.php",index,function(response){
			var resDetail = JSON.parse(response)[0];
			console.log(resDetail);
			$(".goodsContain .leftImg").attr({"src": "../"+resDetail.image});
			$(".goodsContain .information .english").html(resDetail.english);
			$(".goodsContain .information .korean").html(resDetail.korean);
			$(".goodsContain .information .chinese").html(resDetail.chinese);
			zgeUrl = "../"+resDetail.icon;
			var url = "url(../"+resDetail.icon+") no-repeat 0 0";
			$(".goodsContain .information .icon").css({"background": url});
			$(".goodsContain .aboutPrice .price").html(resDetail.price);
		});
	};
		

	//商品数量加减
	$(".reduce").on("click",function(){
		var re = parseInt($(".inputNum").val());
		if(re == 1){
			return ;
		} else {
			$(".inputNum").val(re-1);		
		}
	});

	$(".plus").on("click",function(){
		var re = parseInt($(".inputNum").val());
		$(".inputNum").val(re+1);
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
			console.log(res.username);

			//根据用户名添加数据到数据库
			//添加商品到购物车
			$(".cart").on("click",function(){
				var goodsId = indexId;
				var img = $(".goodsContain .leftImg").attr("src");
				var icon = zgeUrl;
				var english = $(".goodsContain .english").html();
				var color = $(".goodsContain .aboutColor .chooseColor").val();
				var size = $(".goodsContain .aboutColor .chooseSize").val();
				var num = $(".goodsContain .aboutColor .inputNum").val();
				var price = $(".goodsContain .aboutPrice .price").html();
				// console.log(res.username);
				$.post("../php/cart.php",{
					"user": res.username,
					"goodsId": goodsId,
					"img": img,
					"icon": icon,
					"english": english,
					"color": color,
					"size": size,
					"price": price,
					"amount": num
				},function(response){
					console.log(response);
					var src = JSON.parse(response);
					if (src.state == "true") {
						// console.log(src.message+"自动前往购物车！");
						 $.alert({content: src.message+" , 自动前往购物车！",onClose: function(){
		                    window.location.href = "shoppingCart.html";
		                }});	
					} else {
						$.alert(src.message);
					}
				})
			});
			
			$(".userInfo").html("我的账户").unbind();
			console.log("已登录");        
		} else {
			console.log("未登录");
			$(".cart").on("click",function(){
				alert("未登录，无法添加到购物车！");
			})
		}		
	});

	

})