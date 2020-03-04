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
// 顶部导航栏
$('.top-all').hover(function(){
  $('.index-list').css("display","block")
},
$('#new').mouseover(function(){
  $('.top-index').hide()
})
)


  // 监听滚动

  $(window).scroll(function(){
    if($(window).scrollTop()>1000){
     $('.floatbar').css("display","block");
    }
    if($(window).scrollTop()<1000){
      $('.floatbar').css("display","none");
     }
     if($(window).scrollTop()>800){
      $('.ng-top').css("display","block");
     }
     if($(window).scrollTop()<800){
       $('.ng-top').css("display","none");
      }
  })
  // 分页
  $('.pagi1').pagination({
    pageCount: 15, // 总页数
    current: 1, // 当前页
    jump: false,
    // coping: false,
    homePage: '首页', // 首页按钮的文本
    endPage: '末页', // 末页按钮的文本
    prevContent: '上页',
    nextContent: '下页',
    callback: function (api) { // 当你切换页面的时候会触发
      // api.getCurrent() 获取当前是第几页
      console.log(api.getCurrent())
    }
  })
  // 返回顶部
  $('.return').click(function(){
    $('body,html').animate({
      scrollTop: 0
    },
    500);
    return false;
  })