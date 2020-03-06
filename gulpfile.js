const gulp =require('gulp')
const cssmin=require('gulp-cssmin')
const autoprefixer=require('gulp-autoprefixer')
const uglify=require('gulp-uglify')
const babel=require('gulp-babel')
const htmlmin=require('gulp-htmlmin')
const del =require('del')
const webserver=require('gulp-webserver')
const sass=require('gulp-sass')

// css
const sassHandler=()=>{
    return gulp.src('./src/sass/*.scss')
    .pipe(sass())
    .pipe(autoprefixer())
    .pipe(cssmin())
    .pipe(gulp.dest('./dist/css'))
}
// js
const jsHandler=()=>{
    return gulp.src('./src/js/*.js')
    .pipe(babel({
        presets:['@babel/env']
    }))
    .pipe(uglify())
    .pipe(gulp.dest('./dist/js'))

}
// html
const htmlHandler=()=>{
    return gulp.src('./src/pages/*.html')
    .pipe(htmlmin({
        removeAttributeQuotes:true,
        removeComments:true,
        collapseWhitespace:true,
        collapseBooleanAttributes:true,
        minifyCSS:true,
        minifyJS:true,
    }))
    .pipe(gulp.dest('./dist/pages'))
}
// 移动其他文件
const imgHandler=()=>{
    return gulp.src('./src/images/**')
    .pipe(gulp.dest('./dist/images'))
}

const libHandler=()=>{
    return gulp.src('./src/lib/**')
    .pipe(gulp.dest('./dist/lib'))
}

// 删除dist目录
const delHandler=()=>{
    return del(['./dist'])
}

// 配置服务器
const serverHandler=()=>{
    return gulp.src('./dist')
    .pipe(webserver({
        host:"localhost",
        port:8080,
        open:'./pages/index.html',
        livereload:true,
        proxies: [
            // 每一个代理配置就是一个对象
            {
              source: '/login', // 源, 你的代理标识符
              // 你直接请求下面这个地址压根也拿不到东西, 因为跨域了
              target: 'http://127.0.0.1:80/suningphp/login1.php' // 目标, 你要代理的地址http://127.0.0.1:80/suningphp/login1.php

            }
          ]

    }))
}
// 自动监控文件
const watchHandler=()=>{
    gulp.watch('./src/sass/*.scss',sassHandler)
    gulp.watch('./src/js/*.js',jsHandler)
    gulp.watch('./src/pages/*.html',htmlHandler)
    gulp.watch('./src/images/**',imgHandler)
    gulp.watch('./src/lib/**',libHandler)
}
// 到处默认任务
module.exports.default=gulp.series(
    delHandler,
    gulp.parallel(sassHandler,jsHandler,htmlHandler,imgHandler,libHandler),
    serverHandler,
    watchHandler
)