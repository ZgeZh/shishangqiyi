$(function(){

	$.get("php/nav.php",function(response){
		var res = JSON.parse(response);
		res.forEach(function(item, idx, arr){
			if (item.indexId == 1) {	
				var $li = $('<li/>').html(item.title).appendTo($('#wrap-banner .nav1'));
				if (item.iconSrc) {
					var $img = $('<img/>').attr({src: item.iconSrc});
					$('<span/>').append($img).appendTo($li);
				}
				
			}
		})
	})

})