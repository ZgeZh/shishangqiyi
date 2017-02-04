$(function(){
	$('#submit').on('click',function(){       
        $.post("../php/register.php",{
            username: $('#user').val(),
            password: $('#pass').val(),
            telphone: $('#phone').val(),
        },function(respones){
            var res = JSON.parse(respones);
            if (res.state == "true") {
                $.alert({content:"恭喜您，注册成功! 自动跳转到登录页面...",onClose: function(){
                    window.location.href = "login.html";
                }});
            } else {
                $.alert(res.message);
            }
        })          
	})
})