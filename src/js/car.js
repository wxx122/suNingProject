const cartList = JSON.parse(localStorage.getItem('carList'))
console.log(cartList)
if (!cartList) {
    alert('您的购物车为空, 快去选购把')
  } else {
    // 3. 渲染页面
    bindHtml()

    // 4. 添加各种事件
  }
  function bindHtml(){
    let selectAll = cartList.every(item => {
        
        return item.isSelect === true
      })
      let str=""
      str=`<div class="cartMain_hd">
      <ul class="order_lists cartTop">
          <li class="list_chk">
              <!--所有商品全选-->
              <input type="checkbox" id="all" class="whole_check">
              全选
          </li>
          <li class="list_con">商品信息</li>
          <li class="list_info">商品参数</li>
          <li class="list_price">单价</li>
          <li class="list_amount">数量</li>
          <li class="list_sum">金额</li>
          <li class="list_op">操作</li>
      </ul>
  </div>
  <div class="cartBox">
            <div class="shop_info">
            </div>
            <div class="order_content">
               `
      cartList.forEach(item =>{
       str+=`<ul class="order_lists">
       <li class="list_chk">
           <input type="checkbox" class="son_check">
       </li>
       <li class="list_con">
           <div class="list_img"><a href="javascript:;"><img src="${item.imgaddress}" alt=""></a></div>
           <div class="list_text"><a href="javascript:;">${item.name}</a></div>
       </li>
       <li class="list_info">
           <p>规格：默认</p>
           <p>尺寸：16*16*3(cm)</p>
       </li>
       <li class="list_price">
           <p class="price">￥${item.price}</p>
       </li>
       <li class="list_amount">
           <div class="amount_box">
               <a href="javascript:;" class="reduce reSty">-</a>
               <input type="text" value="${item.number}" class="sum">
               <a href="javascript:;" class="plus">+</a>
           </div>
       </li>
       <li class="list_sum">
           <p class="sum_price">￥${item.price}</p>
       </li>
       <li class="list_op">
           <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
       </li>
   </ul>`
      })
      str+=` </div>
      </div>
      <div class="bar-wrapper">
            <div class="bar-right">
                <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
                <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
                <div class="calBtn"><a href="javascript:;">结算</a>
                </div>
            </div>
        </div>
      `
      $('.addbox').html(str)
  }
//   登录
$('.login').click(function(){
    window.location.href='../pages/login.html'
})