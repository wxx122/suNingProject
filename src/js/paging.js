// 分页请求
var flag = true
var list2 = []
getshop()
function getshop(){
    $.ajax({
        url:'../lib/json/shoplist.json',
        dataType: 'json',
        success: function (res) {
            $('.pagi').pagination({
                pageCount: Math.ceil(res.length / 8), // 总页数
                current: 1, // 当前页
                jump: true,
                coping: true,
                homePage: '首页', // 首页按钮的文本
                endPage: '末页', // 末页按钮的文本
                prevContent: '上页',
                nextContent: '下页',
                callback: function (api) { // 当你切换页面的时候会触发
                  // api.getCurrent() 获取当前是第几页
                  // console.log(api.getCurrent())
                  let curr = api.getCurrent()
    
                  // console.log(curr)
                  // 根据是第几页, 从我的总数组里面筛选出一部分数据
                  //   slice 方法包前不包后
                  var list = res.slice((curr - 1) * 8, curr * 8)
                  bindHtml(list)
                }
              })
    
              // 3. 先把第一页的数据渲染一次
              bindHtml(res.slice(0, 8))
    
              // 2-2. 给全局变量赋值
              list2 = res
            }
          })
        }
    
function bindHtml(list) {
    // console.log(list)
    // 根据 list 数组渲染页面就可以了

    let str = ''

    list.forEach(item => {
    str += `
    <li class="comm-item" data-id="${item.id}">
    <a href="#">
        <img src="${item.imgaddress}" alt="">
        <p class="name">${item.name}</p>
        <p class="desc">${item.elementDess}</p>
        <p class="price"><i>¥</i><em>${item.price}</em></p>
    </a>
    <span class="car"></span>
</li>
    `
    })

    $('.shoplist').html(str)
}
$('.shoplist').on('click', 'li', function () {
    const id = $(this).data('id')
    // console.log('我应该找到 list2 这个数组中 id 为 ' + id + ' 的那一条数据')
    // 从总的数据里面找到 id 配套的哪一个数据
    let data = {}

    for (let i = 0; i < list2.length; i++) {
      if (list2[i].id === id) {
        data = list2[i]
        break
      }
    }
    // console.log(data)
    localStorage.setItem('goods_info', JSON.stringify(data))

    // 存储好了以后就跳转页面
    window.location.href = './detail.html'
  })    
    
       
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
         $('.index-list-nav').html(str)
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
             $('.listbox').html(str)
         }
     })
 }
 allgetSonList()
//  添加事件
$('.all').mouseover(function(){
    $('.index-list').css("display","block")
    $('.index-list-nav').children().mouseenter(function(){
        $(this).addClass('current').siblings().removeClass('current')
        $('.banner').mouseenter(function(){
            $(".index-list-nav").children().removeClass('current')
        })
    })
    $('.listbox').prev('.index-list-nav').children().hover(function(){
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
})
$('.bannerbox').mouseenter(function(){
    $('.index-list').css("display","none")
})