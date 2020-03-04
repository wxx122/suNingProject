// 1. 使用 ajax 请求回来json 文件
getList()
function getList() {
    $.ajax({
        url: '../lib/index.json',
        dataType: 'json',
        success: function (res) {
            // console.log(res)
            // 2. 拼接字符串

            let str = ''

            res.forEach(item => {
                str += `
                    <li>
                        <dd>${ item.title }</dd>
                        <div class="list-box">
                `

                item.list.forEach(item2 => {
                    str += `<a href="#"class="list">${ item2.name }</a>`
                })
                
                str += `
                        </div>
                    </li>
                `
            })

            // 3. 拼接好以后，填充到页面里面
            $('.son-nav').html(str)


        }
    })
}
    // 一个请求商家入驻json文件
    function getMer(url,obj){
        $.ajax({
            url:url,
            dataType: 'json',
            success: function(res){
                let str=""
                res.forEach(item =>{
                    str +=` <a href="#" class="list">${item.name}</a>`
                })
                $(obj).html(str)
            }
         
        })
    }
    getMer("../lib/json/merchant.json",'.son-nav1')
    getMer("../lib/json/client.json",'.son-nav2')
    getMer("../lib/json/hotworlds.json",'.hotworlds')
    // 全部商品的头部导航栏
    function headerNav(){
        $.ajax({
            url:'../lib/json/list-nav.json',
            dataType:'json',
            success:function(res){
                let str= `<ul class="ng-nav">`
                res.forEach(item=>{
                    str+=`<li>
                    <a href="#">
                       ${item.name}
                    </a>
                    <span></span>
                </li>`
                })
                str+=`</ul>`
                $('.ng-index').html(str)
            }
        })
    }
    headerNav()
    // 全部商品分类
    function alllgetList(){
       $.ajax({
        url:'../lib/json/index-list.json',
        dataType: 'json',
        success:function(res){
           let str=``
            res.forEach(item1 =>{
                str+=`<li >
                `
                item1.navname.forEach(item2=>{
                    str += `<a href="#"class="">${ item2.navsonname }</a>`
                })
                str+=`</li>`
            })
            // 带事件渲染
            $('.index-list-nav').html(str).children().mouseenter(function(){
                $(this).addClass('current').siblings().removeClass('current')
                $('.banner').mouseenter(function(){
                    $(".index-list-nav").children().removeClass('current')
                })
            })
        }
       })
    }
    alllgetList()
    // 全部商品里的二级菜单
    function allgetSonList(){
        $.ajax({
            url:'../lib/json/index-list.json',
            dataType: 'json',
            success:function(res){
                // console.log(res)
                let str=``

                /*
                    鼠标移动到左边第一个  li 的时候， 拿到 res[0] 来渲染右边

                */

                res.forEach(item1=>{
                    str+=`<div class="index-list-box">
                    <div class="sort-btn">`
                    // 主题按钮
                    item1.sortbtn.forEach(item2=>{
                        str+=`<a href="#">${item2.titlename}</a>`
                    })
                    str+=`</div>`
                    item1.title.forEach(item3=>{
                        str+=`<div class="cate-list">`
                        str+=`<dl><dt>`
                        str+=`<a href="#">
                        ${item3.name}
                    </a>`
                        str+=`</dt>
                        <dd>`
                        item3.list.forEach(item4=>{
                                str+=`<a href="#" class="">
                                ${item4.hotworld}
                                </a>`
                        })
                        str+=`</dd>
                        </dl>`
                        
                        str+=`</div>`
                    })
                    str+=` <div class="imgbox">
                    <div class="imglist">`
                    item1.imglist.forEach(items=>{
                        // console.log(items.adress)
                        str+=`<a href="#">
                        <img src="${items.adress}" alt="">
                    </a>`
                    })
                    str+=`</div>
                    </div>`
                    // console.log(1)
                    str+=`</div>`
                })
                
                // console.log(str)
                // 带事件的渲染
                // $('.listbox').html(str).prev('.index-list-nav').children().mouseenter(function(){
                //    $(this).parent('.index-list-nav').next('.listbox').children().eq($(this).index()).show().siblings().hide()
                //    $('.banner').mouseenter(function(){
                //     $('.index-list-box').hide()
                // })
                // })
                $('.listbox').html(str).prev('.index-list-nav').children().hover(function(){
                    $(this).parent('.index-list-nav').next('.listbox').children().eq($(this).index()).show()
                    $(this).parent('.index-list-nav').next('.listbox').children().eq($(this).index()).hover(function(){
                        $(this).show()
                    },function(){
                        $(this).hide()
                    })
                },
                function(){
                    $(this).parent('.index-list-nav').next('.listbox').children().eq($(this).index()).hide()
                }
                )
            }
        })
    }
    allgetSonList()
    // 头部右侧
    function toutiaoList(){
        $.ajax({
            url:'../lib/json/toutiao.json',
            dataType:'json',
            success:function(res){
                // console.log(res)
                let str=""
                res.forEach(item=>{
                    str+=`<li class="swiper-slide">
                    <p>
                        <a href="#">
                            <i>热点</i>
                            ${item.toutiao}
                        </a>
                        <a href="#">
                            <i>热点</i>
                            ${item.toutiao}
                        </a>
                        <a href="#">
                            <i>热点</i>
                            ${item.toutiao}
                        </a>
                    </p>
                </li>`
                })
                // console.log(str)
                $('.fixbox').html(str)
                var mySwiper2 = new Swiper ('.toutiao', {
                    direction: 'vertical', // 垂直切换选项
                    loop: true, // 循环模式选项
                    autoplay: true,
                  })        
            }
        })
    }
    toutiaoList()
    // 左侧浮动导航栏
    function getFloatbar(){
        $.ajax({
            url:'../lib/json/shop.json',
            dataType: 'json',
            success:function(res){
                let str=''
                res.forEach(item=>{
                    str+=`<li class="liston">
                    <a href="#${item.id}">${item.titleName}</a>
                </li>`
                })
                $('.floatlist').html(str)
            }
        })
    }
    getFloatbar()
    // 商品栏渲染
    function getshoplist(){
        $.ajax({
            url:'../lib/json/shop.json',
            dataType: 'json',
            success:function(res){
                console.log(res)
                let str=''
                res.forEach(item=>{
                    str+=`<div class="new-first"> 
                    <h4 id="${item.id}" class="title">
                        ${item.titleName}
                    </h4>
                    <div class="shop">`
                    item.shoplist.forEach(item2=>{
                        str+=`<li>
                        <a href="#">
                            <p class="img-name">${item2.imgName}</p>
                            <p class="img-desc">${item2.imgdesc}</p>
                        </a>
                        <a href="#" class="img-wraap">
                            <img src="${item2.imgaddress}" alt="">
                        </a>
                    </li>`
                    })
                    str+=`</div>
                    </div>`
                })
              $('#new').html(str)
              $('#new').children().mouseover(function(){
                $('.list').children().eq($(this).index()).addClass('on')
              })
              $('#new').children().mouseout(function(){
                $('.list').children().eq($(this).index()).removeClass('on')
              })
            }
        })
    }
    getshoplist()