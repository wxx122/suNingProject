"use strict";function getList(){$.ajax({url:"../lib/index.json",dataType:"json",success:function(n){var t="";n.forEach(function(n){t+="\n                    <li>\n                        <dd>".concat(n.title,'</dd>\n                        <div class="list-box">\n                '),n.list.forEach(function(n){t+='<a href="#"class="list">'.concat(n.name,"</a>")}),t+="\n                        </div>\n                    </li>\n                "}),$(".son-nav").html(t)}})}function getMer(n,i){$.ajax({url:n,dataType:"json",success:function(n){var t="";n.forEach(function(n){t+=' <a href="#" class="list">'.concat(n.name,"</a>")}),$(i).html(t)}})}function headerNav(){$.ajax({url:"../lib/json/list-nav.json",dataType:"json",success:function(n){var t='<ul class="ng-nav">';n.forEach(function(n){t+='<li>\n                    <a href="#">\n                       '.concat(n.name,"\n                    </a>\n                    <span></span>\n                </li>")}),t+="</ul>",$(".ng-index").html(t)}})}function alllgetList(){$.ajax({url:"../lib/json/index-list.json",dataType:"json",success:function(n){var t="";n.forEach(function(n){t+="<li >\n                ",n.navname.forEach(function(n){t+='<a href="#"class="">'.concat(n.navsonname,"</a>")}),t+="</li>"}),$(".index-list-nav").html(t).children().mouseenter(function(){$(this).addClass("current").siblings().removeClass("current"),$(".banner").mouseenter(function(){$(".index-list-nav").children().removeClass("current")})})}})}function allgetSonList(){$.ajax({url:"../lib/json/index-list.json",dataType:"json",success:function(n){var t="";n.forEach(function(n){t+='<div class="index-list-box">\n                    <div class="sort-btn">',n.sortbtn.forEach(function(n){t+='<a href="#">'.concat(n.titlename,"</a>")}),t+="</div>",n.title.forEach(function(n){t+='<div class="cate-list">',t+="<dl><dt>",t+='<a href="#">\n                        '.concat(n.name,"\n                    </a>"),t+="</dt>\n                        <dd>",n.list.forEach(function(n){t+='<a href="#" class="">\n                                '.concat(n.hotworld,"\n                                </a>")}),t+="</dd>\n                        </dl>",t+="</div>"}),t+=' <div class="imgbox">\n                    <div class="imglist">',n.imglist.forEach(function(n){t+='<a href="#">\n                        <img src="'.concat(n.adress,'" alt="">\n                    </a>')}),t+="</div>\n                    </div>",t+="</div>"}),$(".listbox").html(t).prev(".index-list-nav").children().hover(function(){$(this).parent(".index-list-nav").next(".listbox").children().eq($(this).index()).show(),$(this).parent(".index-list-nav").next(".listbox").children().eq($(this).index()).hover(function(){$(this).show()},function(){$(this).hide()})},function(){$(this).parent(".index-list-nav").next(".listbox").children().eq($(this).index()).hide()})}})}function toutiaoList(){$.ajax({url:"../lib/json/toutiao.json",dataType:"json",success:function(n){console.log(n);var t="";n.forEach(function(n){t+='<li class="swiper-slide">\n                    <p>\n                        <a href="#">\n                            <i>热点</i>\n                            '.concat(n.toutiao,'\n                        </a>\n                        <a href="#">\n                            <i>热点</i>\n                            ').concat(n.toutiao,'\n                        </a>\n                        <a href="#">\n                            <i>热点</i>\n                            ').concat(n.toutiao,"\n                        </a>\n                    </p>\n                </li>")}),console.log(t),$(".fixbox").html(t);new Swiper(".toutiao",{direction:"vertical",loop:!0,autoplay:!0})}})}getList(),getMer("../lib/json/merchant.json",".son-nav1"),getMer("../lib/json/client.json",".son-nav2"),getMer("../lib/json/hotworlds.json",".hotworlds"),headerNav(),alllgetList(),allgetSonList(),toutiaoList();