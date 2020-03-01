$('.nav>li>a').mouseover(function(){
    $(this).next('.son-nav-close').show().parent('li').siblings().children('.son-nav-close').hide()
})
$('.header').mouseover(function(){
    $('.son-nav-close').hide()
})