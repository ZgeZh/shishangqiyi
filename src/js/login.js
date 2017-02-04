$(function(){
	$('#submit').on('click',function(){
		$.post("../php/login.php",{
			username: $('#user').val(),
			password: $('#pass').val()
		},function(respones){
			var res = JSON.parse(respones);
			if (res.state == "true") {
                $.alert({content:res.message,onClose: function(){
                    window.location.href = "../index.html";  
                }});                                          
            } else {
                $.alert(res.message);
            }
		})
	})
})