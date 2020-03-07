$('.usernamebox').click(function(){
   $('.lab').css("display","none")
})
$('.btngo').click(function(){
    var name=$("#userName").val();
    var pwd=$("#password").val();
    console.log(name,pwd)
    $.ajax({
      url: '/login',
      type: 'post',
      data: {
        'username': name,
        'password': pwd
      },
      dataType: 'json',
      success: function (data) {
        if(data.code===1){
          window.location.href='../pages/index.html'
          $.cookie('userName',`${name}`)
        }
      },
      error:function(result){ //失败的函数
       alert('密码错误')
    }
    })
})
// 扩展一个cookie方法
$.extend({
  cookie : function(name, val) {
  if (!val) {
  var a = document.cookie.match(RegExp("(^|\s*)" + name + "=([^;]*)(;|$)"));
  return a ? decodeURIComponent(a[2]) : null;
  } else {
  document.cookie = name + "=" + escape(val);
  }
  },
  removeCookie : function(name) {
  var expires = new Date();
  expires.setTime(expires.getTime() - 1);
  document.cookie = name + "=;expires=" + expires.toGMTString();
  }
  });

   
    
        
