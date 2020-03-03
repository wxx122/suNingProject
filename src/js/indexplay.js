$('.nav>li>a').mouseover(function(){
    $(this).next('.son-nav-close').show().parent('li').siblings().children('.son-nav-close').hide()
})
$('.header').mouseover(function(){
    $('.son-nav-close').hide()
})
var mySwiper = new Swiper ('.banner-wrapper', {
    // direction: 'vertical', // 垂直切换选项
    loop: true, // 循环模式选项
    autoplay: {
        delay: 2000
      },
    
    // 如果需要分页器
    pagination: {
      el: '.swiper-pagination',
      clickable :true,
    },
    
    // 如果需要前进后退按钮
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
    
    // 如果需要滚动条
    scrollbar: {
      el: '.swiper-scrollbar',
    },
  })        

  