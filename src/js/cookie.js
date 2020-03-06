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

    if($.cookie('userName')){
        $('.login').text($.cookie('userName'))
    }