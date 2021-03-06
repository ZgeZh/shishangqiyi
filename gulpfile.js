//请求模块
var gulp = require('gulp');
var sass = require('gulp-sass');
var browserSync = require('browser-sync').create();
var reload = browserSync.reload;


gulp.task('serve',['sass'],function(){
	browserSync.init({
		// server: "./",//创建browserSync 自带服务器地址  ./ 代表根目录
		proxy: 'http://localhost'//服务器代理
	});

	gulp.watch("./src/sass/*.scss",['sass']);//监听sass文件 并执行sass任务
	gulp.watch("./src/*.html").on('change',reload);//监听html文件(index.html)
	gulp.watch("./src/css/*.css").on('change',reload);//监听css文件
	gulp.watch("./src/html/*.html").on('change',reload);//监听html文件夹内的html文件
	gulp.watch("./src/js/*.js").on('change',reload);//监听js文件
});

gulp.task('sass',function(){
	//查找需要编译的文件
	return gulp.src('src/sass/*.scss')
		//编译scss文件
		.pipe(sass({outputStyle:'compact'}).on('error', sass.logError))
		//输出文件
		.pipe(gulp.dest('src/css'))

		.pipe(reload({stream: true}));
});

gulp.task('default',['serve']);




/*
//创建并执行任务  目的：编译sass文件
gulp.task('sass',function(){
	//查找需要编译的文件
	gulp.src('src/sass/*.scss')
		//编译scss文件
		.pipe(sass({outputStyle:'compact'}).on('error', sass.logError))
		//输出文件
		.pipe(gulp.dest('src/css'))
});

//监听sass文件
gulp.task('monitorSass',function(){
	//监听文件，当文件有修改时，执行indexSass任务
	gulp.watch('src/sass/*.scss',['sass']);
});
*/






//创建任务 gulp.task() 
//匹配文件 gulp.src()
//监听文件 gulp.watch()
//输出文件 gulp.dest()


/*合并js文件  gulp-concat*/

var concat = require("gulp-concat");

//压缩插件
var uglify = require("gulp-uglify");

//重命名
var rename = require("gulp-rename");

gulp.task("merge",function(){
	gulp.src('./src/js/*.js')
		.pipe(concat('all.js'))

		.pipe(uglify({
			// compress: false,//类型：Boolean 默认：true 是否完全压缩
  			// preserveComments: 'all' //保留所有注释
		}))

		.pipe(rename({
			suffix: "-min"
		}))

		.pipe(gulp.dest('./dist/js'));
})




