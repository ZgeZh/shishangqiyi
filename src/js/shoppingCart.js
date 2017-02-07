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
					var resOut = JSON.parse(respones);
					if (resOut.state) {
						window.location.href = "../html/shoppingCart.html";
					}
				})
			});

			$(".userInfo").html("我的账户").unbind();
			console.log("已登录");

			//动态加载购物车
			$.post("../php/shoppingCart.php",{
				"user": res.username
			},function(response){
				//购物车 物品部分结构
				$(".cartList").html("");
				var res = JSON.parse(response);
				if (res.state == "false") {
					alert(res.message);
				} else {
					res.data.forEach(function(item, idx, arr){
						console.log(item);
						var $cartItem = $("<div/>").addClass("cartItem").appendTo($(".cartList"));
							var $goodsDetail = $("<div/>").addClass("goodsDetail").appendTo($cartItem);
								var $check = $("<input/>").addClass("check").appendTo($goodsDetail).attr({"type": "checkBox","checked": "checked"})
								var $img = $("<img/>").appendTo($goodsDetail).attr({"src": item.img});
								var $detailBox = $("<div/>").addClass("detailBox").appendTo($goodsDetail);
									var $icon = $("<div/>").addClass("icon").appendTo($detailBox).css({"background-image": "url("+item.icon+")"});
									var $english = $("<p/>").addClass("english").appendTo($detailBox).html(item.english);
									var $color = $("<span/>").addClass("color").appendTo($detailBox).html(item.color);
									var $fSlash = $("<span/>").appendTo($detailBox).html(" / ");
									var $size = $("<span/>").addClass("size").appendTo($detailBox).html(item.size);
									var $yourChoose = $("<div/>").addClass("yourChoose").appendTo($detailBox);
										var $edit = $("<a/>").addClass("edit").appendTo($yourChoose);
										var $fav = $("<a/>").addClass("fav").appendTo($yourChoose);
										var $del = $("<a/>").addClass("del").appendTo($yourChoose).attr({"data_user": item.user,"data_goodsid": item.goodsid})

							var $goodsPrice = $("<div/>").addClass("goodsPrice").appendTo($cartItem).html(item.price);

							var $goodsNum = $("<div/>").addClass("goodsNum").appendTo($cartItem);
								var $numBox = $("<div/>").addClass("numBox").appendTo($goodsNum);
									var $reduce = $("<a/>").addClass("reduce").appendTo($numBox);
									var $inputNum = $("<input/>").addClass("inputNum").appendTo($numBox).val(item.amount);
									var $plus = $("<a/>").addClass("plus").appendTo($numBox);
							
							var sum = parseInt(item.amount)*parseInt(item.price.split("¥")[1]);
							var $goodsSum = $("<div/>").addClass("goodsSum").appendTo($cartItem).html("¥"+sum);

							var $goodsState = $("<div/>").addClass("goodsState").appendTo($cartItem).html("无");

						//商品数量加减
						$(".reduce").unbind().on("click",function(evt){
							var $target = $(evt.target);
							var re = parseInt($target.next().val());
							if(re == 1){
								$target.next().val(1);
							} else {
								$target.next().val(re - 1);		
							}

							var parRe = parseInt($target.next().val());
							var price = parseInt($target.parent().parent().prev().html().split("¥")[1]);
							var result = parRe*price;
							$target.parent().parent().next().html("¥"+result);
						});

						$(".plus").unbind().on("click",function(evt){
							var $target = $(evt.target);
							var re = parseInt($target.prev().val());
							$target.prev().val(re+1);

							var parRe = parseInt($target.prev().val());
							var price = parseInt($target.parent().parent().prev().html().split("¥")[1]);
							var result = parRe*price;
							$target.parent().parent().next().html("¥"+result);
						});

						//失去焦点事件
						$(".inputNum").unbind().on("blur",function(evt){
							var $target = $(evt.target);

							var parRe = parseInt($target.val());
							var parPr = parseInt($target.parent().parent().prev().html().split("¥")[1]);
							var result = parRe*parPr;
							$target.parent().parent().next().html("¥"+result);
						});

						//商品删除
						$(".del").unbind().on("click",function(evt){
							var $target = $(evt.target);
							$target.parents(".cartItem").remove();

							//需要传 用户名 物品id 物品颜色 尺寸 
							var user = $target.attr("data_user");
							var goodsid =$target.attr("data_goodsid");
							var color = $target.parent(".yourChoose").prev().prev().prev().html();
							var size = $target.parent(".yourChoose").prev().html();

							$.post("../php/delGoods.php",{
								"user": user,
								"goodsid": goodsid,
								"color": color,
								"size": size
							},function(response){
								var res = JSON.parse(response);
								if (res.state == "true") {
									console.log(res.message);
								} else {
									console.log(res.message);
								}						
							})						
						})
					})
				}
			});
		} else {
			console.log("未登录");
			$(".cartList").html("空空如也！！！");
		}		
	});

	//checkBox按钮 结算功能
	

	//点击结算按钮 跳转到结算页面   
	
})