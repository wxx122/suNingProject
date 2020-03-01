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
                console.log(res)
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