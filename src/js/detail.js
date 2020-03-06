$("#exzoom").exzoom();
// 获取数据
const goodsInfo = JSON.parse(localStorage.getItem('goods_info'))
// console.log(goodsInfo)
if(!goodsInfo){
    alert('你搜索的商品数据不存在')
    window.location.href='../pages/paging.html'
}
$('.proinfo-title>h1').text(goodsInfo.title1)
$('.proinfo-title>h2').text(goodsInfo.title2)
$('.small-price').text('¥'+goodsInfo.afterprice)
$('.mainprice').text('¥'+goodsInfo.price)
$('.big1 img').attr('src', goodsInfo.bigimg[0].bigimgAddress)
$('.big2 img').attr('src', goodsInfo.bigimg[1].bigimgAddress)
$('.big3 img').attr('src', goodsInfo.bigimg[2].bigimgAddress)
$('.big4 img').attr('src', goodsInfo.bigimg[3].bigimgAddress)
// 转购物车
$('.carbtn').click(function(){
    // 判断登录
    if($.cookie('userName')){

    }else{
        window.location.href='../pages/login.html'
    }
    const carList =JSON.parse(localStorage.getItem('carList'))||[]

    let exits = carList.some(item =>{
        return item.id ===goodsInfo.id
        
    })
    // carList.some(item =>{
       
        
    // })
   
    console.log(exits)

    if(exits){
        let data=null
        for(let i=0;i<carList.length;i++){
            if(carList[i].id===goodsInfo.id){
                data =carList[i]
                break
            }
        }
        data.number++
        data.xiaoji = data.number * data.price
    }else{
        goodsInfo.xiaoji=goodsInfo.price
        carList.push(goodsInfo)
       
    }
    localStorage.setItem('carList',JSON.stringify(carList))

    
})
$('.gocar').click(function(){
    window.location.href='../pages/car.html'
})